# IsCompact.bddBelow_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:549d2797-11b7-5f35-1e5b-2a177e3fd56e",
  "kind": "theorem",
  "lexical_name": "IsCompact.bddBelow_image",
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
  "slug": "iscompact-bddbelow-image--a420b339c9f218e53cd85ba7",
  "source": {
    "blob": "40e86aa14c6ad98f29c908a95a2d3c8cf87b1250",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 335,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variantf8f27a7418f1b7f0793e63d5af4154bbc8c847b4b7a02b945314eaafe397dc8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a420b339c9f218e53cd85ba7c84c82469c2100d90c52c59e8e05736b80b31641",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variantf8f27a7418f1b7f0793e63d5af4154bbc8c847b4b7a02b945314eaafe397dc8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:549d2797-11b7-5f35-1e5b-2a177e3fd56e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompact.bddBelow_image [ClosedIicTopology α] [Nonempty α] {f : β → α} {K : Set β}
    (hK : IsCompact K) (hf : ContinuousOn f K) : BddBelow (f '' K) :=
  (hK.image_of_continuousOn hf).bddBelow

/-- A continuous function is bounded above on a compact set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variantf8f27a7418f1b7f0793e63d5af4154bbc8c847b4b7a02b945314eaafe397dc8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variantf8f27a7418f1b7f0793e63d5af4154bbc8c847b4b7a02b945314eaafe397dc8e.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40e86aa14c6ad98f29c908a95a2d3c8cf87b1250` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
