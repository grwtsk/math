# Verification target: GRWTSK.Algebra.CommutativeAlgebra.NonZeroDivisors.Variante442020c7cad8201c1ebc88c7045c3e474e80a6897ebea353afee84b41218d5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be864a21f27517f89db19af68631295d0566f741",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante442020c7cad8201c1ebc88c7045c3e474e80a6897ebea353afee84b41218d5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante442020c7cad8201c1ebc88c7045c3e474e80a6897ebea353afee84b41218d5e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante442020c7cad8201c1ebc88c7045c3e474e80a6897ebea353afee84b41218d5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be864a21f27517f89db19af68631295d0566f741`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante442020c7cad8201c1ebc88c7045c3e474e80a6897ebea353afee84b41218d5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante442020c7cad8201c1ebc88c7045c3e474e80a6897ebea353afee84b41218d5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MvPowerSeries.NoZeroDivisors` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ringKrullDim_quotient](../../../../../mathematics/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante442020c7cad8201c1ebc88c7045c3e474e80a6897ebea353afee84b41218d5e.lean/declarations/ringkrulldim-quotient--8645ce865ac0f5a4b254fbe8.md) | 25 | `result-track:8645ce865ac0f5a4b254fbe834dc63d328fa22b94d59e7229203711237e9e24c` |
| 2 | `lemma` | [ringKrullDim_quotient_succ_le_of_nonZeroDivisor](../../../../../mathematics/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante442020c7cad8201c1ebc88c7045c3e474e80a6897ebea353afee84b41218d5e.lean/declarations/ringkrulldim-quotient-succ-le-of-nonzerodivisor--a8fb406f20036668924d25f6.md) | 40 | `result-track:a8fb406f20036668924d25f6cd8351e3723604314a6e23918f1d65be0266d9f6` |
| 3 | `lemma` | [ringKrullDim_succ_le_of_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante442020c7cad8201c1ebc88c7045c3e474e80a6897ebea353afee84b41218d5e.lean/declarations/ringkrulldim-succ-le-of-surjective--9bbe1cad6e2612202f3d24e6.md) | 64 | `result-track:9bbe1cad6e2612202f3d24e6c7e8924787cd16d9025b2c4fc7dd6e7843c43d74` |
| 4 | `lemma` | [ringKrullDim_succ_le_ringKrullDim_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante442020c7cad8201c1ebc88c7045c3e474e80a6897ebea353afee84b41218d5e.lean/declarations/ringkrulldim-succ-le-ringkrulldim-polynomial--014b7f04422d79ce1e70f80e.md) | 72 | `result-track:014b7f04422d79ce1e70f80e52a9db1002c7e769ab6887a6ef42634ac374f6a7` |
| 5 | `lemma` | [ringKrullDim_mvPolynomial_of_isEmpty](../../../../../mathematics/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante442020c7cad8201c1ebc88c7045c3e474e80a6897ebea353afee84b41218d5e.lean/declarations/ringkrulldim-mvpolynomial-of-isempty--302546609772da7236135b65.md) | 79 | `result-track:302546609772da7236135b6571ff8a3c820167bb9a4490111796f56539dd1744` |
| 6 | `lemma` | [ringKrullDim_add_natCard_le_ringKrullDim_mvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante442020c7cad8201c1ebc88c7045c3e474e80a6897ebea353afee84b41218d5e.lean/declarations/ringkrulldim-add-natcard-le-ringkrulldim-mvpolynomial--52aaeefb2194c609a4beda0f.md) | 84 | `result-track:52aaeefb2194c609a4beda0fac6b9cba06ee25a15e21daa455040ec4844e545c` |
| 7 | `lemma` | [ringKrullDim_add_enatCard_le_ringKrullDim_mvPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante442020c7cad8201c1ebc88c7045c3e474e80a6897ebea353afee84b41218d5e.lean/declarations/ringkrulldim-add-enatcard-le-ringkrulldim-mvpolynomial--a8886d220fab7294e6ef1aae.md) | 99 | `result-track:a8886d220fab7294e6ef1aae3956144fcb089b46fc060b11ad495e78271df162` |
| 8 | `lemma` | [ringKrullDim_succ_le_ringKrullDim_powerseries](../../../../../mathematics/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante442020c7cad8201c1ebc88c7045c3e474e80a6897ebea353afee84b41218d5e.lean/declarations/ringkrulldim-succ-le-ringkrulldim-powerseries--b983379a29069f739b75c32e.md) | 123 | `result-track:b983379a29069f739b75c32e325191672b9ec1526586305ad7c1d9b121bef8c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
