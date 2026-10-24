# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Defs.Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7119153cfa93548f5fd754dae47bd33c040d239",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7119153cfa93548f5fd754dae47bd33c040d239`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.EssSup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.AEStronglyMeasurable` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eLpNorm'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean/declarations/elpnorm--2a8728c7212d9b3de97ac366.md) | 74 | `declaration-track:2a8728c7212d9b3de97ac36617db3dd44500d02e2dd66a85ab5b0aca967fdc57` |
| 2 | `lemma` | [eLpNorm'_eq_lintegral_enorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean/declarations/elpnorm-eq-lintegral-enorm--5aa8840135f98206a854f637.md) | 77 | `result-track:5aa8840135f98206a854f637007a0c826d18fc791dc68812377558245aa20e32` |
| 3 | `def` | [eLpNormEssSup](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean/declarations/elpnormesssup--fbb8fd5c5b9be40de5122915.md) | 85 | `declaration-track:fbb8fd5c5b9be40de5122915015ae18bb8bdaa71d0b10eb63cd24cdfaf757f50` |
| 4 | `lemma` | [eLpNormEssSup_eq_essSup_enorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean/declarations/elpnormesssup-eq-esssup-enorm--6e91a345eeb9d920cca0264a.md) | 88 | `result-track:6e91a345eeb9d920cca0264a1b50867dbee75174f05426945919ec0f8952dd7c` |
| 5 | `def` | [eLpNorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean/declarations/elpnorm--ffc099f9c4504e1d1513032b.md) | 96 | `declaration-track:ffc099f9c4504e1d1513032bafe393b4548bc134c0b3f0900fb7c7daf12939aa` |
| 6 | `theorem` | [eLpNorm_eq_eLpNorm'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean/declarations/elpnorm-eq-elpnorm--d3385ca001eb3f2cd3b476ae.md) | 102 | `result-track:d3385ca001eb3f2cd3b476aebe695ac0cc587d007bd0098eb31bb460dfe3196f` |
| 7 | `lemma` | [eLpNorm_nnreal_eq_eLpNorm'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean/declarations/elpnorm-nnreal-eq-elpnorm--ea8b314a7d7490c512c0047d.md) | 105 | `result-track:ea8b314a7d7490c512c0047db3215e369bc5939741c31ef765e6efa7ab157f9c` |
| 8 | `theorem` | [eLpNorm_eq_lintegral_rpow_enorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean/declarations/elpnorm-eq-lintegral-rpow-enorm--23bfce614333c6635ca4ca2e.md) | 109 | `result-track:23bfce614333c6635ca4ca2e508fa5ec95f17f31663fa1056c55d78c1f698aa9` |
| 9 | `lemma` | [eLpNorm_nnreal_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean/declarations/elpnorm-nnreal-eq-lintegral--9d36187cc67d37270ac89244.md) | 116 | `result-track:9d36187cc67d37270ac89244bf1fe9116aedd398a9f145f6aa0645b451eeb344` |
| 10 | `theorem` | [eLpNorm_one_eq_lintegral_enorm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean/declarations/elpnorm-one-eq-lintegral-enorm--f39a319cd7c3f1011121db3e.md) | 120 | `result-track:f39a319cd7c3f1011121db3e3f38ccbcb70c6df8885bc04719a5d18c7b91ed7f` |
| 11 | `theorem` | [eLpNorm_exponent_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean/declarations/elpnorm-exponent-top--17e33482762c25e2bf276feb.md) | 128 | `result-track:17e33482762c25e2bf276feb73aaec986ec8a2f892972b4d8e9d4fe2208f66a3` |
| 12 | `def` | [MemLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean/declarations/memlp--dfdf9b5c6d9ec2c01cc8254c.md) | 132 | `declaration-track:dfdf9b5c6d9ec2c01cc8254c685a2bfe1864648088051236819ec16110b1b0e2` |
| 13 | `theorem` | [MemLp.aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean/declarations/memlp-aestronglymeasurable--fba85e31e7099dde1cf83e15.md) | 138 | `result-track:fba85e31e7099dde1cf83e1511d9774fe6ec3304c83e8db5479fe73b07af34f4` |
| 14 | `theorem` | [lintegral_rpow_enorm_eq_rpow_eLpNorm'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean/declarations/lintegral-rpow-enorm-eq-rpow-elpnorm--9a1acff1f7c3a973be7c221a.md) | 145 | `result-track:9a1acff1f7c3a973be7c221a62aacfe00a384970244fcfaf49182335faa91e71` |
| 15 | `lemma` | [eLpNorm_nnreal_pow_eq_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Defs/Variantfc967bbb7c707e250dae2c4ec07d3f7acd71f312f4226cd26d7a36ed7888d6e4.lean/declarations/elpnorm-nnreal-pow-eq-lintegral--3c56a00851ef1ac62c024a3f.md) | 153 | `result-track:3c56a00851ef1ac62c024a3ff40836d7f7e9931ebebbcda7648329f29d53c4be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
