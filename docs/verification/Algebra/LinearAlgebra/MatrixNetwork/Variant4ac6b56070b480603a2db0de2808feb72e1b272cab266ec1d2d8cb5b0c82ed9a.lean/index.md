# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixNetwork.Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23842502f320ce17cecd08e6f6612a781a9ca417",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23842502f320ce17cecd08e6f6612a781a9ca417`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.Network` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Optimized.Matrix` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.ML.Optimized.QuantizedLayer` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rationalToIntMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/declarations/rationaltointmatrix--23ae0b9136d6081a46c4887e.md) | 52 | `declaration-track:23ae0b9136d6081a46c4887e90b2ee478228fb80764aad9a8b91ca2b287beaf1` |
| 2 | `def` | [layerToIntervalMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/declarations/layertointervalmatrix--d69773d2b0ac16754083f36e.md) | 62 | `declaration-track:d69773d2b0ac16754083f36eac368447c4414ddf8267525bab670d0555f98416` |
| 3 | `abbrev` | [InputBatch](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/declarations/inputbatch--1eafe44d95473b9cc2607eaf.md) | 72 | `declaration-track:1eafe44d95473b9cc2607eaf43bead51cd9800b0056eb309ee64bc21bfdb5612` |
| 4 | `abbrev` | [OutputBatch](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/declarations/outputbatch--5c28b940987149536d8104b5.md) | 76 | `declaration-track:5c28b940987149536d8104b5c3d6ffd62a1bc5deef710f617c162713b6047214` |
| 5 | `def` | [batchLinear](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/declarations/batchlinear--e4bec5af1e04046e87a793dc.md) | 81 | `declaration-track:e4bec5af1e04046e87a793dcff623daaa7a9187eee9fe60c11a350d6bed0b19a` |
| 6 | `def` | [attentionScores](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/declarations/attentionscores--12610d89da2bdfe22a8b8f5c.md) | 93 | `declaration-track:12610d89da2bdfe22a8b8f5c17f799e83f0bf0acb5618c629bf0395a33eb75a7` |
| 7 | `structure` | [AttentionParams](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/declarations/attentionparams--05203acff24622a1fc580cc1.md) | 99 | `declaration-track:05203acff24622a1fc580cc1afa75f470d60cd58739232bd90170b1bf4cb966b` |
| 8 | `def` | [projectQKV](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/declarations/projectqkv--a7edc1e8da3afc6c6d6531c5.md) | 112 | `declaration-track:a7edc1e8da3afc6c6d6531c58d37fa56499914df3c97d0b278b3e18dd9035ef3` |
| 9 | `def` | [reluIntMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/declarations/reluintmatrix--5d649224877764409e5df26c.md) | 124 | `declaration-track:5d649224877764409e5df26c7d12932c609dc981d98b4f8e20ec331b1d8a068d` |
| 10 | `def` | [reluIntervalMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/declarations/reluintervalmatrix--30728e0de1f71c14d681049b.md) | 129 | `declaration-track:30728e0de1f71c14d681049b30a25e594825162f7514c7517a3e4be4a7317887` |
| 11 | `def` | [addBiasMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/declarations/addbiasmatrix--d27312f6465e3c9a9f0cccae.md) | 137 | `declaration-track:d27312f6465e3c9a9f0cccae80c933263a5407682cb10d22597112e6df428221` |
| 12 | `def` | [layerForwardBatch](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/declarations/layerforwardbatch--7aa4ec3d3db9aa3de9df5de4.md) | 149 | `declaration-track:7aa4ec3d3db9aa3de9df5de48016df7f6d252f28237d3180cd01c0cf65a6b51c` |
| 13 | `theorem` | [mem_batchLinear](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/declarations/mem-batchlinear--ccabfb21c9a18723057c6197.md) | 161 | `result-track:ccabfb21c9a18723057c61970b2e4bd23563ff1bd220e28b68f76d0ef9c0574e` |
| 14 | `theorem` | [mem_attentionScores](../../../../../mathematics/Algebra/LinearAlgebra/MatrixNetwork/Variant4ac6b56070b480603a2db0de2808feb72e1b272cab266ec1d2d8cb5b0c82ed9a.lean/declarations/mem-attentionscores--32fb50ee4ba8aa8e6ed89491.md) | 173 | `result-track:32fb50ee4ba8aa8e6ed89491a324fb1825b0ae57fb396f02477956d0fdc9ca8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
