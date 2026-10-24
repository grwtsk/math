# mapPairComp_inv_app_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2360df444fb04aab40089408de6a0f466fa24718",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 454,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9933c4416dde10549f83a36503d3327d0f64dfb06a66c4f7e881d22fa0f6304.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86e77edd-fdc7-acd0-487f-bd73d43dda4b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82683b02-42a1-31d6-0c8a-f33763a3c155",
  "kind": "lemma",
  "lexical_name": "mapPairComp_inv_app_right",
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
  "slug": "mappaircomp-inv-app-right--10e0ede518acd8519be9b306",
  "source": {
    "blob": "2360df444fb04aab40089408de6a0f466fa24718",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 472,
    "line": 454,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc9933c4416dde10549f83a36503d3327d0f64dfb06a66c4f7e881d22fa0f6304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10e0ede518acd8519be9b306de9f2c84f37bd2daefe4a4aff5e09ab23f71a33d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc9933c4416dde10549f83a36503d3327d0f64dfb06a66c4f7e881d22fa0f6304.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82683b02-42a1-31d6-0c8a-f33763a3c155`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapPairComp_inv_app_right (d : D) :
    (mapPairComp Fₗ Fᵣ Gₗ Gᵣ).inv.app (right d) = 𝟙 (right (Gᵣ.obj (Fᵣ.obj d))) := by
  dsimp [mapPairComp]
  simp

end mapPairComp

end Functoriality

section NaturalTransforms

variable {E : Type u₃} [Category.{v₃} E]
  {E' : Type u₄} [Category.{v₄} E']

variable {C D}

/-- A natural transformation `Fₗ ⟶ Gₗ` induces a natural transformation
  `mapPair Fₗ H ⟶ mapPair Gₗ H` for every `H : D ⥤ E'`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc9933c4416dde10549f83a36503d3327d0f64dfb06a66c4f7e881d22fa0f6304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc9933c4416dde10549f83a36503d3327d0f64dfb06a66c4f7e881d22fa0f6304.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2360df444fb04aab40089408de6a0f466fa24718` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
