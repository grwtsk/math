# bumpMoment_zero_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d79631a-77dc-6735-46a5-e757331f33d0",
  "kind": "theorem",
  "lexical_name": "bumpMoment_zero_re",
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
  "slug": "bumpmoment-zero-re--aa486f97e0e411788e55e9a6",
  "source": {
    "blob": "638b9380764a82574535d43848b1e957ac359e64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 327,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa486f97e0e411788e55e9a66b05824f57d75b46aeb725d3c6a882b3ca02e33c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d79631a-77dc-6735-46a5-e757331f33d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpMoment_zero_re (z : ℂ) (hz : bumpMoment 0 z = 0) : z.re = 0 :=
  re_eq_zero_of_weighted_energy z (radialMass z) (radialEnergy z)
    (radialMass_pos z) (radialEnergy_nonneg z) (radial_energy_identity z hz)

end
end SourceBumpGlobalScratch

/-! Horizontal source-bump modulus monotonicity from the full radial boundary energy. -/
set_option autoImplicit false
namespace SourceBumpHorizontalScratch
open MeasureTheory Set
open SourceBumpMomentsScratch SourceBumpGlobalScratch
noncomputable section

/-- Retaining the boundary term gives the radial energy identity for every complex parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontal/Variant0629b6fd94bca965554ac9bc3d72249b6d7db0c8c749f6f818130ef0ccc1067c.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `638b9380764a82574535d43848b1e957ac359e64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
