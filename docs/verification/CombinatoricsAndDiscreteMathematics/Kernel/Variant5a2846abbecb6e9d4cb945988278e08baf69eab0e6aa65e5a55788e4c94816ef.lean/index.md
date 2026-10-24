# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Kernel.Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e843a4de1406b7e0d9ffd05f3ce2ec5c09a4002",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Kernel/Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Kernel/Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Kernel/Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e843a4de1406b7e0d9ffd05f3ce2ec5c09a4002`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Kernel/Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Kernel/Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.Metric` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteLaw](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Kernel/Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef.lean/declarations/finitelaw--1f9c90212034e0f333e23a2a.md) | 13 | `declaration-track:1f9c90212034e0f333e23a2ad4e8a0888ab2eb258f44a3b8372fe3210e57184c` |
| 2 | `structure` | [MarkovKernel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Kernel/Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef.lean/declarations/markovkernel--011d1fe41fdf1b20eb32e862.md) | 18 | `declaration-track:011d1fe41fdf1b20eb32e86292e5f4cc963c1ae8b51c5e6caaf9223cf742819b` |
| 3 | `def` | [MarkovKernel.push](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Kernel/Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef.lean/declarations/markovkernel-push--31ccf3d1d8bdfbc40bb0b554.md) | 24 | `declaration-track:31ccf3d1d8bdfbc40bb0b5543bf3c597c1ab2e0d03a52499181f987dcca2fef8` |
| 4 | `def` | [LawSupported](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Kernel/Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef.lean/declarations/lawsupported--719b3d19de036ad0dbf9c49e.md) | 54 | `declaration-track:719b3d19de036ad0dbf9c49e2b6605c79285042bf4990f10e9147df180a88b5e` |
| 5 | `def` | [KernelPreservesAdmissibility](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Kernel/Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef.lean/declarations/kernelpreservesadmissibility--d076587cb7920f7ba22baa3c.md) | 60 | `declaration-track:d076587cb7920f7ba22baa3c3cd01f291e0bdbb48661ccf6bf625b7f4f8f6705` |
| 6 | `structure` | [AdmissibilityCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Kernel/Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef.lean/declarations/admissibilitycertificate--fb8e5bfa3a8b70ce857b0a14.md) | 69 | `declaration-track:fb8e5bfa3a8b70ce857b0a14bca02f4388d344c1a113ba5b09b965027980583d` |
| 7 | `structure` | [KernelPerturbation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Kernel/Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef.lean/declarations/kernelperturbation--44d4451e93aed8e3500791b1.md) | 76 | `declaration-track:44d4451e93aed8e3500791b1217ee60bcf779da0b96f27bdd276736ec88edfc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
