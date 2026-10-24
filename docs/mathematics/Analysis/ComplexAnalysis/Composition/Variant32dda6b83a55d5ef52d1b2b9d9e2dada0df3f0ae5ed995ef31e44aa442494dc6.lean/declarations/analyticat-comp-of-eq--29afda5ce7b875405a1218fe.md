# AnalyticAt.comp_of_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c3cfff6ea4c5df1007dd6f9f2bfc802f6693ab4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 861,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32dda6b83a55d5ef52d1b2b9d9e2dada0df3f0ae5ed995ef31e44aa442494dc6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2cbb55f1-8eb4-73ce-8ee0-aa2979e7b970",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96b8adb6-9de7-c705-9488-f295acf6f368",
  "kind": "theorem",
  "lexical_name": "AnalyticAt.comp_of_eq",
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
  "slug": "analyticat-comp-of-eq--29afda5ce7b875405a1218fe",
  "source": {
    "blob": "9c3cfff6ea4c5df1007dd6f9f2bfc802f6693ab4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 866,
    "line": 861,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Composition/Variant32dda6b83a55d5ef52d1b2b9d9e2dada0df3f0ae5ed995ef31e44aa442494dc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29afda5ce7b875405a1218fef8e643d32067dd62f39f7b89f5af6cb112c28d62",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Composition/Variant32dda6b83a55d5ef52d1b2b9d9e2dada0df3f0ae5ed995ef31e44aa442494dc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96b8adb6-9de7-c705-9488-f295acf6f368`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 861–866.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticAt.comp_of_eq {g : F → G} {f : E → F} {y : F} {x : E} (hg : AnalyticAt 𝕜 g y)
    (hf : AnalyticAt 𝕜 f x) (hy : f x = y) : AnalyticAt 𝕜 (g ∘ f) x := by
  rw [← hy] at hg
  exact hg.comp hf

/-- Version of `AnalyticAt.comp` where point equality is a separate hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Composition/Variant32dda6b83a55d5ef52d1b2b9d9e2dada0df3f0ae5ed995ef31e44aa442494dc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Composition/Variant32dda6b83a55d5ef52d1b2b9d9e2dada0df3f0ae5ed995ef31e44aa442494dc6.lean#L861).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c3cfff6ea4c5df1007dd6f9f2bfc802f6693ab4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
