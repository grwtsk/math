# instNormedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c1c96592bd249b024c8c1a0f2c58da90141c6d1fca14e2c7e1463e429afcf08",
  "kind": "instance",
  "lexical_name": "instNormedSpace",
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
  "slug": "instnormedspace--1dc903719945519a2e17e88a",
  "source": {
    "blob": "52e68a3388580c4af7defad23b8085005083cc20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 278,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8c662ed98e80329f02cb4245e0fb63b4372718853ec7543231739fd0d57ea111.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1dc903719945519a2e17e88a96bd766481989297dbb6db84ca71971ad64ad743",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8c662ed98e80329f02cb4245e0fb63b4372718853ec7543231739fd0d57ea111.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c1c96592bd249b024c8c1a0f2c58da90141c6d1fca14e2c7e1463e429afcf08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNormedSpace {𝕜' : Type*} [NormedField 𝕜'] [NormedSpace 𝕜' F] [SMulCommClass 𝕜 𝕜' F] :
    NormedSpace 𝕜' (E [⋀^ι]→L[𝕜] F) :=
  ⟨fun c f ↦ f.1.opNorm_smul_le c⟩

section

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8c662ed98e80329f02cb4245e0fb63b4372718853ec7543231739fd0d57ea111.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8c662ed98e80329f02cb4245e0fb63b4372718853ec7543231739fd0d57ea111.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52e68a3388580c4af7defad23b8085005083cc20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
