# Verification target: GRWTSK.Algebra.CommutativeAlgebra.UnitTrinomial.Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5a3dba04d03cc57af312e017f8ffc39f2d24470",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5a3dba04d03cc57af312e017f8ffc39f2d24470`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Polynomial` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Mirror` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trinomial](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/trinomial--c44e946d8f80ef25e6a6e16a.md) | 39 | `declaration-track:c44e946d8f80ef25e6a6e16a4f56becb91281024a51b484a300d64b46a1c2da2` |
| 2 | `theorem` | [trinomial_def](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/trinomial-def--528214374df1602ebb28802c.md) | 43 | `result-track:528214374df1602ebb28802c729efb02810ce52300125a882b03ea1ec2154762` |
| 3 | `theorem` | [trinomial_leading_coeff'](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/trinomial-leading-coeff--5d376bc0f13644aaa55198ba.md) | 49 | `result-track:5d376bc0f13644aaa55198ba49f30832789594c5282a2958dd4c1d3e466a30e2` |
| 4 | `theorem` | [trinomial_middle_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/trinomial-middle-coeff--ead25f9df3fdbaef14f7bd04.md) | 55 | `result-track:ead25f9df3fdbaef14f7bd043353d477d1e6c483603f603b482b39af095dfdbb` |
| 5 | `theorem` | [trinomial_trailing_coeff'](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/trinomial-trailing-coeff--162bc17c9abcce6e57ca4afd.md) | 61 | `result-track:162bc17c9abcce6e57ca4afd4fc929bd66987e40b12649e5bd4764bb228924bc` |
| 6 | `theorem` | [trinomial_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/trinomial-natdegree--4ae306b70bcea038b11763ba.md) | 67 | `result-track:4ae306b70bcea038b11763ba8130ba56f2ab5203fee38e1bcd442804422d2c8e` |
| 7 | `theorem` | [trinomial_natTrailingDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/trinomial-nattrailingdegree--81389af1b60175a236d5400b.md) | 81 | `result-track:81389af1b60175a236d5400b2c90d64865515d643e6c4c0ac017c6c7df327961` |
| 8 | `theorem` | [trinomial_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/trinomial-leadingcoeff--d350d0390e99b21aba9bcef6.md) | 95 | `result-track:d350d0390e99b21aba9bcef619c3d6a78da15ff230ba1e8c2883d94b771a1b3b` |
| 9 | `theorem` | [trinomial_trailingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/trinomial-trailingcoeff--c0ce815b3b126ccb15462541.md) | 100 | `result-track:c0ce815b3b126ccb1546254124bed98208e718e2c2f3044926822ad22243cc75` |
| 10 | `theorem` | [trinomial_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/trinomial-monic--470ad87f1b55e31e278d6d7b.md) | 105 | `result-track:470ad87f1b55e31e278d6d7bdcc44596c4b391e6ed5ea065793ad78ac68e1e41` |
| 11 | `theorem` | [trinomial_mirror](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/trinomial-mirror--fab66f3bb92aeb9221278d61.md) | 110 | `result-track:fab66f3bb92aeb9221278d617b6c0dd63e068b1b4c895e132baf1cf092e8f2d3` |
| 12 | `theorem` | [trinomial_support](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/trinomial-support--0934f7b8320459fae8c4f32d.md) | 120 | `result-track:0934f7b8320459fae8c4f32d4ceac6427fd44eed0058c477ce2a1c63984e7de9` |
| 13 | `def` | [IsUnitTrinomial](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/isunittrinomial--78201752b7ebac48d734816b.md) | 130 | `declaration-track:78201752b7ebac48d734816be18ddd552e9d99e7d9737079a1ee890665ae4d0b` |
| 14 | `theorem` | [not_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/not-isunit--6d17c08a78a9d116b67f7cf6.md) | 138 | `result-track:6d17c08a78a9d116b67f7cf6d2adb31e7764d8f8cf32bcc4cb87e1400037ea5c` |
| 15 | `theorem` | [card_support_eq_three](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/card-support-eq-three--3398b4e931adb0cce27761ee.md) | 146 | `result-track:3398b4e931adb0cce27761ee3b5476f3e23255b8e3c189c85c862e0bd08cc0d4` |
| 16 | `theorem` | [ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/ne-zero--51370d91e6907240b7471912.md) | 151 | `result-track:51370d91e6907240b74719125430085e907aeb37b813cbb1db35a4260ad5255e` |
| 17 | `theorem` | [coeff_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/coeff-isunit--e0bd6d0d290ff840f0aa82ca.md) | 156 | `result-track:e0bd6d0d290ff840f0aa82cadff99263d501daa501b677678b2a255c141ceeec` |
| 18 | `theorem` | [leadingCoeff_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/leadingcoeff-isunit--db61a83393e9e1112b2247ab.md) | 167 | `result-track:db61a83393e9e1112b2247ab15e8eff588e5630f67c7d7dfeeefd1ecf9ca5757` |
| 19 | `theorem` | [trailingCoeff_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/trailingcoeff-isunit--899beac7cc44d224e05282da.md) | 171 | `result-track:899beac7cc44d224e05282daf3f022ebc631971b7c02fac592f9ca1ab0eb2eda` |
| 20 | `theorem` | [isUnitTrinomial_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/isunittrinomial-iff--8395f368dc083653aea10bb7.md) | 177 | `result-track:8395f368dc083653aea10bb7f87ec322bbfb41f3ad5d7069867b8e51547b3b25` |
| 21 | `theorem` | [isUnitTrinomial_iff'](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/isunittrinomial-iff--a5ea704b3db73d142a537e38.md) | 193 | `result-track:a5ea704b3db73d142a537e38c8bb27a3a6d80649debe839ea6c42236b9dfbb0e` |
| 22 | `theorem` | [isUnitTrinomial_iff''](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/isunittrinomial-iff--bc88b29c9b860468939f3f72.md) | 214 | `result-track:bc88b29c9b860468939f3f72a2791631c4e14bc41936580776e8de997d500f4f` |
| 23 | `theorem` | [irreducible_aux1](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/irreducible-aux1--ce928bdfb6f6dea4f723fd02.md) | 221 | `result-track:ce928bdfb6f6dea4f723fd02f6ddaaf9bcc05eff8d4619c30a311b765049df4d` |
| 24 | `theorem` | [irreducible_aux2](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/irreducible-aux2--082fbccb550a7f76e69b0209.md) | 256 | `result-track:082fbccb550a7f76e69b0209ed68fdd3e9ecc028537760b9fb47f030799122bc` |
| 25 | `theorem` | [irreducible_aux3](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/irreducible-aux3--86ccd59139e90a96a4ff2517.md) | 281 | `result-track:86ccd59139e90a96a4ff2517b26e2c4ef4dd5bed8fb9c7723343598c581c37fb` |
| 26 | `theorem` | [irreducible_of_coprime](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/irreducible-of-coprime--127d497c1d7288524b985e2b.md) | 310 | `result-track:127d497c1d7288524b985e2b5ab86146d5859554be8d9bf7e6aef83cb7847a49` |
| 27 | `theorem` | [irreducible_of_isCoprime](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/irreducible-of-iscoprime--c754ba40ba943512ac529a4c.md) | 346 | `result-track:c754ba40ba943512ac529a4c62ba1fb6d9bb71a97ca54eae8b43acd6ea7dd78c` |
| 28 | `theorem` | [irreducible_of_coprime'](../../../../../mathematics/Algebra/CommutativeAlgebra/UnitTrinomial/Variante6e3383c8642f6ad12991c3e1b87a1f70db84c79b906f6e8bd955d6e36650c01.lean/declarations/irreducible-of-coprime--05831033a73e52b229e7461a.md) | 352 | `result-track:05831033a73e52b229e7461a370c668053c94bf3fdd7826e2e575ef224e90332` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
