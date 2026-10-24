# ThreePhaseCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e941787948aa8489cc97b4e2b67f7cc97826e0e20adb53e9df23c6ad13aa1712",
  "kind": "structure",
  "lexical_name": "ThreePhaseCore",
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
  "slug": "threephasecore--9e8c186d5fc091952b51afa6",
  "source": {
    "blob": "76411e0158fae5cb706e866a96e9fcbce197a661",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 52,
    "path": "GRWTSK/Algebra/LinearAlgebra/FourPhaseConvolution/Variant22389525b6a6d06355bf5c8654a400471828d39abea45284bd13ccebb7cb68e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e8c186d5fc091952b51afa62e555c26a71709301d5307c12dbb053657138384",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FourPhaseConvolution/Variant22389525b6a6d06355bf5c8654a400471828d39abea45284bd13ccebb7cb68e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e941787948aa8489cc97b4e2b67f7cc97826e0e20adb53e9df23c6ad13aa1712`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ThreePhaseCore (P : Type u) (U : Type v) (X : Type w)
    [AddCommGroup P] [Module ℝ P]
    [AddCommGroup U] [Module ℝ U]
    [AddCommGroup X] [Module ℝ X] where
  /-- Phase I: ambient positive/dispersion geometry interface. -/
  phaseI : PositiveForm (P × U)
  /-- Phase II: canonical solver-independent provenance residual. -/
  phaseII : PhaseIIResidualQuotient phaseI
  /-- Phase III: involutive positive geometry on the Phase-II residual. -/
  phaseIII : PositiveCommutingInvolutions phaseII.geometry
  /-- Phase III intervention/ablation family. -/
  intervention : LinearIntervention X U

namespace ThreePhaseCore

variable (C : ThreePhaseCore P U X)

/-- Phase-I ambient quadratic energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FourPhaseConvolution/Variant22389525b6a6d06355bf5c8654a400471828d39abea45284bd13ccebb7cb68e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FourPhaseConvolution/Variant22389525b6a6d06355bf5c8654a400471828d39abea45284bd13ccebb7cb68e7.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76411e0158fae5cb706e866a96e9fcbce197a661` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
