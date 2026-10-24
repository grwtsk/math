# reduce_to_maximal_ideal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce50f18412cf34a2d0040b5e72477abd5ff8b7fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9106b47e-a69b-9872-3d56-bdf5389ab138",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55c80a00-53f4-ea70-90be-a1c33567d53e",
  "kind": "theorem",
  "lexical_name": "reduce_to_maximal_ideal",
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
  "slug": "reduce-to-maximal-ideal--8ab9d927a5c727521cbf0bc0",
  "source": {
    "blob": "ce50f18412cf34a2d0040b5e72477abd5ff8b7fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 113,
    "path": "GRWTSK/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ab9d927a5c727521cbf0bc0c98e76d0e74891e88239c3024033f41630902376",
  "verification": {
    "reference": "docs/verification/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55c80a00-53f4-ea70-90be-a1c33567d53e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reduce_to_maximal_ideal {p : ℕ} (hp : Nat.Prime p) :
    (∃ I : Ideal R, I ≠ ⊤ ∧ CharP (R ⧸ I) p) ↔ ∃ I : Ideal R, I.IsMaximal ∧ CharP (R ⧸ I) p := by
  constructor
  · intro g
    rcases g with ⟨I, ⟨hI_not_top, _⟩⟩
    -- Krull's Thm: There exists a prime ideal `M` such that `I ≤ M`.
    rcases Ideal.exists_le_maximal I hI_not_top with ⟨M, ⟨hM_max, hM_ge⟩⟩
    use M
    constructor
    · exact hM_max
    · cases CharP.exists (R ⧸ M) with
      | intro r hr =>
        -- Porting note: This is odd. Added `have hr := hr`.
        -- Without this it seems that lean does not find `hr` as an instance.
        have hr := hr
        convert hr
        have r_dvd_p : r ∣ p
        · rw [← CharP.cast_eq_zero_iff (R ⧸ M) r p]
          convert congr_arg (Ideal.Quotient.factor I M hM_ge) (CharP.cast_eq_zero (R ⧸ I) p)
        symm
        apply (Nat.Prime.eq_one_or_self_of_dvd hp r r_dvd_p).resolve_left
        exact CharP.char_ne_one (R ⧸ M) r
  · intro ⟨I, hI_max, h_charP⟩
    use I
    exact ⟨Ideal.IsMaximal.ne_top hI_max, h_charP⟩
#align mixed_char_zero.reduce_to_maximal_ideal MixedCharZero.reduce_to_maximal_ideal

end MixedCharZero

/-!
### Equal characteristic zero

A commutative ring `R` has "equal characteristic zero" if it satisfies one of the following
equivalent properties:

1) `R` is a `ℚ`-algebra.
2) The quotient `R ⧸ I` has characteristic zero for any proper ideal `I ⊂ R`.
3) `R` has characteristic zero and does not have mixed characteristic for any prime `p`.

We show `(1) ↔ (2) ↔ (3)`, and most of the following is concerned with constructing
an explicit algebra map `ℚ →+* R` (given by `x ↦ (x.num : R) /ₚ ↑x.pnatDen`)
for the direction `(1) ← (2)`.

Note: Property `(2)` is denoted as `EqualCharZero` in the statement names below.
-/

namespace EqualCharZero

/-- `ℚ`-algebra implies equal characteristic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MixedCharZero/Variant2c91c8afeeebf3f0772c0c9df41fc920d332fb5ad2ba70020e96efbd3541f118.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce50f18412cf34a2d0040b5e72477abd5ff8b7fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
