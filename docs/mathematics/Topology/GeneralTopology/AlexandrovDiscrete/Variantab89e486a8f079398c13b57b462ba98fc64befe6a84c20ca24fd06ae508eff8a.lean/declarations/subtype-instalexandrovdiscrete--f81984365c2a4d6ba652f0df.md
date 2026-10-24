# Subtype.instAlexandrovDiscrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36cb006bc7dcbb95f995bc460d651b28a5d72017f947b3f564657aa9788555e7",
  "kind": "instance",
  "lexical_name": "Subtype.instAlexandrovDiscrete",
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
  "slug": "subtype-instalexandrovdiscrete--f81984365c2a4d6ba652f0df",
  "source": {
    "blob": "feaf6e7dc09b2ca2c5a30cb8769a22ee66ba43ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 190,
    "path": "GRWTSK/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f81984365c2a4d6ba652f0df7323fcca55d499814433414a996006f373df821b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36cb006bc7dcbb95f995bc460d651b28a5d72017f947b3f564657aa9788555e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Subtype.instAlexandrovDiscrete {p : α → Prop} : AlexandrovDiscrete {a // p a} :=
  IsInducing.subtypeVal.alexandrovDiscrete

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AlexandrovDiscrete/Variantab89e486a8f079398c13b57b462ba98fc64befe6a84c20ca24fd06ae508eff8a.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feaf6e7dc09b2ca2c5a30cb8769a22ee66ba43ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
