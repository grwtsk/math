# instT2Space

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41a19db95b9995d64eca47cdf1544690027fb2272797cde908399a55465c4385",
  "kind": "instance",
  "lexical_name": "instT2Space",
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
  "slug": "instt2space--89ea2cb94e0245888ebf2cd0",
  "source": {
    "blob": "92ebff7ea6f7f6a21d132c5091fb72e0b34fae86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 155,
    "path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89ea2cb94e0245888ebf2cd0d61d6b21339d25c14f9055923bf6a7df38d67e7a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41a19db95b9995d64eca47cdf1544690027fb2272797cde908399a55465c4385`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instT2Space [T2Space 𝕜] : T2Space (WeakDual 𝕜 E) :=
   (WeakBilin.isEmbedding ContinuousLinearMap.coe_injective).t2Space

end Semiring

section Ring

variable [CommRing 𝕜] [TopologicalSpace 𝕜] [IsTopologicalAddGroup 𝕜] [ContinuousConstSMul 𝕜 𝕜]
variable [AddCommGroup E] [Module 𝕜 E] [TopologicalSpace E] [IsTopologicalAddGroup E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakDual/Variant752ba107d83b9de3d4b074dcd79681a170ccd7ab9138002b7d52460527ddd7d0.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92ebff7ea6f7f6a21d132c5091fb72e0b34fae86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
