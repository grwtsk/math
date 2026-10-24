# mulTSupport_eq_empty_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b672ee3-7b72-ab35-aa22-5ad5176b2db4",
  "kind": "theorem",
  "lexical_name": "mulTSupport_eq_empty_iff",
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
  "slug": "multsupport-eq-empty-iff--baf44274b51f99b365166fd3",
  "source": {
    "blob": "da14c408a1a90489fe62fbcfd32fd1d79f481cae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baf44274b51f99b365166fd3963c854fc158d9beb838c0f726cd15a97161d668",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b672ee3-7b72-ab35-aa22-5ad5176b2db4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulTSupport_eq_empty_iff {f : X → α} : mulTSupport f = ∅ ↔ f = 1 := by
  rw [mulTSupport, closure_empty_iff, mulSupport_eq_empty_iff]
#align mul_tsupport_eq_empty_iff mulTSupport_eq_empty_iff
#align tsupport_eq_empty_iff tsupport_eq_empty_iff

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da14c408a1a90489fe62fbcfd32fd1d79f481cae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
