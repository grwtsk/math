# ScheduleKernelFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:732b14f7a1a3a1159840d0e4f8890b8de5bfc8407bb4cad9090ce51279f06a05",
  "kind": "structure",
  "lexical_name": "ScheduleKernelFamily",
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
  "slug": "schedulekernelfamily--7d617067810464074ccc5c7e",
  "source": {
    "blob": "959de951c6fb7a7bef94b113d7566bdc93ee59a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 80,
    "path": "GRWTSK/Topology/MetricTopology/Dynamics/Variant9f32e8d5c5bdb66fcdddbf1a2cda79f5ee3704b4fd7563257e860c12ac921c2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d617067810464074ccc5c7e76235ddf7d1ffaa9591e03809116e4b2dcefac15",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Dynamics/Variant9f32e8d5c5bdb66fcdddbf1a2cda79f5ee3704b4fd7563257e860c12ac921c2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:732b14f7a1a3a1159840d0e4f8890b8de5bfc8407bb4cad9090ce51279f06a05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ScheduleKernelFamily
    (system : RandomBitfieldSystem)
    (carrier : WassersteinLawCarrier system)
    (Schedule : Type*) where
  defaultSchedule : Schedule
  kernel : Schedule → FiniteBitfieldKernel system
  invariantLaw : carrier.Law
  contraction : ℝ≥0
  contraction_lt_one : contraction < 1
  commonInvariant :
    ∀ schedule,
      carrier.push (kernel schedule) invariantLaw =
        invariantLaw
  uniformlyWassersteinContractive :
    ∀ schedule left right,
      carrier.wasserstein
          (carrier.push (kernel schedule) left)
          (carrier.push (kernel schedule) right) ≤
        contraction * carrier.wasserstein left right

namespace ScheduleKernelFamily

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Dynamics/Variant9f32e8d5c5bdb66fcdddbf1a2cda79f5ee3704b4fd7563257e860c12ac921c2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Dynamics/Variant9f32e8d5c5bdb66fcdddbf1a2cda79f5ee3704b4fd7563257e860c12ac921c2d.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `959de951c6fb7a7bef94b113d7566bdc93ee59a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
