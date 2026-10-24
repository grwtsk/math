# fixedPoint_unique'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06fbb34930ba5071bfda1dbe4ad79edcaa6229f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 259,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4dda0033-f194-c0b1-f0ae-70cbf89a5023",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:accdd5e3-5d40-7a61-9325-6d5536ec4042",
  "kind": "theorem",
  "lexical_name": "fixedPoint_unique'",
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
  "slug": "fixedpoint-unique--8ea98d9c6f4f60c52c269960",
  "source": {
    "blob": "06fbb34930ba5071bfda1dbe4ad79edcaa6229f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 259,
    "path": "GRWTSK/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ea98d9c6f4f60c52c2699608dbb61155438c9b694a7318874b55fb8fef0a65b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:accdd5e3-5d40-7a61-9325-6d5536ec4042`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedPoint_unique' {x y} (hx : IsFixedPt f x) (hy : IsFixedPt f y) : x = y :=
  (hf.eq_or_edist_eq_top_of_fixedPoints hx hy).resolve_right (edist_ne_top _ _)

/-- Let `f` be a contracting map with constant `K`; let `g` be another map uniformly
`C`-close to `f`. If `x` and `y` are their fixed points, then `dist x y ≤ C / (1 - K)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Contracting/Variant8d567fac6fdd9223c975598f79080ca011a5651a2dcc6c78472644fee424c3cb.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06fbb34930ba5071bfda1dbe4ad79edcaa6229f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
