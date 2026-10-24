# LinearBound.eval_compose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c39feccad70d53e3f42359df6c9fa7d5771bb6fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7865dd97-0145-5c33-2c88-079d49bdaaf3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:872ed9d7-db65-bccf-2e38-a956f5f5b550",
  "kind": "theorem",
  "lexical_name": "LinearBound.eval_compose",
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
  "slug": "linearbound-eval-compose--41985f18cdf452790e7ffde3",
  "source": {
    "blob": "c39feccad70d53e3f42359df6c9fa7d5771bb6fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 209,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41985f18cdf452790e7ffde311dcd1882bc629c8cc499b04e00b6e88e795e303",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:872ed9d7-db65-bccf-2e38-a956f5f5b550`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearBound.eval_compose (outer inner : LinearBound) (x : ℝ) :
    (outer.compose inner).eval x = outer.eval (inner.eval x) := by
  simp only [compose, eval]
  push_cast
  ring

/-! ## Interval Width after ReLU -/

/-- The output interval width after applying ReLU relaxation.
    For crossing case, width = λ · (u - l) = u · (u - l) / (u - l) = u -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant5b69b2937199ee21c8b23a4780d1ea3477d2bcfafe11b676b980035284891dd0.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c39feccad70d53e3f42359df6c9fa7d5771bb6fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
