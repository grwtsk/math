# IsLocalExtrOn.congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd356e18-d0d0-15b8-76b1-abc3d16645e4",
  "kind": "theorem",
  "lexical_name": "IsLocalExtrOn.congr",
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
  "slug": "islocalextron-congr--3e40e99e12df1a58ac7dc2e9",
  "source": {
    "blob": "674aef94725181532a9776d3133c835f6016b867",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 495,
    "path": "GRWTSK/Topology/GeneralTopology/LocalExtr/Variantb773449bcedd043fd484645e71e46b7b6bd7dcce2e3f1ddaa60abe759f8f5a58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e40e99e12df1a58ac7dc2e9389e362e446f96a0deae3f8bff6fe9b575b3b54e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalExtr/Variantb773449bcedd043fd484645e71e46b7b6bd7dcce2e3f1ddaa60abe759f8f5a58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd356e18-d0d0-15b8-76b1-abc3d16645e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem IsLocalExtrOn.congr {f g : α → β} {a : α} (h : IsLocalExtrOn f s a)
    (heq : f =ᶠ[𝓝[s] a] g) (hmem : a ∈ s) : IsLocalExtrOn g s a :=
  h.congr heq <| heq.eq_of_nhdsWithin hmem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalExtr/Variantb773449bcedd043fd484645e71e46b7b6bd7dcce2e3f1ddaa60abe759f8f5a58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalExtr/Variantb773449bcedd043fd484645e71e46b7b6bd7dcce2e3f1ddaa60abe759f8f5a58.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `674aef94725181532a9776d3133c835f6016b867` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
