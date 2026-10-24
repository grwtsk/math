# Filter.EventuallyEq.self_of_nhdsSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ea459d9-cf66-92e3-1409-5918f175c985",
  "kind": "theorem",
  "lexical_name": "Filter.EventuallyEq.self_of_nhdsSet",
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
  "slug": "filter-eventuallyeq-self-of-nhdsset--bb4d3e92bb6e8aa7241b1fe3",
  "source": {
    "blob": "0b1d2b8e4818d0b52fbf66411b604791b1c45d5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb4d3e92bb6e8aa7241b1fe34f4c97b13da68a40b41f24a61b63ab3d11df7e97",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ea459d9-cf66-92e3-1409-5918f175c985`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem Filter.EventuallyEq.self_of_nhdsSet {Y} {f g : X → Y} (h : f =ᶠ[𝓝ˢ s] g) :
    EqOn f g s :=
  h.self_of_nhdsSet

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b1d2b8e4818d0b52fbf66411b604791b1c45d5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
