# CycleTorsionModel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f02e321dc1eb72cc5a95286118dae36219c1faa35aa830706a2e5a5551851391",
  "kind": "structure",
  "lexical_name": "CycleTorsionModel",
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
  "slug": "cycletorsionmodel--7d1bfd25689ca57cd7c92bcf",
  "source": {
    "blob": "912d25d60403a91c81aba3bee53b325dbff8f447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 26,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variant826cc801c5a0695beae22ea54d4b35079b4729b9268d9cf16a837a5fa68ffb4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d1bfd25689ca57cd7c92bcf0eadcd9f2941461cdf14edd20894a102d1ff0319",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variant826cc801c5a0695beae22ea54d4b35079b4729b9268d9cf16a837a5fa68ffb4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f02e321dc1eb72cc5a95286118dae36219c1faa35aa830706a2e5a5551851391`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CycleTorsionModel
    (Signal : Type uSignal)
    [NormedAddCommGroup Signal]
    [NormedSpace ℝ Signal] where
  cycleFamilyIdentifier : String
  metricIdentifier : String
  CycleId : Type uCycle
  cycleFintype : Fintype CycleId
  cycleDecEq : DecidableEq CycleId
  transport : CycleId → Signal →ₗ[ℝ] Signal
  defect : CycleId → Signal →ₗ[ℝ] Signal
  defect_spec : ∀ γ, defect γ = LinearMap.id - transport γ
  reference : Signal
  reference_resolved : ∀ γ, defect γ reference = 0

namespace CycleTorsionModel

variable {Signal : Type uSignal}
variable [NormedAddCommGroup Signal] [NormedSpace ℝ Signal]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variant826cc801c5a0695beae22ea54d4b35079b4729b9268d9cf16a837a5fa68ffb4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TorsionResolution/Variant826cc801c5a0695beae22ea54d4b35079b4729b9268d9cf16a837a5fa68ffb4f.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `912d25d60403a91c81aba3bee53b325dbff8f447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
