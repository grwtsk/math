# zariskiTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bfa506dd2861e5de24196128814f1abe38c0722af88e0ff6c2eb7686aacea05",
  "kind": "instance",
  "lexical_name": "zariskiTopology",
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
  "slug": "zariskitopology--e45eac068d4cdeb08a3c3af0",
  "source": {
    "blob": "43968ea7262c8dcaef820d885ee5edd6fd2982ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 47,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant2b6335472fc3bbb0c0ab929afb781350648ecbe4bc1b4be00537c0c61216ecfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e45eac068d4cdeb08a3c3af05adb45177c17584fdb20b0a836ac07c045e28b64",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant2b6335472fc3bbb0c0ab929afb781350648ecbe4bc1b4be00537c0c61216ecfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bfa506dd2861e5de24196128814f1abe38c0722af88e0ff6c2eb7686aacea05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance zariskiTopology : TopologicalSpace <| MaximalSpectrum R :=
  PrimeSpectrum.zariskiTopology.induced toPrimeSpectrum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant2b6335472fc3bbb0c0ab929afb781350648ecbe4bc1b4be00537c0c61216ecfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant2b6335472fc3bbb0c0ab929afb781350648ecbe4bc1b4be00537c0c61216ecfe.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43968ea7262c8dcaef820d885ee5edd6fd2982ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
