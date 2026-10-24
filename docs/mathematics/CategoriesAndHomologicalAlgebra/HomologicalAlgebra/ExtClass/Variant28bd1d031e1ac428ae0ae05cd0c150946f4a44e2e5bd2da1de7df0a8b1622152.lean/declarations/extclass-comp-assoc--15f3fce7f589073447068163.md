# extClass_comp_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d142924468f78013c598f9f81fa29969a5641cf9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28bd1d031e1ac428ae0ae05cd0c150946f4a44e2e5bd2da1de7df0a8b1622152.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4eef8205-ee32-f79a-c006-6578ee20fbb0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0fdd9bcf-97eb-d4fe-d102-ca118d17610d",
  "kind": "lemma",
  "lexical_name": "extClass_comp_assoc",
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
  "slug": "extclass-comp-assoc--15f3fce7f589073447068163",
  "source": {
    "blob": "d142924468f78013c598f9f81fa29969a5641cf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 118,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variant28bd1d031e1ac428ae0ae05cd0c150946f4a44e2e5bd2da1de7df0a8b1622152.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15f3fce7f5890734470681632af25238a347780ced62f64d9a8cbd2a4c2408ee",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variant28bd1d031e1ac428ae0ae05cd0c150946f4a44e2e5bd2da1de7df0a8b1622152.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fdd9bcf-97eb-d4fe-d102-ca118d17610d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extClass_comp_assoc {Y : C} {n : ℕ} (γ : Ext S.X₂ Y n) {n' : ℕ} {h : 1 + n = n'} :
    hS.extClass.comp ((Ext.mk₀ S.f).comp γ (zero_add n)) h = 0 := by
  rw [← Ext.comp_assoc (a₁₂ := 1) _ _ _ (by lia) (by lia) (by lia),
    extClass_comp, Ext.zero_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variant28bd1d031e1ac428ae0ae05cd0c150946f4a44e2e5bd2da1de7df0a8b1622152.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variant28bd1d031e1ac428ae0ae05cd0c150946f4a44e2e5bd2da1de7df0a8b1622152.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d142924468f78013c598f9f81fa29969a5641cf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
