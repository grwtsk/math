# ClassicalTwoPhaseAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a8aea9e41f38171f7c441dbdf73804126eca80720cb3cd5fd201e5489101e57",
  "kind": "structure",
  "lexical_name": "ClassicalTwoPhaseAt",
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
  "slug": "classicaltwophaseat--b2d7cc224528b68c7dcf7c28",
  "source": {
    "blob": "6434737a8a97063a26e42ce04f484355b4ef3a7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 221,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InterfaceState/Variant58de82a09edac629d089f9b849d55e812ae8787dff302aac6d5068cd73925a8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2d7cc224528b68c7dcf7c281e6546a1a477d297146d2341e5127c187f63efdc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InterfaceState/Variant58de82a09edac629d089f9b849d55e812ae8787dff302aac6d5068cd73925a8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a8aea9e41f38171f7c441dbdf73804126eca80720cb3cd5fd201e5489101e57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ClassicalTwoPhaseAt (fields : TwoPhaseFields) (time : ℝ) : Prop where
  /-- Physical negative-phase density is positive. -/
  densityMinusPositive : 0 < fields.densityMinus
  /-- Physical positive-phase density is positive. -/
  densityPlusPositive : 0 < fields.densityPlus
  /-- Surface tension is a nonnegative constant. -/
  tensionNonnegative : 0 ≤ fields.tension
  /-- The interface is regular with the declared boundary identities. -/
  interfaceRegular : RegularInterfaceAt fields.level time
  /-- Negative-phase derivatives exist wherever its bulk equation is required. -/
  minusRegular : ∀ x ∈ minusRegion (fields.level time),
    BulkRegularAt fields.velocityMinus fields.pressureMinus time x
  /-- Positive-phase derivatives exist wherever its bulk equation is required. -/
  plusRegular : ∀ x ∈ plusRegion (fields.level time),
    BulkRegularAt fields.velocityPlus fields.pressurePlus time x
  /-- The negative velocity trace is its one-sided limit from the negative phase. -/
  minusVelocityTrace : ∀ x ∈ interfaceSet (fields.level time),
    ContinuousWithinAt (fields.velocityMinus time) (minusRegion (fields.level time)) x
  /-- The positive velocity trace is its one-sided limit from the positive phase. -/
  plusVelocityTrace : ∀ x ∈ interfaceSet (fields.level time),
    ContinuousWithinAt (fields.velocityPlus time) (plusRegion (fields.level time)) x
  /-- The negative pressure trace is its one-sided limit from the negative phase. -/
  minusPressureTrace : ∀ x ∈ interfaceSet (fields.level time),
    ContinuousWithinAt (fields.pressureMinus time) (minusRegion (fields.level time)) x
  /-- The positive pressure trace is its one-sided limit from the positive phase. -/
  plusPressureTrace : ∀ x ∈ interfaceSet (fields.level time),
    ContinuousWithinAt (fields.pressurePlus time) (plusRegion (fields.level time)) x
  /-- Euler momentum balance in the negative phase. -/
  minusMomentum : ∀ x ∈ minusRegion (fields.level time),
    momentumResidual fields.densityMinus fields.velocityMinus fields.pressureMinus time x = 0
  /-- Euler momentum balance in the positive phase. -/
  plusMomentum : ∀ x ∈ plusRegion (fields.level time),
    momentumResidual fields.densityPlus fields.velocityPlus fields.pressurePlus time x = 0
  /-- Negative-phase incompressibility. -/
  minusIncompressible : ∀ x ∈ minusRegion (fields.level time),
    divergence (fields.velocityMinus time) x = 0
  /-- Positive-phase incompressibility. -/
  plusIncompressible : ∀ x ∈ plusRegion (fields.level time),
    divergence (fields.velocityPlus time) x = 0
  /-- The negative-phase interface trace transports the interface. -/
  minusKinematic : ∀ x ∈ interfaceSet (fields.level time),
    kinematicResidual fields.level fields.velocityMinus time x = 0
  /-- The positive-phase interface trace transports the interface. -/
  plusKinematic : ∀ x ∈ interfaceSet (fields.level time),
    kinematicResidual fields.level fields.velocityPlus time x = 0
  /-- The actual curvature supplies the constant-tension pressure jump. -/
  pressureJump : ∀ x ∈ interfaceSet (fields.level time),
    pressureJumpResidual fields.tension (fields.level time)
      (fields.pressureMinus time) (fields.pressurePlus time) x = 0

/-- The same exact continuum laws hold at every time in the supplied time domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InterfaceState/Variant58de82a09edac629d089f9b849d55e812ae8787dff302aac6d5068cd73925a8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InterfaceState/Variant58de82a09edac629d089f9b849d55e812ae8787dff302aac6d5068cd73925a8a.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6434737a8a97063a26e42ce04f484355b4ef3a7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
