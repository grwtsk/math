# tendsto_Ico_Iic_Iio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5579500456ff20ca5175928a9215c915da433d5e87cc5e20371ce857e13b8b46",
  "kind": "instance",
  "lexical_name": "tendsto_Ico_Iic_Iio",
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
  "slug": "tendsto-ico-iic-iio--3e9166c17ead5fc6ee89f739",
  "source": {
    "blob": "d0bc7562ee00a29c631c3127f7a239e89109b988",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 184,
    "path": "GRWTSK/Topology/GeneralTopology/Interval/Variant407d5623935d41004b1ff8c5088f944a20955ad55b0d9d782cbe30168d9c3810.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e9166c17ead5fc6ee89f73990d8cda2e8995c64a5cce8dd6237bd24d153f0dc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Interval/Variant407d5623935d41004b1ff8c5088f944a20955ad55b0d9d782cbe30168d9c3810.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5579500456ff20ca5175928a9215c915da433d5e87cc5e20371ce857e13b8b46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance tendsto_Ico_Iic_Iio {a : α} : TendstoIxxClass Ico (𝓟 (Iic a)) (𝓟 (Iio a)) :=
  tendstoIxxClass_principal.2 fun _ _ _ h₁ _ h₂ => lt_of_lt_of_le h₂.2 h₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Interval/Variant407d5623935d41004b1ff8c5088f944a20955ad55b0d9d782cbe30168d9c3810.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Interval/Variant407d5623935d41004b1ff8c5088f944a20955ad55b0d9d782cbe30168d9c3810.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0bc7562ee00a29c631c3127f7a239e89109b988` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
