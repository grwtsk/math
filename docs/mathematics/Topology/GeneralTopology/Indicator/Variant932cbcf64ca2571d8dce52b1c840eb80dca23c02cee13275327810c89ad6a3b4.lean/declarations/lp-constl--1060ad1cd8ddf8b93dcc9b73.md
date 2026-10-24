# Lp.constL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b4d6610fd4b41c1bc1ebb7bf094eb039d509e67b9091fcfc38ca21a37e83f9a",
  "kind": "def",
  "lexical_name": "Lp.constL",
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
  "slug": "lp-constl--1060ad1cd8ddf8b93dcc9b73",
  "source": {
    "blob": "c59ef3ab1a7d551186ffbec150f636eebba6725f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 281,
    "path": "GRWTSK/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1060ad1cd8ddf8b93dcc9b732b38f00e5b3a3cf9ab8ce84805c4f530864a45ad",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b4d6610fd4b41c1bc1ebb7bf094eb039d509e67b9091fcfc38ca21a37e83f9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def Lp.constL (𝕜 : Type*) [NormedRing 𝕜] [Module 𝕜 E] [IsBoundedSMul 𝕜 E] [Fact (1 ≤ p)] :
    E →L[𝕜] Lp E p μ :=
  (Lp.constₗ p μ 𝕜).mkContinuous (μ.real Set.univ ^ (1 / p.toReal)) fun _ ↦
    (Lp.norm_const_le _ _ _).trans_eq (mul_comm _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c59ef3ab1a7d551186ffbec150f636eebba6725f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
