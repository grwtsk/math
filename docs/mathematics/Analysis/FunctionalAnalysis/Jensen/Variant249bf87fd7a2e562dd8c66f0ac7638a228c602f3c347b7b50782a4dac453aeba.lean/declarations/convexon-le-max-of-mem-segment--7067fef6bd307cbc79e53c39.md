# ConvexOn.le_max_of_mem_segment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:110a5543-ecfa-e180-51df-fb4d6ea65ac4",
  "kind": "lemma",
  "lexical_name": "ConvexOn.le_max_of_mem_segment",
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
  "slug": "convexon-le-max-of-mem-segment--7067fef6bd307cbc79e53c39",
  "source": {
    "blob": "aa3b396babf0ab664eef29767001286885bb0035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 400,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7067fef6bd307cbc79e53c39cf90d2772f75ae507fe456735aca3fca1853e846",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:110a5543-ecfa-e180-51df-fb4d6ea65ac4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ConvexOn.le_max_of_mem_segment (hf : ConvexOn 𝕜 s f) (hx : x ∈ s) (hy : y ∈ s)
    (hz : z ∈ [x -[𝕜] y]) : f z ≤ max (f x) (f y) := by
  rw [← convexHull_pair] at hz; simpa using hf.exists_ge_of_mem_convexHull (pair_subset hx hy) hz

/-- **Minimum principle** for concave functions on a segment. If a function `f` is concave on the
segment `[x, y]`, then the eventual minimum of `f` on `[x, y]` is at `x` or `y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa3b396babf0ab664eef29767001286885bb0035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
