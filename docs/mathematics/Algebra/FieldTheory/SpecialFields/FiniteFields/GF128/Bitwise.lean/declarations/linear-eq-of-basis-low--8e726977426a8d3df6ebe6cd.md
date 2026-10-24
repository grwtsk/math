# linear_eq_of_basis_low

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:708d911a-462a-4df2-b7a0-8e72dc3a1c57",
  "kind": "theorem",
  "lexical_name": "linear_eq_of_basis_low",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "linear-eq-of-basis-low--8e726977426a8d3df6ebe6cd",
  "source": {
    "blob": "fa2867bdbe3e41ddf2c50bbbbfd564400e272af7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 127,
    "path": "GRWTSK/Algebra/FiniteField/GF128/Bitwise.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e726977426a8d3df6ebe6cd282769a6dbb993c459c8c090ff4f97617972c8ea",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:708d911a-462a-4df2-b7a0-8e72dc3a1c57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linear_eq_of_basis_low (n : Nat) (f g : Word → Word)
    (hf : XorLinear f) (hg : XorLinear g)
    (hb : ∀ i, i < n → f (basis i) = g (basis i))
    (a : Word) (ha : a >>> n = 0) : f a = g a := by
  induction n generalizing f g a with
  | zero =>
    simp only [BitVec.ushiftRight_zero] at ha
    simpa [ha] using hf.1.trans hg.1.symm
  | succ n ih =>
    let f' := fun a : Word => f (a <<< (1 : Nat))
    let g' := fun a : Word => g (a <<< (1 : Nat))
    have hf' : XorLinear f' := by
      constructor
      · simpa [f'] using hf.1
      · intro x y
        simpa [f', BitVec.shiftLeft_xor_distrib] using
          hf.2 (x <<< (1 : Nat)) (y <<< (1 : Nat))
    have hg' : XorLinear g' := by
      constructor
      · simpa [g'] using hg.1
      · intro x y
        simpa [g', BitVec.shiftLeft_xor_distrib] using
          hg.2 (x <<< (1 : Nat)) (y <<< (1 : Nat))
    have hb' : ∀ i, i < n → f' (basis i) = g' (basis i) := by
      intro i hi
      simpa [f', g', basis, ← BitVec.shiftLeft_add] using hb (i + 1) (by omega)
    have ha' : (a >>> (1 : Nat)) >>> n = 0 := by
      simpa [← BitVec.shiftRight_add, Nat.add_comm 1 n] using ha
    have hs := ih f' g' hf' hg' hb' (a >>> (1 : Nat)) ha'
    change f ((a >>> (1 : Nat)) <<< (1 : Nat)) =
      g ((a >>> (1 : Nat)) <<< (1 : Nat)) at hs
    have hb0 := hb 0 (by omega)
    have hl : f (if a.getLsbD 0 then 1 else 0) =
        g (if a.getLsbD 0 then 1 else 0) := by
      cases a.getLsbD 0
      · exact hf.1.trans hg.1.symm
      · simpa [basis] using hb0
    calc
      f a = f ((if a.getLsbD 0 then 1 else 0) ^^^
        ((a >>> (1 : Nat)) <<< (1 : Nat))) := congrArg f (split_low_bit a)
      _ = f (if a.getLsbD 0 then 1 else 0) ^^^
        f ((a >>> (1 : Nat)) <<< (1 : Nat)) := hf.2 _ _
      _ = g (if a.getLsbD 0 then 1 else 0) ^^^
        g ((a >>> (1 : Nat)) <<< (1 : Nat)) := by rw [hl, hs]
      _ = g ((if a.getLsbD 0 then 1 else 0) ^^^
        ((a >>> (1 : Nat)) <<< (1 : Nat))) := (hg.2 _ _).symm
      _ = g a := congrArg g (split_low_bit a).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteField/GF128/Bitwise.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa2867bdbe3e41ddf2c50bbbbfd564400e272af7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
