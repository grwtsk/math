# localTrivAsLocalEquiv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f60ad932-bc3b-4c86-bfac-8bb2ce4c3ee6",
  "kind": "theorem",
  "lexical_name": "localTrivAsLocalEquiv_apply",
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
  "slug": "localtrivaslocalequiv-apply--61f82d4c5b2a6d3e51de6bde",
  "source": {
    "blob": "b4bb4345d1ef7d147cf058ae6f1690a5620d3c02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 532,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantece12ece18ff9be770ae13f5f34b2ea3b1f6e0a83a3da018b547eb218fca3dce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61f82d4c5b2a6d3e51de6bde6481c49a4068dadb87ba87e06e0865c75f88f4cb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantece12ece18ff9be770ae13f5f34b2ea3b1f6e0a83a3da018b547eb218fca3dce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f60ad932-bc3b-4c86-bfac-8bb2ce4c3ee6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 532–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localTrivAsLocalEquiv_apply (p : Z.TotalSpace) :
    (Z.localTrivAsLocalEquiv i) p = ⟨p.1, Z.coordChange (Z.indexAt p.1) i p.1 p.2⟩ :=
  rfl
#align fiber_bundle_core.local_triv_as_local_equiv_apply FiberBundleCore.localTrivAsLocalEquiv_apply

/-- The composition of two local trivializations is the trivialization change Z.triv_change i j. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantece12ece18ff9be770ae13f5f34b2ea3b1f6e0a83a3da018b547eb218fca3dce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantece12ece18ff9be770ae13f5f34b2ea3b1f6e0a83a3da018b547eb218fca3dce.lean#L532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4bb4345d1ef7d147cf058ae6f1690a5620d3c02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
