# ErgodicSMul.trans_isMinimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78b0da51-1f3b-0fc7-7234-ff9dcb2d79ab",
  "kind": "theorem",
  "lexical_name": "ErgodicSMul.trans_isMinimal",
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
  "slug": "ergodicsmul-trans-isminimal--07f74e8fe0281444f846d61e",
  "source": {
    "blob": "8dc0b06a264037b5155248735c8fdc0ef16baaec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 120,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantbe9798c886c38e35dd820dc40c358f2c91e1cab38563839edfb089caf0f1409e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07f74e8fe0281444f846d61e95316ed0bd804edf1c8dc0f1f652f5d360fb7329",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantbe9798c886c38e35dd820dc40c358f2c91e1cab38563839edfb089caf0f1409e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78b0da51-1f3b-0fc7-7234-ff9dcb2d79ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ErgodicSMul.trans_isMinimal (N : Type*) [MulAction M N]
    [Monoid N] [TopologicalSpace N] [MulAction.IsMinimal M N]
    [MulAction N X] [IsScalarTower M N X] [ContinuousSMul N X] [ErgodicSMul N X μ] :
    ErgodicSMul M X μ where
  measure_preimage_smul c s hsm := by
    simpa only [smul_one_smul] using SMulInvariantMeasure.measure_preimage_smul (c • 1 : N) hsm
  aeconst_of_forall_preimage_smul_ae_eq {s} hsm hs := by
    refine aeconst_of_dense_setOfPred_preimage_smul_ae (M := N) hsm.nullMeasurableSet ?_
    refine (MulAction.dense_orbit M 1).mono ?_
    rintro _ ⟨g, rfl⟩
    simpa using hs g

end IsScalarTower

section MulActionGroup

variable {G : Type*} [Group G] [TopologicalSpace G] [ContinuousInv G]
  {X : Type*} [TopologicalSpace X] [R1Space X] [MeasurableSpace X] [BorelSpace X]
  [MulAction G X] [ContinuousSMul G X]
  {μ : Measure X} [IsFiniteMeasure μ] [μ.InnerRegular] [ErgodicSMul G X μ] {s : Set X}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantbe9798c886c38e35dd820dc40c358f2c91e1cab38563839edfb089caf0f1409e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantbe9798c886c38e35dd820dc40c358f2c91e1cab38563839edfb089caf0f1409e.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dc0b06a264037b5155248735c8fdc0ef16baaec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
