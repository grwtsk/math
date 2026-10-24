# strictAntiOn_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da463c15-e17c-e3ac-db47-498c7e224a81",
  "kind": "theorem",
  "lexical_name": "strictAntiOn_log",
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
  "slug": "strictantion-log--08d77a43580372212d019ea5",
  "source": {
    "blob": "213c1a0fd9c778d656fadcb61775e45d46549c1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 259,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant2ea681313f8b0983a16b04c11c96a354dde64f5deef39c2077fed77466386a6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08d77a43580372212d019ea5eb4e6e58d49e53e7478fe9343269451774ce1728",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant2ea681313f8b0983a16b04c11c96a354dde64f5deef39c2077fed77466386a6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da463c15-e17c-e3ac-db47-498c7e224a81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictAntiOn_log : StrictAntiOn log (Set.Iio 0) := by
  rintro x (hx : x < 0) y (hy : y < 0) hxy
  rw [← log_abs y, ← log_abs x]
  refine log_lt_log (abs_pos.2 hy.ne) ?_
  rwa [abs_of_neg hy, abs_of_neg hx, neg_lt_neg_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant2ea681313f8b0983a16b04c11c96a354dde64f5deef39c2077fed77466386a6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant2ea681313f8b0983a16b04c11c96a354dde64f5deef39c2077fed77466386a6d.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `213c1a0fd9c778d656fadcb61775e45d46549c1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
