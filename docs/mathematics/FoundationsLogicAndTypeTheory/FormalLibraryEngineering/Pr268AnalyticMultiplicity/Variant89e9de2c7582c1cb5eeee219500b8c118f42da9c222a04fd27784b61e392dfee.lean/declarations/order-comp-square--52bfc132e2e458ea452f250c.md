# order_comp_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2cc07cbd7a440d1f425049b370a17365f8e8c5a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89e9de2c7582c1cb5eeee219500b8c118f42da9c222a04fd27784b61e392dfee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0071d7e7-ad77-1520-1ddb-e54d34132770",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81008951-e149-156d-7983-3713f93a052a",
  "kind": "theorem",
  "lexical_name": "order_comp_square",
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
  "slug": "order-comp-square--52bfc132e2e458ea452f250c",
  "source": {
    "blob": "2cc07cbd7a440d1f425049b370a17365f8e8c5a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant89e9de2c7582c1cb5eeee219500b8c118f42da9c222a04fd27784b61e392dfee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52bfc132e2e458ea452f250c8b0356f0aff633bbb0ef100fbe0121e7d3261d98",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant89e9de2c7582c1cb5eeee219500b8c118f42da9c222a04fd27784b61e392dfee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81008951-e149-156d-7983-3713f93a052a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem order_comp_square {f : ℂ → ℂ} {u : ℂ} (hu : u ≠ 0) :
    analyticOrderAt (fun z ↦ f (z ^ 2)) u = analyticOrderAt f (u ^ 2) := by
  apply analyticOrderAt_comp_of_deriv_ne_zero (g := fun z : ℂ ↦ z ^ 2) (by fun_prop)
  rw [show deriv (fun z : ℂ ↦ z ^ 2) u = 2 * u by simp]
  exact mul_ne_zero (by norm_num) hu

/-- The opposite square-root coordinates carry the same, undoubled order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant89e9de2c7582c1cb5eeee219500b8c118f42da9c222a04fd27784b61e392dfee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant89e9de2c7582c1cb5eeee219500b8c118f42da9c222a04fd27784b61e392dfee.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cc07cbd7a440d1f425049b370a17365f8e8c5a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
