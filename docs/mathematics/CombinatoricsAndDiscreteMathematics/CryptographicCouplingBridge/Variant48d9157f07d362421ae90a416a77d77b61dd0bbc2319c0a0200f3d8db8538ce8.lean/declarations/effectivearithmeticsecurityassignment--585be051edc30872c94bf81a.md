# EffectiveArithmeticSecurityAssignment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64d72ef5b0829ed5c7421fa00bcd06049d505638cbe51b681ea64284214b4479",
  "kind": "structure",
  "lexical_name": "EffectiveArithmeticSecurityAssignment",
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
  "slug": "effectivearithmeticsecurityassignment--585be051edc30872c94bf81a",
  "source": {
    "blob": "0c9304e2279eb92ee574386293d5cadc398ecc1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CryptographicCouplingBridge/Variant48d9157f07d362421ae90a416a77d77b61dd0bbc2319c0a0200f3d8db8538ce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:585be051edc30872c94bf81a51a6986568ba5f19696afab0b556cdc4088dede3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CryptographicCouplingBridge/Variant48d9157f07d362421ae90a416a77d77b61dd0bbc2319c0a0200f3d8db8538ce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64d72ef5b0829ed5c7421fa00bcd06049d505638cbe51b681ea64284214b4479`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EffectiveArithmeticSecurityAssignment
    (Geometry : Type u) (Incidence : Type v) (Operator : Type w)
    (Point : Type x) (Domain : Type y)
    (SourceQuery : Type z) (SourceAnswer : Type q)
    (Input : Type r) (Output : Type s) (Coordinate : Type t)
    [Fintype Input] [DecidableEq Input] [DecidableEq SourceAnswer]
    (Kernel : Type*) where
  source :
    EffectiveArithmeticSource
      Geometry Incidence Operator Point Domain SourceQuery SourceAnswer
  inputEncoding : Domain → Input
  coordinateEncoding : SourceQuery → Coordinate
  problem : OracleProblem Input Output Coordinate
  queryInterfaceExact :
    ∀ query left right,
      problem.differsAt
          (coordinateEncoding query)
          (inputEncoding left)
          (inputEncoding right) =
        decide (source.query query left ≠ source.query query right)
  kernelLift : ArithmeticKernelLift problem Kernel
  selectedKernel : Kernel
  witness : ArithmeticAdversaryWitness kernelLift
  witnessUsesSelectedKernel :
    witness.kernel = selectedKernel
  normCertificate : ArithmeticKernelNormCertificate witness
  encodingCost : ResourceCost
  queryCost : ResourceCost
  reductionLoss : ℝ≥0
  hardnessConstant : ℝ
  hardnessConstantPositive : 0 < hardnessConstant
  hardnessCertified :
    hardnessConstant ≤ witness.ratio

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CryptographicCouplingBridge/Variant48d9157f07d362421ae90a416a77d77b61dd0bbc2319c0a0200f3d8db8538ce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CryptographicCouplingBridge/Variant48d9157f07d362421ae90a416a77d77b61dd0bbc2319c0a0200f3d8db8538ce8.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c9304e2279eb92ee574386293d5cadc398ecc1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
