# equalizer_sheaf_condition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c974151d5bc1b2d9b9e8deaf62a471c7cf45100",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 988,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da407aef-93b6-8af0-4ae6-fd4d72fcfa5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2553d5dc-1516-d532-d087-6efe1ec244b8",
  "kind": "theorem",
  "lexical_name": "equalizer_sheaf_condition",
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
  "slug": "equalizer-sheaf-condition--d7f0091e441725d5c51b2b4a",
  "source": {
    "blob": "7c974151d5bc1b2d9b9e8deaf62a471c7cf45100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1023,
    "line": 988,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variantebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7f0091e441725d5c51b2b4a17f012df6af2142616ffdd192893fb65fbdd4f36",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variantebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2553d5dc-1516-d532-d087-6efe1ec244b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 988–1023.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equalizer_sheaf_condition :
    Presieve.IsSheafFor P (S : Presieve X) ↔ Nonempty (IsLimit (Fork.ofι _ (w P S))) := by
  rw [Types.type_equalizer_iff_unique,
    ← Equiv.forall_congr_left (firstObjEqFamily P (S : Presieve X)).toEquiv.symm]
  simp_rw [← compatible_iff]
  simp only [inv_hom_id_apply, Iso.toEquiv_symm_fun]
  apply ball_congr
  intro x _
  apply exists_unique_congr
  intro t
  rw [← Iso.toEquiv_symm_fun]
  rw [Equiv.eq_symm_apply]
  constructor
  · intro q
    funext Y f hf
    simpa [firstObjEqFamily, forkMap] using q _ _
  · intro q Y f hf
    rw [← q]
    simp [firstObjEqFamily, forkMap]
#align category_theory.equalizer.sieve.equalizer_sheaf_condition CategoryTheory.Equalizer.Sieve.equalizer_sheaf_condition

end Sieve

/-!
This section establishes the equivalence between the sheaf condition of
https://stacks.math.columbia.edu/tag/00VM and the definition of `isSheafFor`.
-/


namespace Presieve

variable [R.hasPullbacks]

/-- The rightmost object of the fork diagram of https://stacks.math.columbia.edu/tag/00VM, which
contains the data used to check a family of elements for a presieve is compatible.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variantebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variantebfd3e968c5f1f260b79576f835d1729ed09d1b740be7d346c54fa05a3e78b49.lean#L988).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c974151d5bc1b2d9b9e8deaf62a471c7cf45100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
