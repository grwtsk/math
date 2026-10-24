# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Norm.Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "245dd64264fac215535d76ca5674d257dc71bad5",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `245dd64264fac215535d76ca5674d257dc71bad5`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Abs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LineDeriv.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_differentiableAt_norm_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean/declarations/not-differentiableat-norm-zero--8063c0065ddf83685b1abac3.md) | 52 | `result-track:8063c0065ddf83685b1abac3c5d478e18a6a78729082971ed8fd1bb4093687b2` |
| 2 | `theorem` | [ContDiffAt.contDiffAt_norm_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean/declarations/contdiffat-contdiffat-norm-smul--9eebd723ea26586093639430.md) | 64 | `result-track:9eebd723ea26586093639430a67311bc799582f46c4ab4bf012b7e3dd626507f` |
| 3 | `theorem` | [contDiffAt_norm_smul_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean/declarations/contdiffat-norm-smul-iff--e51b83e41d4225381eea72cb.md) | 74 | `result-track:e51b83e41d4225381eea72cb8733b4843c9a8dfc69364f8d5086fe8801ccfacc` |
| 4 | `theorem` | [ContDiffAt.contDiffAt_norm_of_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean/declarations/contdiffat-contdiffat-norm-of-smul--9905816e34db1bf9e1cab06d.md) | 81 | `result-track:9905816e34db1bf9e1cab06daad4b4b127d8f6e78f1c878d7525780ac84bf930` |
| 5 | `theorem` | [HasStrictFDerivAt.hasStrictFDerivAt_norm_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean/declarations/hasstrictfderivat-hasstrictfderivat-norm-smul--bdc8cbb0691fa14b74b953a6.md) | 97 | `result-track:bdc8cbb0691fa14b74b953a6495b63730bfc48e15c59436ed46317afbadb40b4` |
| 6 | `theorem` | [HasStrictFDerivAt.hasStrictDerivAt_norm_smul_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean/declarations/hasstrictfderivat-hasstrictderivat-norm-smul-neg--d79d62e16ccd82aea7ab1aa8.md) | 111 | `result-track:d79d62e16ccd82aea7ab1aa8eef31db4eea4b43b14ff1cf174f8545080ce4174` |
| 7 | `theorem` | [HasStrictFDerivAt.hasStrictDerivAt_norm_smul_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean/declarations/hasstrictfderivat-hasstrictderivat-norm-smul-pos--db6b995e72b36d55850065a2.md) | 116 | `result-track:db6b995e72b36d55850065a256bed9dfcde2c3049f702b1305619c46327db035` |
| 8 | `theorem` | [HasFDerivAt.hasFDerivAt_norm_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean/declarations/hasfderivat-hasfderivat-norm-smul--639bd4745859797b2f47ed1d.md) | 121 | `result-track:639bd4745859797b2f47ed1daad7935c2cfb097ed384eba6552a36c43f47ed6d` |
| 9 | `theorem` | [HasFDerivAt.hasFDerivAt_norm_smul_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean/declarations/hasfderivat-hasfderivat-norm-smul-neg--4c556d79c73302745f979e9e.md) | 136 | `result-track:4c556d79c73302745f979e9e06587d8655d393a2c8e570cc3938eb6c82fee56b` |
| 10 | `theorem` | [HasFDerivAt.hasFDerivAt_norm_smul_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean/declarations/hasfderivat-hasfderivat-norm-smul-pos--7ee6319689158a724e32c564.md) | 141 | `result-track:7ee6319689158a724e32c5647ead5e9f092bb018285af921fd9d31e7779a9c41` |
| 11 | `theorem` | [differentiableAt_norm_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean/declarations/differentiableat-norm-smul--fefd3bcd49956a9d59530314.md) | 146 | `result-track:fefd3bcd49956a9d59530314f07c08c2d3034f5076da6ec12cff1c17cb5f3f41` |
| 12 | `theorem` | [DifferentiableAt.differentiableAt_norm_of_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean/declarations/differentiableat-differentiableat-norm-of-smul--83a69907e3dad42413a056a2.md) | 153 | `result-track:83a69907e3dad42413a056a25dc8028f0a5ddb632856def615d0e980731b9069` |
| 13 | `theorem` | [DifferentiableAt.fderiv_norm_self](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean/declarations/differentiableat-fderiv-norm-self--822d880d6641f6895955b1a8.md) | 163 | `result-track:822d880d6641f6895955b1a844ab89746d6d8341c1a8d357250a3ebcc0dca73f` |
| 14 | `theorem` | [fderiv_norm_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean/declarations/fderiv-norm-smul--e89f50536c6ea1e2a101f94d.md) | 178 | `result-track:e89f50536c6ea1e2a101f94dc7ca8cf55801cbeff22b550c35b5c7e56bc2bfbf` |
| 15 | `theorem` | [fderiv_norm_smul_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean/declarations/fderiv-norm-smul-pos--ca023ca7e5c299a3f171fd72.md) | 192 | `result-track:ca023ca7e5c299a3f171fd728cb3e9302e6d8ec578fc1271191d35e6102a3898` |
| 16 | `theorem` | [fderiv_norm_smul_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean/declarations/fderiv-norm-smul-neg--06d3ee62803ae6ca87064452.md) | 196 | `result-track:06d3ee62803ae6ca87064452af0cbe583e4d2c60c731a4d5aeaf247734e38320` |
| 17 | `theorem` | [norm_fderiv_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Norm/Variant3882972b6174c350b6599a8dbdcf74bb24f9ef201f67e84b0bf81e175822fe65.lean/declarations/norm-fderiv-norm--a4fb934ec04b9b981910de6a.md) | 200 | `result-track:a4fb934ec04b9b981910de6aa0580484e6be01cf94886dfa108a9f49f3f10b14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
