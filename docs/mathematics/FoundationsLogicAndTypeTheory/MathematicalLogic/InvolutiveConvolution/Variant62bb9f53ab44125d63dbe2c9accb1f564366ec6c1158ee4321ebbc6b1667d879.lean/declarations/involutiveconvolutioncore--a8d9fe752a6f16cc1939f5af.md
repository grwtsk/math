# InvolutiveConvolutionCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a626bb1f4d792db94a0c8df02e25969ed0074917063711d2cc5ee3c63626d94",
  "kind": "structure",
  "lexical_name": "InvolutiveConvolutionCore",
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
  "slug": "involutiveconvolutioncore--a8d9fe752a6f16cc1939f5af",
  "source": {
    "blob": "733af8de059603eaffb4516e6a9d7f07a148811a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveConvolution/Variant62bb9f53ab44125d63dbe2c9accb1f564366ec6c1158ee4321ebbc6b1667d879.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8d9fe752a6f16cc1939f5aff77a9e93eb1b0f5c957864a2634b62066be0eca5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveConvolution/Variant62bb9f53ab44125d63dbe2c9accb1f564366ec6c1158ee4321ebbc6b1667d879.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a626bb1f4d792db94a0c8df02e25969ed0074917063711d2cc5ee3c63626d94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InvolutiveConvolutionCore where
  cycle : DirectedCycleQuantum X
  kernel : CycleKernel cycle.period ℝ
  operator : (X → ℝ) →ₗ[ℝ] (X → ℝ)
  convolution_spec :
    ∀ f, operator f = cycleConvolution cycle kernel f
  involutive : operator.comp operator = LinearMap.id

/-- Optional metric data for a self-adjoint isometric involutive core. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveConvolution/Variant62bb9f53ab44125d63dbe2c9accb1f564366ec6c1158ee4321ebbc6b1667d879.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveConvolution/Variant62bb9f53ab44125d63dbe2c9accb1f564366ec6c1158ee4321ebbc6b1667d879.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `733af8de059603eaffb4516e6a9d7f07a148811a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
