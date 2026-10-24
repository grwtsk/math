# XXIsoOfEq_inv_ιTotal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b544cd987c7b0f89088ba4f2c38c71c841488297",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c171578-cd9f-12c0-34af-0a36a4fd7078",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:941bc320-0183-73ea-fc46-03c112e720af",
  "kind": "lemma",
  "lexical_name": "XXIsoOfEq_inv_ιTotal",
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
  "slug": "xxisoofeq-inv-total--298383afe592a29f7061b64f",
  "source": {
    "blob": "b544cd987c7b0f89088ba4f2c38c71c841488297",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 271,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:298383afe592a29f7061b64fca57d119f139cc5e8c51442fa6929c9875d34d63",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:941bc320-0183-73ea-fc46-03c112e720af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma XXIsoOfEq_inv_ιTotal {x₁ y₁ : I₁} (h₁ : x₁ = y₁) {x₂ y₂ : I₂} (h₂ : x₂ = y₂)
    (i₁₂ : I₁₂) (h : ComplexShape.π c₁ c₂ c₁₂ (x₁, x₂) = i₁₂) :
    (K.XXIsoOfEq _ _ _ h₁ h₂).inv ≫ K.ιTotal c₁₂ x₁ x₂ i₁₂ h =
      K.ιTotal c₁₂ y₁ y₂ i₁₂ (by rw [← h, h₁, h₂]) := by
  subst h₁ h₂
  simp

/-- The inclusion of a summand in the total complex, or zero if the degrees do not match. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant712c59a575118900fc15aef4c4f55e8bc0bdfc5d6e8f1e555fecb898277777da.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b544cd987c7b0f89088ba4f2c38c71c841488297` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
