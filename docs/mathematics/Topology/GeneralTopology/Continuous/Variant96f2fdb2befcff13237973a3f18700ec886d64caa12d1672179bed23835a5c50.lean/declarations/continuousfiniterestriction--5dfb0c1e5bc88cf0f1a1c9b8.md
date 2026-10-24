# ContinuousFiniteRestriction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:249a07a864a20973a85c23d191e8bee7a01b70f15a0f1b43f7efa82ab6820888",
  "kind": "structure",
  "lexical_name": "ContinuousFiniteRestriction",
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
  "slug": "continuousfiniterestriction--5dfb0c1e5bc88cf0f1a1c9b8",
  "source": {
    "blob": "55ba8a123e74f141beb0e159c1827531ae5cc421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5dfb0c1e5bc88cf0f1a1c9b81375d139c9841fb9aea611163aa8334f93b1dfa7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:249a07a864a20973a85c23d191e8bee7a01b70f15a0f1b43f7efa82ab6820888`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ContinuousFiniteRestriction
    {A : FiniteAddCommGroup.{u}}
    (H G : ContinuousFiniteGaloisModule.{u} A) where
  finiteRestriction :
    ActionHom H.action G.action
  quotientMapCompatible : Prop
  quotientMapCompatibleCertified :
    quotientMapCompatible
  continuous : Prop
  continuousCertified : continuous
  boundary : List String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuous/Variant96f2fdb2befcff13237973a3f18700ec886d64caa12d1672179bed23835a5c50.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55ba8a123e74f141beb0e159c1827531ae5cc421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
