# preservesCoproduct_of_preservesCokernels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2cccf51dded6e2371f0db2072e026e38a58eb2da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/de3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22410ba6-b8d5-d8c6-1c06-4957176fb028",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1643cd3-debe-c099-7a75-b41029a8c3f4",
  "kind": "lemma",
  "lexical_name": "preservesCoproduct_of_preservesCokernels",
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
  "slug": "preservescoproduct-of-preservescokernels--cd80c3f35774b8d4562e8f34",
  "source": {
    "blob": "2cccf51dded6e2371f0db2072e026e38a58eb2da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 140,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd80c3f35774b8d4562e8f342dd24357881f99a8c001983b4597d09d55b64425",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1643cd3-debe-c099-7a75-b41029a8c3f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesCoproduct_of_preservesCokernels
    [∀ {X Y} (f : X ⟶ Y), PreservesColimit (parallelPair f 0) F] {X Y : C} :
    PreservesColimit (pair X Y) F where
  preserves {c} hc :=
    ⟨IsColimit.ofIsoColimit
      (isColimitMapCoconeBinaryCofanOfPreservesCokernels F _ _
        (IsColimit.ofIsoColimit hc (isoBinaryCofanMk c)))
      ((Cocones.functoriality _ F).mapIso (isoBinaryCofanMk c).symm)⟩

attribute [local instance] preservesCoproduct_of_preservesCokernels

/-- A cokernel preserving functor between preadditive categories preserves binary coproducts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variantde3751280a93571297b95b237ea16e25ece9851524652eb1bf4a827a0434a54d.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cccf51dded6e2371f0db2072e026e38a58eb2da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
