# IsG2.pairingIn_mem_zero_one_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d362a0d-49b6-1228-e144-b37ed8c62bb9",
  "kind": "lemma",
  "lexical_name": "IsG2.pairingIn_mem_zero_one_three",
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
  "slug": "isg2-pairingin-mem-zero-one-three--cf1bec621901abb819568108",
  "source": {
    "blob": "d0b7a9360dd5128ec31d17bd3338c2709d10070c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 104,
    "path": "GRWTSK/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf1bec621901abb819568108e177574065b5d818e811bdbbbf8485ed5e8edf89",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d362a0d-49b6-1228-e144-b37ed8c62bb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsG2.pairingIn_mem_zero_one_three [P.IsG2]
    (i j : ι) (h : P.root i ≠ P.root j) (h' : P.root i ≠ - P.root j) :
    P.pairingIn ℤ i j ∈ ({-3, -1, 0, 1, 3} : Set ℤ) := by
  suffices ¬ (∀ i j, P.pairingIn ℤ i j = P.pairingIn ℤ j i ∨
                     P.pairingIn ℤ i j = 2 * P.pairingIn ℤ j i ∨
                     P.pairingIn ℤ j i = 2 * P.pairingIn ℤ i j) by
    have aux₁ := P.forall_pairingIn_eq_swap_or.resolve_left this i j
    have aux₂ := P.pairingIn_pairingIn_mem_set_of_isCrystal_of_isRed' i j h h'
    simp only [mem_insert_iff, mem_singleton_iff, Prod.mk_zero_zero, Prod.mk_eq_zero,
      Prod.mk_one_one, Prod.mk_eq_one, Prod.mk.injEq] at aux₂ ⊢
    omega
  obtain ⟨k, l, hkl⟩ := exists_pairingIn_neg_three (P := P)
  push_neg
  refine ⟨k, l, ?_⟩
  have aux := P.pairingIn_pairingIn_mem_set_of_isCrystal_of_isRed k l
  simp only [mem_insert_iff, mem_singleton_iff, Prod.mk_zero_zero, Prod.mk_eq_zero,
      Prod.mk_one_one, Prod.mk_eq_one, Prod.mk.injEq] at aux
  omega

end IsG2

namespace EmbeddedG2

/-- A pair of roots which pair to `+3` are also sufficient to distinguish an embedded `𝔤₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/G2/Variantf7e91396e87e14474ed1a0e0244bd1df893a3d39003968ccc8b4399f00c33140.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0b7a9360dd5128ec31d17bd3338c2709d10070c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
