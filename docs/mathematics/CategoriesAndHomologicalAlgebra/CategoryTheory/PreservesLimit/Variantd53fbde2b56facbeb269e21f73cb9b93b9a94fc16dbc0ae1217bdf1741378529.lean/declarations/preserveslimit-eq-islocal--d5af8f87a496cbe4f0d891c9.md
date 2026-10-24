# preservesLimit_eq_isLocal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e28cb4c9e10b26ead02a7a0158687e71b31666e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0271afd-cc93-1b52-8139-879540e2fdb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a56cdbb6-ab9e-e020-3199-056aab2cceb0",
  "kind": "lemma",
  "lexical_name": "preservesLimit_eq_isLocal",
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
  "slug": "preserveslimit-eq-islocal--d5af8f87a496cbe4f0d891c9",
  "source": {
    "blob": "e28cb4c9e10b26ead02a7a0158687e71b31666e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 124,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5af8f87a496cbe4f0d891c9083ef993d9d40b091097b3e88f692d99f9bb7ca0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a56cdbb6-ab9e-e020-3199-056aab2cceb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesLimit_eq_isLocal :
    ObjectProperty.preservesLimit F =
      (MorphismProperty.ofHoms (preservesLimitHomFamily F)).isLocal := by
  ext
  by_cases hF : HasLimit F
  · rw [preservesLimit_eq_isLocal_single (limit.isLimit F) (colimit.isColimit _)]
    convert Iff.rfl
    ext
    exact ⟨fun ⟨_⟩ ↦ ⟨⟨⟩⟩, fun ⟨_⟩ ↦ ⟨⟨hF⟩⟩⟩
  · exact ⟨fun _ _ _ _ ⟨h⟩ ↦ (hF h.down).elim,
      fun _ ↦ ⟨fun hc ↦ (hF ⟨_, hc⟩).elim⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e28cb4c9e10b26ead02a7a0158687e71b31666e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
