# order_comp_square_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32da3dc590579ba18893f16f9736e95b2a2f81c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d636057-7834-b63d-8faf-529be37ce290",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f278978-6f34-99ed-17bd-d4a45d9b1d24",
  "kind": "theorem",
  "lexical_name": "order_comp_square_zero",
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
  "slug": "order-comp-square-zero--27b7d04da8090a06c0367f92",
  "source": {
    "blob": "32da3dc590579ba18893f16f9736e95b2a2f81c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27b7d04da8090a06c0367f92304fab4395ecd49f3ba7aa8b4b39a0e6e273e0da",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f278978-6f34-99ed-17bd-d4a45d9b1d24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem order_comp_square_zero {f : ℂ → ℂ} (hf : AnalyticAt ℂ f 0) :
    analyticOrderAt (fun z ↦ f (z ^ 2)) 0 = analyticOrderAt f 0 * 2 := by
  have hf' : AnalyticAt ℂ f ((0 : ℂ) ^ 2) := by simpa using hf
  have horder : analyticOrderAt (fun z : ℂ ↦ z ^ 2) 0 = 2 := by
    simpa [Pi.pow_def] using
      analyticOrderAt_centeredMonomial (z₀ := (0 : ℂ)) (n := 2)
  simpa [Function.comp_def, horder] using
    hf'.analyticOrderAt_comp (g := fun z : ℂ ↦ z ^ 2) (analyticAt_id.pow 2)

/-- A simple and a double zero have identical zero support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant0ad574f26e0c3236423f143eb3cd5c453beb422e1b71cad4ca6c74112ba6588e.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32da3dc590579ba18893f16f9736e95b2a2f81c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
