# mulFuel_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2720aee-0c95-c614-284b-e7cf5bffebcf",
  "kind": "theorem",
  "lexical_name": "mulFuel_basis",
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
  "slug": "mulfuel-basis--57ab70f99db6bcaf59660593",
  "source": {
    "blob": "e91a85ed59e081d99cb112be85bcfa5ebc30c610",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 61,
    "path": "GRWTSK/Algebra/FiniteField/GF128/Arithmetic.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57ab70f99db6bcaf5966059334ff1567db60dd73ab4545d37b258738eee8e596",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2720aee-0c95-c614-284b-e7cf5bffebcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulFuel_basis (n i : Nat) (a : Word) (hi : i < n) (hw : i < 128) :
    mulFuel n a (basis i) = iter i a := by
  induction i generalizing n a with
  | zero =>
    cases n with
    | zero => omega
    | succ n =>
      simp only [basis, BitVec.shiftLeft_zero, mulFuel]
      have hz : (1 : Word) >>> (1 : Nat) = 0 := by decide
      rw [hz, mulFuel_zero_right]
      simp [iter]
  | succ i ih =>
    cases n with
    | zero => omega
    | succ n =>
      rw [mulFuel, basis_low_succ i hw, if_neg (by decide),
        word_zero_xor, basis_shift_right i hw]
      exact ih n (double a) (by omega) (by omega)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteField/GF128/Arithmetic.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e91a85ed59e081d99cb112be85bcfa5ebc30c610` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
