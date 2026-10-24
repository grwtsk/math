# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.XiPrime.Variant18500285dc036b583a2c37ebc92c175c0bec9352e2cfc341230de1c1e6fbfa7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "204c6a02c3082653cba6f4520f5666dd22aeb52e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant18500285dc036b583a2c37ebc92c175c0bec9352e2cfc341230de1c1e6fbfa7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant18500285dc036b583a2c37ebc92c175c0bec9352e2cfc341230de1c1e6fbfa7a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant18500285dc036b583a2c37ebc92c175c0bec9352e2cfc341230de1c1e6fbfa7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `204c6a02c3082653cba6f4520f5666dd22aeb52e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant18500285dc036b583a2c37ebc92c175c0bec9352e2cfc341230de1c1e6fbfa7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant18500285dc036b583a2c37ebc92c175c0bec9352e2cfc341230de1c1e6fbfa7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [xi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant18500285dc036b583a2c37ebc92c175c0bec9352e2cfc341230de1c1e6fbfa7a.lean/declarations/xi--d088fca050c5eab2f14cd9a4.md) | 39 | `declaration-track:d088fca050c5eab2f14cd9a4543301a709ce096f7c9f1108602c8adf43f369d1` |
| 2 | `def` | [xiDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant18500285dc036b583a2c37ebc92c175c0bec9352e2cfc341230de1c1e6fbfa7a.lean/declarations/xideriv--73053080bb1d43ab318073cc.md) | 42 | `declaration-track:73053080bb1d43ab318073cc61ff30f14caf25903acdd754eb5b204502be3c5d` |
| 3 | `def` | [IsXiDerivZero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant18500285dc036b583a2c37ebc92c175c0bec9352e2cfc341230de1c1e6fbfa7a.lean/declarations/isxiderivzero--1f4f012e7686652c94f04f45.md) | 45 | `declaration-track:1f4f012e7686652c94f04f457d63baf9d622e7083e1dc2629fdff91f6c98d7ce` |
| 4 | `def` | [xiDerivMult](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant18500285dc036b583a2c37ebc92c175c0bec9352e2cfc341230de1c1e6fbfa7a.lean/declarations/xiderivmult--27ef59b8ee9c79a00eff5519.md) | 48 | `declaration-track:27ef59b8ee9c79a00eff5519d77abcd28ce58278eef45e630e3f94f73c9a85a0` |
| 5 | `def` | [zerosIn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant18500285dc036b583a2c37ebc92c175c0bec9352e2cfc341230de1c1e6fbfa7a.lean/declarations/zerosin--ba83e4b56dcb0a65a9686b17.md) | 54 | `declaration-track:ba83e4b56dcb0a65a9686b17e2522fe822fe03c8f2621cdeeb2617f47b13767a` |
| 6 | `def` | [Ncount](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant18500285dc036b583a2c37ebc92c175c0bec9352e2cfc341230de1c1e6fbfa7a.lean/declarations/ncount--6b08729c1907c1c7f32e25cd.md) | 57 | `declaration-track:6b08729c1907c1c7f32e25cde5c6cb907edb2ba38fbb47aeff3c7e3aeb899efb` |
| 7 | `def` | [Ndist](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant18500285dc036b583a2c37ebc92c175c0bec9352e2cfc341230de1c1e6fbfa7a.lean/declarations/ndist--7e43e6a0676be358d536a557.md) | 60 | `declaration-track:7e43e6a0676be358d536a5571d08ae92a9c903ed6d7e3f2580b6806427be7e89` |
| 8 | `def` | [N0simple](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant18500285dc036b583a2c37ebc92c175c0bec9352e2cfc341230de1c1e6fbfa7a.lean/declarations/n0simple--0b985ee06be1d95c1d0a28a8.md) | 64 | `declaration-track:0b985ee06be1d95c1d0a28a8d9239f2bf798ddee0861819538f3c683716478d0` |
| 9 | `theorem` | [xiPrime_zeros_in_open_critical_strip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant18500285dc036b583a2c37ebc92c175c0bec9352e2cfc341230de1c1e6fbfa7a.lean/declarations/xiprime-zeros-in-open-critical-strip--e65bc5624953466cd358202f.md) | 75 | `result-track:e65bc5624953466cd358202fb62b630ea0dbbbd4b6d955c67f6836b2a2360afa` |
| 10 | `theorem` | [xiPrime_over_xi_re_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant18500285dc036b583a2c37ebc92c175c0bec9352e2cfc341230de1c1e6fbfa7a.lean/declarations/xiprime-over-xi-re-pos--3bf3051639caa24eb22c30bc.md) | 80 | `result-track:3bf3051639caa24eb22c30bc47e116fd90576829e1a60172aec7c05591657b4a` |
| 11 | `theorem` | [xiPrime_simple_zeros_on_critical_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant18500285dc036b583a2c37ebc92c175c0bec9352e2cfc341230de1c1e6fbfa7a.lean/declarations/xiprime-simple-zeros-on-critical-line--1c89960c4ac2ad6806280d07.md) | 87 | `result-track:1c89960c4ac2ad6806280d0724a405066c685fb221f6a1137f56655320b240d9` |
| 12 | `theorem` | [xiPrime_simple_zeros_on_critical_line_cumulative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant18500285dc036b583a2c37ebc92c175c0bec9352e2cfc341230de1c1e6fbfa7a.lean/declarations/xiprime-simple-zeros-on-critical-line-cumulative--36d7c9f1c2b452392e6c23db.md) | 94 | `result-track:36d7c9f1c2b452392e6c23db8456d0f841cbd2929e0388d0b3d665162aa75df9` |
| 13 | `theorem` | [xiPrime_simple_zeros_on_critical_line_quartic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant18500285dc036b583a2c37ebc92c175c0bec9352e2cfc341230de1c1e6fbfa7a.lean/declarations/xiprime-simple-zeros-on-critical-line-quartic--34b3fc1533e82eaf5f736a38.md) | 102 | `result-track:34b3fc1533e82eaf5f736a38328ea7361cbe2a14d64d67b65ebaab447db782f4` |
| 14 | `theorem` | [xiPrime_simple_zeros_on_critical_line_quartic_cumulative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant18500285dc036b583a2c37ebc92c175c0bec9352e2cfc341230de1c1e6fbfa7a.lean/declarations/xiprime-simple-zeros-on-critical-line-quartic-cumulative--8481db8c1e75754f9d6000a5.md) | 110 | `result-track:8481db8c1e75754f9d6000a506e4bcc24f0b75d4ca9bd1ebf15a07193cdde8d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
