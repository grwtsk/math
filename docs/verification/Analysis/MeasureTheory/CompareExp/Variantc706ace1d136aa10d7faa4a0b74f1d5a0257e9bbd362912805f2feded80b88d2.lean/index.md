# Verification target: GRWTSK.Analysis.MeasureTheory.CompareExp.Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4d15aeaeadbefa5a2a77a94bffdf843f692800e",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4d15aeaeadbefa5a2a77a94bffdf843f692800e`.

Source path: `GRWTSK/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENNReal.Holder` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.MeanInequalities` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Finiteness` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eLpNorm'_le_eLpNorm'_mul_rpow_measure_univ](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/elpnorm-le-elpnorm-mul-rpow-measure-univ--66ee05ba99df25c76a870641.md) | 29 | `result-track:66ee05ba99df25c76a87064184f838a94b2ad73f1019d43af80a26b00bf34d5d` |
| 2 | `theorem` | [eLpNorm'_le_eLpNormEssSup_mul_rpow_measure_univ](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/elpnorm-le-elpnormesssup-mul-rpow-measure-univ--0457604ea4bbc62f354f4c3b.md) | 50 | `result-track:0457604ea4bbc62f354f4c3b908cd87661a1c2f4ef40a31ea6ddef715082d57f` |
| 3 | `theorem` | [eLpNorm_le_eLpNorm_mul_rpow_measure_univ](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/elpnorm-le-elpnorm-mul-rpow-measure-univ--b1c25fc2df6d81e078c3efba.md) | 62 | `result-track:b1c25fc2df6d81e078c3efbaffbc188be7580bb7c158010c1eac3fd9b061162a` |
| 4 | `theorem` | [eLpNorm'_le_eLpNorm'_of_exponent_le](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/elpnorm-le-elpnorm-of-exponent-le--601e86cc9bfee245174d9f4f.md) | 88 | `result-track:601e86cc9bfee245174d9f4fc012b836890cbd1fdb9fbb8cd2490a7b9dbbf670` |
| 5 | `theorem` | [eLpNorm'_le_eLpNormEssSup](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/elpnorm-le-elpnormesssup--ecb539018ff30ee77c7e761f.md) | 94 | `result-track:ecb539018ff30ee77c7e761f18ed231e97525955c27b24aca33ad4f2225705bf` |
| 6 | `theorem` | [eLpNorm_le_eLpNorm_of_exponent_le](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/elpnorm-le-elpnorm-of-exponent-le--3457e557d4c9944c5e66bfc9.md) | 98 | `result-track:3457e557d4c9944c5e66bfc966ea291469c1fdf6640562a1ed2fc092ac1117ff` |
| 7 | `theorem` | [eLpNorm'_lt_top_of_eLpNorm'_lt_top_of_exponent_le](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/elpnorm-lt-top-of-elpnorm-lt-top-of-exponent-le--907fee6919d61908ede72591.md) | 102 | `result-track:907fee6919d61908ede72591e970d028931cad4590563dd9585bb6442cb7c10c` |
| 8 | `theorem` | [MemLp.mono_exponent](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/memlp-mono-exponent--9c66b2c2b422a2e7b9e382f2.md) | 117 | `result-track:9c66b2c2b422a2e7b9e382f235f7631d7c21e796a0c73e4a6b31270c445d3235` |
| 9 | `lemma` | [MemLp.mono_exponent_of_measure_support_ne_top](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/memlp-mono-exponent-of-measure-support-ne-top--18f52edd0e88281a2338d556.md) | 152 | `result-track:18f52edd0e88281a2338d556d3a1947765e2ed16f8ac9e5be04575a6923d3a71` |
| 10 | `theorem` | [eLpNorm_le_eLpNorm_top_mul_eLpNorm](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/elpnorm-le-elpnorm-top-mul-elpnorm--d4164f6385dae479eaa1a6f7.md) | 180 | `result-track:d4164f6385dae479eaa1a6f70c057e4a3ce3672ecd95762d8844e2d52b812c9d` |
| 11 | `theorem` | [eLpNorm_le_eLpNorm_mul_eLpNorm_top](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/elpnorm-le-elpnorm-mul-elpnorm-top--ffae26aa42699c0d9fbd91b0.md) | 208 | `result-track:ffae26aa42699c0d9fbd91b09cac6b666e06a2f6356a3f77fd133750324e543b` |
| 12 | `theorem` | [eLpNorm'_le_eLpNorm'_mul_eLpNorm'](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/elpnorm-le-elpnorm-mul-elpnorm--6f795fe15b7bb80694965f04.md) | 220 | `result-track:6f795fe15b7bb80694965f046589bf96116ce9802fab42e35713b2d78358c214` |
| 13 | `theorem` | [eLpNorm_le_eLpNorm_mul_eLpNorm_of_nnnorm](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/elpnorm-le-elpnorm-mul-elpnorm-of-nnnorm--e1cb45755cdb14bc58599752.md) | 242 | `result-track:e1cb45755cdb14bc585997528a230816b12fc673365556e1c8a09c36f35f196c` |
| 14 | `theorem` | [eLpNorm_le_eLpNorm_mul_eLpNorm'_of_norm](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/elpnorm-le-elpnorm-mul-elpnorm-of-norm--0437794e5a0497ad8a41f244.md) | 271 | `result-track:0437794e5a0497ad8a41f2448de1983fadf10e35763f84d83757a2a5814d9516` |
| 15 | `theorem` | [MemLp.of_bilin](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/memlp-of-bilin--8ac825e8e92b927ef2e303fa.md) | 278 | `result-track:8ac825e8e92b927ef2e303fae711c89f2c69175700d73fa1c0fe70be1ebb607d` |
| 16 | `theorem` | [eLpNorm_smul_le_eLpNorm_top_mul_eLpNorm](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/elpnorm-smul-le-elpnorm-top-mul-elpnorm--de2864db9a70d26205a97a90.md) | 301 | `result-track:de2864db9a70d26205a97a90269de4a2f31beada2df3acfaeaa0d2e9794eb02f` |
| 17 | `theorem` | [eLpNorm_smul_le_eLpNorm_mul_eLpNorm_top](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/elpnorm-smul-le-elpnorm-mul-elpnorm-top--912d95fb6db8a6bae93cdd42.md) | 306 | `result-track:912d95fb6db8a6bae93cdd4201d99f0a0324a4524acd5a4947b5178eba33d160` |
| 18 | `theorem` | [eLpNorm'_smul_le_mul_eLpNorm'](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/elpnorm-smul-le-mul-elpnorm--302e27f2e87613cde95e9477.md) | 311 | `result-track:302e27f2e87613cde95e9477888083113055452a51f78102cc9abf79b0836225` |
| 19 | `theorem` | [eLpNorm_smul_le_mul_eLpNorm](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/elpnorm-smul-le-mul-elpnorm--521d42fb1de8cba17c6f8f23.md) | 319 | `result-track:521d42fb1de8cba17c6f8f23ab82db336cc6315f1b38faecc73fc5d7f0ef7849` |
| 20 | `theorem` | [MemLp.smul](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/memlp-smul--0dbb7aee3b728ded288c7a34.md) | 325 | `result-track:0dbb7aee3b728ded288c7a3491408c8e983263b5ea1d46a016e341226d241024` |
| 21 | `theorem` | [MemLp.mul](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/memlp-mul--bef30f7ff08df64869eb744d.md) | 344 | `result-track:bef30f7ff08df64869eb744d3a3425ce139db4f2658417daebc0e7e537e4432e` |
| 22 | `theorem` | [MemLp.mul'](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/memlp-mul--2f79b45887b50c919ff1a2a3.md) | 353 | `result-track:2f79b45887b50c919ff1a2a3668a173a95cd17615c3d21b776cc0693c9f7b563` |
| 23 | `lemma` | [MemLp.prod](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/memlp-prod--80f489476bcaf6b737506007.md) | 373 | `result-track:80f489476bcaf6b7375060074699d0250ebdf88ff5385e86bc8f62719c58aa9a` |
| 24 | `lemma` | [MemLp.prod'](../../../../../mathematics/Analysis/MeasureTheory/CompareExp/Variantc706ace1d136aa10d7faa4a0b74f1d5a0257e9bbd362912805f2feded80b88d2.lean/declarations/memlp-prod--337ddbdbf5a848137934b692.md) | 387 | `result-track:337ddbdbf5a848137934b692a93b1fa86b06cf6a250a520b76bae7496207a606` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
