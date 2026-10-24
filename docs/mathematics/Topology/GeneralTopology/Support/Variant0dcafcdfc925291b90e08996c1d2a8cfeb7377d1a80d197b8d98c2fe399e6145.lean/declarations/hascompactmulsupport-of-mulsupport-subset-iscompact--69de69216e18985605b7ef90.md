# HasCompactMulSupport.of_mulSupport_subset_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5bf31c7-85e8-79a2-0388-abdca96864cc",
  "kind": "theorem",
  "lexical_name": "HasCompactMulSupport.of_mulSupport_subset_isCompact",
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
  "slug": "hascompactmulsupport-of-mulsupport-subset-iscompact--69de69216e18985605b7ef90",
  "source": {
    "blob": "da14c408a1a90489fe62fbcfd32fd1d79f481cae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69de69216e18985605b7ef9083bf8555475eb9f3d8d739dde8e5c7f46fae473a",
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

Occurrence: `result:b5bf31c7-85e8-79a2-0388-abdca96864cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasCompactMulSupport.of_mulSupport_subset_isCompact [T2Space α] {K : Set α}
    (hK : IsCompact K) (h : mulSupport f ⊆ K) : HasCompactMulSupport f :=
  isCompact_closure_of_subset_compact hK h

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Support/Variant0dcafcdfc925291b90e08996c1d2a8cfeb7377d1a80d197b8d98c2fe399e6145.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da14c408a1a90489fe62fbcfd32fd1d79f481cae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
