# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Kernel.Variantba6c014fa5f8ce92ed8bb832b609eb88e37aa2e815130594f10c0c66da2636f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a773c0642df199fdfce0b2fa7369033888df61ad",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Kernel/Variantba6c014fa5f8ce92ed8bb832b609eb88e37aa2e815130594f10c0c66da2636f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Kernel/Variantba6c014fa5f8ce92ed8bb832b609eb88e37aa2e815130594f10c0c66da2636f0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Kernel/Variantba6c014fa5f8ce92ed8bb832b609eb88e37aa2e815130594f10c0c66da2636f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a773c0642df199fdfce0b2fa7369033888df61ad`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Kernel/Variantba6c014fa5f8ce92ed8bb832b609eb88e37aa2e815130594f10c0c66da2636f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Kernel/Variantba6c014fa5f8ce92ed8bb832b609eb88e37aa2e815130594f10c0c66da2636f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.Metric` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteLaw](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Kernel/Variantba6c014fa5f8ce92ed8bb832b609eb88e37aa2e815130594f10c0c66da2636f0.lean/declarations/finitelaw--a92981bcfaa220a8c91c1926.md) | 21 | `declaration-track:a92981bcfaa220a8c91c1926584a6e2def6b2d1e7566b3f9277911415c3648d3` |
| 2 | `structure` | [MarkovKernel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Kernel/Variantba6c014fa5f8ce92ed8bb832b609eb88e37aa2e815130594f10c0c66da2636f0.lean/declarations/markovkernel--e566538af1a7a602fc162e91.md) | 26 | `declaration-track:e566538af1a7a602fc162e915028f953d7b7041a76fa8a94cb4afcd3aea92271` |
| 3 | `def` | [MarkovKernel.push](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Kernel/Variantba6c014fa5f8ce92ed8bb832b609eb88e37aa2e815130594f10c0c66da2636f0.lean/declarations/markovkernel-push--880f9052749e73f1b6310c61.md) | 32 | `declaration-track:880f9052749e73f1b6310c6177eb5a3f5be3c7d1d1357cf68d56ff827dfcb5ba` |
| 4 | `def` | [LawSupported](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Kernel/Variantba6c014fa5f8ce92ed8bb832b609eb88e37aa2e815130594f10c0c66da2636f0.lean/declarations/lawsupported--44693b8b5e1677485df811b1.md) | 62 | `declaration-track:44693b8b5e1677485df811b1b27079a3e376aeb757bf10e17fd86a8d379122b9` |
| 5 | `def` | [KernelPreservesAdmissibility](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Kernel/Variantba6c014fa5f8ce92ed8bb832b609eb88e37aa2e815130594f10c0c66da2636f0.lean/declarations/kernelpreservesadmissibility--bbd740714c2201f20c759a3c.md) | 68 | `declaration-track:bbd740714c2201f20c759a3c5383fe88efdf2e632729f2f3df96c4ec6f081759` |
| 6 | `structure` | [AdmissibilityCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Kernel/Variantba6c014fa5f8ce92ed8bb832b609eb88e37aa2e815130594f10c0c66da2636f0.lean/declarations/admissibilitycertificate--28aee9d331c94bd4dc465544.md) | 77 | `declaration-track:28aee9d331c94bd4dc465544087f82036d59537e704fc8e8205e42416c09b242` |
| 7 | `structure` | [KernelPerturbation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Kernel/Variantba6c014fa5f8ce92ed8bb832b609eb88e37aa2e815130594f10c0c66da2636f0.lean/declarations/kernelperturbation--5415b5cab4125e821d0bdc37.md) | 84 | `declaration-track:5415b5cab4125e821d0bdc37686f595e275d1ad3cc9db52c497cf7c0d7843f9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
