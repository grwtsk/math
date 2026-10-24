# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RealDeriv.Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36ab5525d676165c6bd9ca5ef59df9924159da14",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36ab5525d676165c6bd9ca5ef59df9924159da14`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Linear` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasStrictDerivAt.real_of_complex](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean/declarations/hasstrictderivat-real-of-complex--fb08e7c2bb02f59f424dfb3b.md) | 29 | `result-track:fb08e7c2bb02f59f424dfb3b4134129059a968e562902ee795476d189d25d694` |
| 2 | `theorem` | [HasDerivAt.real_of_complex](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean/declarations/hasderivat-real-of-complex--0693622fb08b2093852e02da.md) | 42 | `result-track:0693622fb08b2093852e02dad0a18b12f8fa6205e2d9b9c403f3025de8728850` |
| 3 | `theorem` | [ContDiffAt.real_of_complex](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean/declarations/contdiffat-real-of-complex--e8706049e3b9717d7c62e55c.md) | 52 | `result-track:e8706049e3b9717d7c62e55c62f8646616a54487d40be35615d17e7ac92532fd` |
| 4 | `theorem` | [ContDiff.real_of_complex](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean/declarations/contdiff-real-of-complex--fd6151815624a280c0a8b0b7.md) | 59 | `result-track:fd6151815624a280c0a8b0b7e461428db0aae05c5d0f9784bc0bffeecd6d6050` |
| 5 | `theorem` | [HasStrictDerivAt.complexToReal_fderiv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean/declarations/hasstrictderivat-complextoreal-fderiv--8f3f1fa1a67ea710a9835583.md) | 65 | `result-track:8f3f1fa1a67ea710a983558350cd226e74a84d5cea72d1e16498fd0b9c875b59` |
| 6 | `theorem` | [HasDerivAt.complexToReal_fderiv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean/declarations/hasderivat-complextoreal-fderiv--32449e190b12749cef93b1b7.md) | 71 | `result-track:32449e190b12749cef93b1b779808e99588b3aec14a673e1455a59505edaad36` |
| 7 | `theorem` | [HasDerivWithinAt.complexToReal_fderiv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean/declarations/hasderivwithinat-complextoreal-fderiv--ca8778124ba6a1d5fa0a0aee.md) | 75 | `result-track:ca8778124ba6a1d5fa0a0aeea35029614fd41373d4f698bfaa9afe24de759f39` |
| 8 | `theorem` | [HasStrictDerivAt.complexToReal_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean/declarations/hasstrictderivat-complextoreal-fderiv--827bd5c74cd9a8b1c91aa93a.md) | 81 | `result-track:827bd5c74cd9a8b1c91aa93a9dfed924938ecc6a911bbf9a65d347c1f53a1abb` |
| 9 | `theorem` | [HasDerivAt.complexToReal_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean/declarations/hasderivat-complextoreal-fderiv--b1b25672924970137f971f5d.md) | 85 | `result-track:b1b25672924970137f971f5d10a51baaec1ede6a185f54af068292299b1afa4a` |
| 10 | `theorem` | [HasDerivWithinAt.complexToReal_fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean/declarations/hasderivwithinat-complextoreal-fderiv--8f92497bb46b6dc6328cffb0.md) | 89 | `result-track:8f92497bb46b6dc6328cffb01b47640f3ab015064d9c1f43aaa33b479234781c` |
| 11 | `theorem` | [HasDerivAt.comp_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean/declarations/hasderivat-comp-ofreal--9d2023f6ade8455560027ee3.md) | 95 | `result-track:9d2023f6ade8455560027ee34d448e7be015bb36b606ad6d3c462ffb205b95c2` |
| 12 | `theorem` | [HasDerivAt.ofReal_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RealDeriv/Varianteadbb5862732e6127ade72c6b720e5bca0d40a326c68add400ea7310517f8b05.lean/declarations/hasderivat-ofreal-comp--b4eb8b0033c56dcbc240dd2b.md) | 100 | `result-track:b4eb8b0033c56dcbc240dd2b872da48f0f7741e5f8685a7b6ae11ac16786c7b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
