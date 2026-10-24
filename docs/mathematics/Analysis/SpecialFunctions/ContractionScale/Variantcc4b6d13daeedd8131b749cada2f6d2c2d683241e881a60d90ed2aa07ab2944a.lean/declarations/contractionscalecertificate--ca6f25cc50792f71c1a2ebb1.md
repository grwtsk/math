# ContractionScaleCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8eaf01e25fab40c16c74f52f885a7b2a65fc5c78af7d0aa03fc0e15373e686d9",
  "kind": "structure",
  "lexical_name": "ContractionScaleCertificate",
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
  "slug": "contractionscalecertificate--ca6f25cc50792f71c1a2ebb1",
  "source": {
    "blob": "8e2cc081d1c089ab85fab6bba2626aea1b00601f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 28,
    "path": "GRWTSK/Analysis/SpecialFunctions/ContractionScale/Variantcc4b6d13daeedd8131b749cada2f6d2c2d683241e881a60d90ed2aa07ab2944a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca6f25cc50792f71c1a2ebb146826668eba4078a06a5cd8d43b0f25009c942c4",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/ContractionScale/Variantcc4b6d13daeedd8131b749cada2f6d2c2d683241e881a60d90ed2aa07ab2944a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8eaf01e25fab40c16c74f52f885a7b2a65fc5c78af7d0aa03fc0e15373e686d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ContractionScaleCertificate
    (Index : Type*) where
  contraction : ℝ≥0
  contraction_pos : 0 < contraction
  contraction_lt_one : contraction < 1
  branchingBase : ℝ
  branchingBase_gt_one : 1 < branchingBase
  depth : Index → ℕ
  arithmeticMass : Index → ℝ
  massPositive :
    ∀ index,
      0 < arithmeticMass index
  massFromDepth :
    ∀ index,
      arithmeticMass index =
        branchingBase ^ depth index
  ratioAtLeastHalf :
    (1 / 2 : ℝ) ≤
      ContractionScaleRatio
        contraction branchingBase
  squareRootDecay :
    ∀ index,
      (contraction : ℝ) ^ depth index ≤
        1 / Real.sqrt (arithmeticMass index)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/ContractionScale/Variantcc4b6d13daeedd8131b749cada2f6d2c2d683241e881a60d90ed2aa07ab2944a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/ContractionScale/Variantcc4b6d13daeedd8131b749cada2f6d2c2d683241e881a60d90ed2aa07ab2944a.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e2cc081d1c089ab85fab6bba2626aea1b00601f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
