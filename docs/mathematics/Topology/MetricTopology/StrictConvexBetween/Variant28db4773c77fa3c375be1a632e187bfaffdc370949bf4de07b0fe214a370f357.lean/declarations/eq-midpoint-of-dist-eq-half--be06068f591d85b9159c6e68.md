# eq_midpoint_of_dist_eq_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07674a21-4542-1abf-1a71-2cc37b830c42",
  "kind": "lemma",
  "lexical_name": "eq_midpoint_of_dist_eq_half",
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
  "slug": "eq-midpoint-of-dist-eq-half--be06068f591d85b9159c6e68",
  "source": {
    "blob": "e03dc2e463bc31147d9792cf9629e39e52e33c8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 138,
    "path": "GRWTSK/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be06068f591d85b9159c6e68ccfb9e8b127f8c0d1a183c33b44cecdefc92b141",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07674a21-4542-1abf-1a71-2cc37b830c42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_midpoint_of_dist_eq_half (hx : dist x y = dist x z / 2) (hy : dist y z = dist x z / 2) :
    y = midpoint ℝ x z := by
  apply eq_lineMap_of_dist_eq_mul_of_dist_eq_mul
  · rwa [invOf_eq_inv, ← div_eq_inv_mul]
  · rwa [invOf_eq_inv, ← one_div, sub_half, one_div, ← div_eq_inv_mul]

namespace Isometry

/-- An isometry of `NormedAddTorsor`s for real normed spaces, strictly convex in the case of the
codomain, is an affine isometry.  Unlike Mazur-Ulam, this does not require the isometry to be
surjective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e03dc2e463bc31147d9792cf9629e39e52e33c8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
