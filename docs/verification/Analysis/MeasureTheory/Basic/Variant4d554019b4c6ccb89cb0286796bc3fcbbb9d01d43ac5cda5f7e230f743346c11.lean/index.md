# Verification target: GRWTSK.Analysis.MeasureTheory.Basic.Variant4d554019b4c6ccb89cb0286796bc3fcbbb9d01d43ac5cda5f7e230f743346c11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d20195a8cc7ace29711ac7d7aff69fb0d5cc696",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant4d554019b4c6ccb89cb0286796bc3fcbbb9d01d43ac5cda5f7e230f743346c11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4d554019b4c6ccb89cb0286796bc3fcbbb9d01d43ac5cda5f7e230f743346c11.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4d554019b4c6ccb89cb0286796bc3fcbbb9d01d43ac5cda5f7e230f743346c11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d20195a8cc7ace29711ac7d7aff69fb0d5cc696`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variant4d554019b4c6ccb89cb0286796bc3fcbbb9d01d43ac5cda5f7e230f743346c11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variant4d554019b4c6ccb89cb0286796bc3fcbbb9d01d43ac5cda5f7e230f743346c11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.AEStabilizer` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.Ergodic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ErgodicVAdd](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4d554019b4c6ccb89cb0286796bc3fcbbb9d01d43ac5cda5f7e230f743346c11.lean/declarations/ergodicvadd--546ac0c3637f04f2bbfb3095.md) | 35 | `declaration-track:546ac0c3637f04f2bbfb3095ed24321a4548db0b9c018bd836088e43551ed63e` |
| 2 | `class` | [ErgodicSMul](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4d554019b4c6ccb89cb0286796bc3fcbbb9d01d43ac5cda5f7e230f743346c11.lean/declarations/ergodicsmul--4f9edc6baff16feb5820e766.md) | 47 | `declaration-track:4f9edc6baff16feb5820e7663b885263f95d01bf39c7fb29ca4160b5696fd763` |
| 3 | `theorem` | [aeconst_of_forall_preimage_smul_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4d554019b4c6ccb89cb0286796bc3fcbbb9d01d43ac5cda5f7e230f743346c11.lean/declarations/aeconst-of-forall-preimage-smul-ae-eq--38ac72b8280b725e0bf5bb17.md) | 59 | `result-track:38ac72b8280b725e0bf5bb171894043491d0f6e133dd669a44f9e361a6c2b291` |
| 4 | `theorem` | [aeconst_of_forall_smul_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4d554019b4c6ccb89cb0286796bc3fcbbb9d01d43ac5cda5f7e230f743346c11.lean/declarations/aeconst-of-forall-smul-ae-eq--bb4ebef6f428430fc0451621.md) | 73 | `result-track:bb4ebef6f428430fc04516216c66b87ad409280b78dd3972cc9a61998a863895` |
| 5 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.ErgodicVAdd.Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.MulAction.aeconst_of_aestabilizer_eq_top](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4d554019b4c6ccb89cb0286796bc3fcbbb9d01d43ac5cda5f7e230f743346c11.lean/declarations/root-grwtsk-analysis-measuretheory-ergodicvadd-variantf4bc6e3f106be63339--b8dfd42d16daafb0e3ace27a.md) | 79 | `result-track:b8dfd42d16daafb0e3ace27ad4670a2da8da82fd3f9896bbc5fead1829cf8874` |
| 6 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.ErgodicVAdd.Variantf4bc6e3f106be63339ed3cebf6ddf44707e5295b505c534ff9c4ca61eee29492.ErgodicSMul.of_aestabilizer](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4d554019b4c6ccb89cb0286796bc3fcbbb9d01d43ac5cda5f7e230f743346c11.lean/declarations/root-grwtsk-analysis-measuretheory-ergodicvadd-variantf4bc6e3f106be63339--f1de3f72b8bdee3482133b6f.md) | 85 | `result-track:f1de3f72b8bdee3482133b6f8dfc76ad7dd388c899c8688ff41e552291115300` |
| 7 | `theorem` | [ergodicSMul_iterateMulAct](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4d554019b4c6ccb89cb0286796bc3fcbbb9d01d43ac5cda5f7e230f743346c11.lean/declarations/ergodicsmul-iteratemulact--d5f507a42541c476795077c6.md) | 91 | `result-track:d5f507a42541c476795077c6195c72ad33b60cb8f3b240c1c50c963d60569dcb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
