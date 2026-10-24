# Verification target: GRWTSK.Analysis.Fourier.FiniteHolonomyAliasing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24670fff03cb1b4a6a4c81dbb2f04792c7507513",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/FiniteHolonomyAliasing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24670fff03cb1b4a6a4c81dbb2f04792c7507513`.

Source path: `GRWTSK/Analysis/Fourier/FiniteHolonomyAliasing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/FiniteHolonomyAliasing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.FiniteCharacterCylinder`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteCharacterCylinder.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteHomologyPacket](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/finitehomologypacket--0c17c4e3ad118f48b5499f9f.md) | 38 | `declaration-track:0c17c4e3ad118f48b5499f9f64f083bd2781a3c9559c0dbd5a031676628c19d1` |
| 2 | `def` | [residueTuple](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/residuetuple--0f7a0ad0ef638ae881a20a25.md) | 49 | `declaration-track:0f7a0ad0ef638ae881a20a2582096424150ed01ffade845a796b81e0730e1b80` |
| 3 | `def` | [aliasSources](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/aliassources--e2e02d0a14b63367bc0cb591.md) | 54 | `declaration-track:e2e02d0a14b63367bc0cb591f14d6c1f0cdd335dc1e8db70e35af2968e5e4cc0` |
| 4 | `theorem` | [mem_aliasSources_iff](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/mem-aliassources-iff--868c67adb81e1431a95e751f.md) | 61 | `result-track:868c67adb81e1431a95e751f4e124f38216f4d8b4d08f1eecc57343ad1f89198` |
| 5 | `def` | [torsionProjection](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/torsionprojection--098d9b5bd4c036e71781fa47.md) | 71 | `declaration-track:098d9b5bd4c036e71781fa47e616b752dfd240a939d870b992c199cb4192760f` |
| 6 | `def` | [integralProjection](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/integralprojection--1ba36ffeeafdd08d77579a64.md) | 80 | `declaration-track:1ba36ffeeafdd08d77579a649c243130f6d38e55085460d3135bf8b2da2b71b7` |
| 7 | `def` | [aliasCorrection](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/aliascorrection--2e684906195d0c183220f906.md) | 85 | `declaration-track:2e684906195d0c183220f906643cbcce5c716922e8a0604d332525295c4ff51f` |
| 8 | `def` | [aliasMass](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/aliasmass--39e2af9f92e462cb022c4542.md) | 91 | `declaration-track:39e2af9f92e462cb022c4542203d5f55837dd4105741156850f27df14ceb7840` |
| 9 | `def` | [NoAlias](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/noalias--d7f4e56367d6a51f362ffe72.md) | 97 | `declaration-track:d7f4e56367d6a51f362ffe72b65c09e0123f6c7314ea614eeb93eadcdd425394` |
| 10 | `def` | [FundamentalBox](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/fundamentalbox--d72f4bb16240f596b889f2bc.md) | 106 | `declaration-track:d72f4bb16240f596b889f2bc24170e0d629bde5f40412259f12009ceec22ce46` |
| 11 | `theorem` | [weighted_character_projection_split](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/weighted-character-projection-split--687a1ddb2161a7a1f2552304.md) | 114 | `result-track:687a1ddb2161a7a1f2552304e435350d43e4d9bd3343f2c013cc34920d24f480` |
| 12 | `theorem` | [aliasCorrection_eq_indicator_sum](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/aliascorrection-eq-indicator-sum--71e2f40419417548e6cc0fa2.md) | 133 | `result-track:71e2f40419417548e6cc0fa2c2ce700cd914afd02a21bd53d07efe70fc1a91db` |
| 13 | `theorem` | [torsionProjection_eq_integral_add_alias](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/torsionprojection-eq-integral-add-alias--de275da545d94c61abea3b7d.md) | 145 | `result-track:de275da545d94c61abea3b7d2e29741e3431a4dcbf9e1ecaddf53f3d4f11e84c` |
| 14 | `theorem` | [aliasCorrection_norm_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/aliascorrection-norm-le--eb50822a0a32ab6b415db976.md) | 158 | `result-track:eb50822a0a32ab6b415db97687ef874ad1547cfcf92803a458103eaa59e802d1` |
| 15 | `theorem` | [torsionProjection_error_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/torsionprojection-error-le--2238ae00c80eab1e0e97d2b3.md) | 166 | `result-track:2238ae00c80eab1e0e97d2b33474cbf8974ff9bc10e41a3eace9e7856f6dcad4` |
| 16 | `theorem` | [aliasSources_eq_empty_of_noAlias](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/aliassources-eq-empty-of-noalias--204c925b504895ccf67f5c4e.md) | 177 | `result-track:204c925b504895ccf67f5c4e1f254a7aa9c13296eefdba2a826c17d4943a24db` |
| 17 | `theorem` | [torsionProjection_eq_integral_of_noAlias](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/torsionprojection-eq-integral-of-noalias--25e21be0f6c5492386ff1bcf.md) | 188 | `result-track:25e21be0f6c5492386ff1bcfa882c65d3003f05c58b72f8034be075bcbb06f93` |
| 18 | `theorem` | [integer_tuple_eq_of_residue_eq_in_box](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/integer-tuple-eq-of-residue-eq-in-box--7ad05db3e22d3e89ea9e0a14.md) | 197 | `result-track:7ad05db3e22d3e89ea9e0a14d1a0971423b7b35b1d861efc4a4298c9634f63f7` |
| 19 | `theorem` | [noAlias_of_fundamentalBox](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/noalias-of-fundamentalbox--5af4194d25dd3934df708657.md) | 214 | `result-track:5af4194d25dd3934df7086579eb3da138048bc1894d424cef1035d431247f10b` |
| 20 | `theorem` | [torsionProjection_eq_integral_of_fundamentalBox](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/torsionprojection-eq-integral-of-fundamentalbox--84bcd1c6f179544f85e6377c.md) | 222 | `result-track:84bcd1c6f179544f85e6377cec7770e865d93b3177f04311a94eaf5226208ef0` |
| 21 | `theorem` | [noAlias_zero_coordinates](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/noalias-zero-coordinates--5615dc81294b54ade9eabd8e.md) | 229 | `result-track:5615dc81294b54ade9eabd8e9f184b9be766bb989d09d720ba537144b5cb33c8` |
| 22 | `theorem` | [torsionProjection_zero_coordinates](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/torsionprojection-zero-coordinates--0952d4d242c66ca051d0c8ad.md) | 236 | `result-track:0952d4d242c66ca051d0c8ad55e1864360af945c8098060e4d82514d43a4292b` |
| 23 | `theorem` | [empty_sources_zero](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/empty-sources-zero--f544270c67d2e92accd23a2b.md) | 243 | `result-track:f544270c67d2e92accd23a2bbca0f4c8ad091e95687e455894cb1966b5788028` |
| 24 | `theorem` | [two_modulus_nontrivial_alias](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteHolonomyAliasing.lean/declarations/two-modulus-nontrivial-alias--521a26694d97a259455d1d30.md) | 254 | `result-track:521a26694d97a259455d1d304c72496baaa7b32e3edd5eafc22a7b962a5075d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
