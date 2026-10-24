# IsStackFor.of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "965a05853a167d3807860b72b04951e2c2e6b5a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 361,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23ed113db5dc0b5646cf9bfc87d4b60201493c00ac3a81811106f2783e099159.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39433c3a-d20d-6ae5-a378-cc5ff8f2f889",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18575e0b-e85d-a917-4215-26a92325dcc5",
  "kind": "lemma",
  "lexical_name": "IsStackFor.of_le",
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
  "slug": "isstackfor-of-le--38319dc140a9373634f39ba7",
  "source": {
    "blob": "965a05853a167d3807860b72b04951e2c2e6b5a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 361,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant23ed113db5dc0b5646cf9bfc87d4b60201493c00ac3a81811106f2783e099159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38319dc140a9373634f39ba7555f541e23b0a4995579677e366251b0b06e830e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant23ed113db5dc0b5646cf9bfc87d4b60201493c00ac3a81811106f2783e099159.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18575e0b-e85d-a917-4215-26a92325dcc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsStackFor.of_le {S : C} {R : Presieve S}
    (hR₁ : F.IsStackFor R) {J : GrothendieckTopology C}
    (hR₂ : Sieve.generate R ∈ J S) [F.IsPrestack J] {R' : Presieve S} (h : R ≤ R') :
    F.IsStackFor R' := by
  obtain ⟨ι, _, f, rfl⟩ := R.exists_eq_ofArrows
  obtain ⟨ι', _, f', rfl⟩ := R'.exists_eq_ofArrows
  rw [isStackFor_ofArrows_iff] at hR₁ ⊢
  exact DescentData.isEquivalence_toDescentData_of_sieve_le _ hR₂ (Sieve.generate_mono h)

/-- If `F` is a prestack for a Grothendieck topology `J` and `F` is a stack
for a covering sieve `R`, then it is also a stack for `R'` if `R ≤ R'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant23ed113db5dc0b5646cf9bfc87d4b60201493c00ac3a81811106f2783e099159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant23ed113db5dc0b5646cf9bfc87d4b60201493c00ac3a81811106f2783e099159.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `965a05853a167d3807860b72b04951e2c2e6b5a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
