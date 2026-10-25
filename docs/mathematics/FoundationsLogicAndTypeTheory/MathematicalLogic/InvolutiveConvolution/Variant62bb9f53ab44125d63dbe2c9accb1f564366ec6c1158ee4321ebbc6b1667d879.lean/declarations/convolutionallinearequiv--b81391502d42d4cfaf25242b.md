# ConvolutionalLinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce3397953803c0b4b7dcdb3b3367101eef523632f1a658cb5524e7b7638f6c27",
  "kind": "structure",
  "lexical_name": "ConvolutionalLinearEquiv",
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
  "slug": "convolutionallinearequiv--b81391502d42d4cfaf25242b",
  "source": {
    "blob": "733af8de059603eaffb4516e6a9d7f07a148811a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveConvolution/Variant62bb9f53ab44125d63dbe2c9accb1f564366ec6c1158ee4321ebbc6b1667d879.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b81391502d42d4cfaf25242bb9bcb8c4f83f74a1ff0bf717eff62b2603869918",
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

Occurrence: `declaration:ce3397953803c0b4b7dcdb3b3367101eef523632f1a658cb5524e7b7638f6c27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ConvolutionalLinearEquiv where
  forwardCycle : DirectedCycleQuantum X
  forwardKernel : CycleKernel forwardCycle.period ℝ
  inverseCycle : DirectedCycleQuantum X
  inverseKernel : CycleKernel inverseCycle.period ℝ
  equiv : (X → ℝ) ≃ₗ[ℝ] (X → ℝ)
  forward_spec :
    ∀ f, equiv f = cycleConvolution forwardCycle forwardKernel f
  inverse_spec :
    ∀ f, equiv.symm f = cycleConvolution inverseCycle inverseKernel f

namespace ConvolutionalLinearEquiv

variable {X : Type u} [Fintype X] [DecidableEq X]

/-- Explicitly ordered conjugation `A⁻¹ ∘ C ∘ A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveConvolution/Variant62bb9f53ab44125d63dbe2c9accb1f564366ec6c1158ee4321ebbc6b1667d879.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveConvolution/Variant62bb9f53ab44125d63dbe2c9accb1f564366ec6c1158ee4321ebbc6b1667d879.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `733af8de059603eaffb4516e6a9d7f07a148811a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
