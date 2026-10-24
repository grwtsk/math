# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA.Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4c2eedfafc495c872420077e3fb844443f59dac",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4c2eedfafc495c872420077e3fb844443f59dac`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realMoebius](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean/declarations/realmoebius--d80fcd27168d671dc748b666.md) | 36 | `declaration-track:d80fcd27168d671dc748b66618139f34d89779f7d453a4ef0d7c25dc7a42b288` |
| 2 | `theorem` | [realMoebius_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean/declarations/realmoebius-zero--01c8dd7146f3b701a0ded402.md) | 40 | `result-track:01c8dd7146f3b701a0ded4020dce42a1d5bbd98f8ac771a8f0e23f464bbfea19` |
| 3 | `def` | [mertens](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean/declarations/mertens--8f7fa6d6dd845bda13096964.md) | 45 | `declaration-track:8f7fa6d6dd845bda13096964a7e586204c6a42af2db7f757e615dfdfcb081f95` |
| 4 | `def` | [mertensNat](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean/declarations/mertensnat--ab31b87a2d24dbc5e33c151f.md) | 49 | `declaration-track:ab31b87a2d24dbc5e33c151f4b388d369db4e0783c00cec9d05567e3de8dbc71` |
| 5 | `theorem` | [mertens_natCast](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean/declarations/mertens-natcast--4868914fb84c2d9c87cb6919.md) | 53 | `result-track:4868914fb84c2d9c87cb6919405d3e4170b9bb9996c6de47ebfb6ca807fca9c8` |
| 6 | `theorem` | [mobius_abel](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean/declarations/mobius-abel--b869efe405a89603afaf6a02.md) | 58 | `result-track:b869efe405a89603afaf6a024a7c0ab478238cfefc505cc56d3d8b3d43814539` |
| 7 | `theorem` | [mobius_abel_commuted](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean/declarations/mobius-abel-commuted--d547959a97b18afb8c261207.md) | 76 | `result-track:d547959a97b18afb8c261207f1cfbe8b3c4e5bf147d64bf75d972cedf6373a68` |
| 8 | `def` | [sourceLower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean/declarations/sourcelower--7f91e54d16eae0bd8b8648e8.md) | 107 | `declaration-track:7f91e54d16eae0bd8b8648e8b849223b48b0f033fc872827117be327a8faf745` |
| 9 | `def` | [sourceUpper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean/declarations/sourceupper--c6d4e310497a8c786686e3ab.md) | 109 | `declaration-track:c6d4e310497a8c786686e3ab1d20da80827af3c9cc5994c81b56572e3dde854d` |
| 10 | `def` | [mertensKernelIntegral](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean/declarations/mertenskernelintegral--b9d112f039ffcc0585529318.md) | 112 | `declaration-track:b9d112f039ffcc0585529318cb3798dd8260293ec5227b94c6339b2414bf4852` |
| 11 | `theorem` | [source_window_abel](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean/declarations/source-window-abel--7f4446ad2bf8a3a4320379e0.md) | 117 | `result-track:7f4446ad2bf8a3a4320379e0f8a94340f3bea027b022bcbe3f345a24ee984e57` |
| 12 | `theorem` | [source_window_abel_of_upper_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean/declarations/source-window-abel-of-upper-zero--13488f7362c4a700fb7abfa7.md) | 158 | `result-track:13488f7362c4a700fb7abfa7dfa5bad2c538b415f9787c331be9b7c5f5375029` |
| 13 | `def` | [SourceMobiusKernelContract](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean/declarations/sourcemobiuskernelcontract--fcff299b23dabfffa22915b0.md) | 180 | `declaration-track:fcff299b23dabfffa22915b079ddfbede81c48b987540af0e71b696750db1017` |
| 14 | `theorem` | [abel_identity_of_source_kernel_contract](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean/declarations/abel-identity-of-source-kernel-contract--7d26b423fabddc233617c4c8.md) | 197 | `result-track:7d26b423fabddc233617c4c88ab411a804b7f53fdce93d2ff8674e9348bed878` |
| 15 | `def` | [MertensAbelCheckpoint](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean/declarations/mertensabelcheckpoint--953638138815ff271d7dc198.md) | 211 | `declaration-track:953638138815ff271d7dc198e8818c4f434194a3f1f7994bd34f9eb179397982` |
| 16 | `theorem` | [mertens_abel_checkpoint](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970EstimateMertensA/Variant8aae6fcd877f406712cc2d452718e0f9129578c00ce724bda48e8536b537f970.lean/declarations/mertens-abel-checkpoint--68289e70b4518ff94a5a8d11.md) | 221 | `result-track:68289e70b4518ff94a5a8d1169c989d3dade60ca215ba270fc4dddf6f8e19efb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
