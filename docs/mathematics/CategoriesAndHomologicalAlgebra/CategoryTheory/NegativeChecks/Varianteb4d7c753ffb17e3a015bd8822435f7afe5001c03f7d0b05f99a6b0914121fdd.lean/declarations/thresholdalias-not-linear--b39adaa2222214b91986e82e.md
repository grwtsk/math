# thresholdAlias_not_linear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec27c5a536870682d284f911d5aa3d0cae31d554",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb4d7c753ffb17e3a015bd8822435f7afe5001c03f7d0b05f99a6b0914121fdd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:550242f6-e791-f16f-41eb-1ac549f3fb63",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd7269c9-3aa7-cecd-3374-90f212bdcb84",
  "kind": "theorem",
  "lexical_name": "thresholdAlias_not_linear",
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
  "slug": "thresholdalias-not-linear--b39adaa2222214b91986e82e",
  "source": {
    "blob": "ec27c5a536870682d284f911d5aa3d0cae31d554",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 45,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NegativeChecks/Varianteb4d7c753ffb17e3a015bd8822435f7afe5001c03f7d0b05f99a6b0914121fdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b39adaa2222214b91986e82e8084c9d2dd7fff0b8d673717f5b2ba7ed50f4765",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NegativeChecks/Varianteb4d7c753ffb17e3a015bd8822435f7afe5001c03f7d0b05f99a6b0914121fdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd7269c9-3aa7-cecd-3374-90f212bdcb84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thresholdAlias_not_linear :
    ¬ ∃ map : ℝ →ₗ[ℝ] ℝ, ∀ value, map value = thresholdAlias value := by
  rintro ⟨map, exactValue⟩
  have additive := map.map_add (-1 : ℝ) 1
  rw [exactValue, exactValue, exactValue] at additive
  norm_num [thresholdAlias] at additive

/-- An exact root occurrence cannot be supplied where proof identity is required. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NegativeChecks/Varianteb4d7c753ffb17e3a015bd8822435f7afe5001c03f7d0b05f99a6b0914121fdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NegativeChecks/Varianteb4d7c753ffb17e3a015bd8822435f7afe5001c03f7d0b05f99a6b0914121fdd.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec27c5a536870682d284f911d5aa3d0cae31d554` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
