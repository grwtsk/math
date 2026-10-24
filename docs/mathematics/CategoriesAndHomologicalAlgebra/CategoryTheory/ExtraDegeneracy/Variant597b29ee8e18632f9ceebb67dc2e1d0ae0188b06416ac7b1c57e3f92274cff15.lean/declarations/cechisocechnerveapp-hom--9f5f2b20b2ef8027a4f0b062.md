# cechIsoCechNerveApp_hom_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "398a432c1981383c7d93968a8b205f08979ec96c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/597b29ee8e18632f9ceebb67dc2e1d0ae0188b06416ac7b1c57e3f92274cff15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ef989e7-23f4-f8be-5679-82dcd09e3c8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6cca0d6-d51d-0272-a42e-447f4c4400a4",
  "kind": "lemma",
  "lexical_name": "cechIsoCechNerveApp_hom_π",
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
  "slug": "cechisocechnerveapp-hom--9f5f2b20b2ef8027a4f0b062",
  "source": {
    "blob": "398a432c1981383c7d93968a8b205f08979ec96c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 57,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtraDegeneracy/Variant597b29ee8e18632f9ceebb67dc2e1d0ae0188b06416ac7b1c57e3f92274cff15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f5f2b20b2ef8027a4f0b0626fa9af4bd7502f15f633fa9e2925bb26583ad450",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtraDegeneracy/Variant597b29ee8e18632f9ceebb67dc2e1d0ae0188b06416ac7b1c57e3f92274cff15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6cca0d6-d51d-0272-a42e-447f4c4400a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cechIsoCechNerveApp_hom_π (n : SimplexCategoryᵒᵖ) (i : ToType n.unop) :
    (U.cechIsoCechNerveApp hT n).hom ≫
      WidePullback.π (fun _ ↦ (isTerminalIncl T hT).from U) i = U.powerπ i :=
  IsLimit.conePointUniqueUpToIso_hom_comp _ _ _

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtraDegeneracy/Variant597b29ee8e18632f9ceebb67dc2e1d0ae0188b06416ac7b1c57e3f92274cff15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExtraDegeneracy/Variant597b29ee8e18632f9ceebb67dc2e1d0ae0188b06416ac7b1c57e3f92274cff15.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `398a432c1981383c7d93968a8b205f08979ec96c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
