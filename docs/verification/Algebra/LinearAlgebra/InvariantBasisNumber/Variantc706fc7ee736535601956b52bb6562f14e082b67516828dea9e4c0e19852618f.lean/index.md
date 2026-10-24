# Verification target: GRWTSK.Algebra.LinearAlgebra.InvariantBasisNumber.Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ceb5bd7b871f85f09a119797f3c2e1a0e60d3881",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ceb5bd7b871f85f09a119797f3c2e1a0e60d3881`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Quotient.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Orzech` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.OrzechProperty` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.Pi` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [StrongRankCondition](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/strongrankcondition--1ddb746e852b244f36afe9b7.md) | 125 | `declaration-track:1ddb746e852b244f36afe9b7b00253eff31edf2525ef1ff56c49e195f435877d` |
| 2 | `theorem` | [le_of_fin_injective](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/le-of-fin-injective--28dd93c55b55ae0a3fbc2518.md) | 129 | `result-track:28dd93c55b55ae0a3fbc2518a993a7d5f30b13b8c8039e75f749a3924ee34135` |
| 3 | `theorem` | [strongRankCondition_iff_succ](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/strongrankcondition-iff-succ--9c9f9f19f68c47d20a9f4d2d.md) | 135 | `result-track:9c9f9f19f68c47d20a9f4d2d6df2aace990cf4dc439611a5d917b68944c72e3e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/instance--278180d7a184e43516f6fe80.md) | 147 | `declaration-track:278180d7a184e43516f6fe80bf62c82951ad829de7af078d3e615fdac12cdc42` |
| 5 | `theorem` | [card_le_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/card-le-of-injective--ab1c8b69a63e3b84f64f368f.md) | 162 | `result-track:ab1c8b69a63e3b84f64f368fc273d0260b7c7501a11fea7fe555a75ce931c5b0` |
| 6 | `theorem` | [card_le_of_injective'](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/card-le-of-injective--9c8177370fa1d11c0837e2de.md) | 170 | `result-track:9c8177370fa1d11c0837e2def035e029c8ca33cac730fdb8aff47194f63fd9d4` |
| 7 | `class` | [RankCondition](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/rankcondition--40ffd840d52026af4b3c61a4.md) | 180 | `declaration-track:40ffd840d52026af4b3c61a4b1ce1bfe8252a7e6a461284e7d6ccd594c485d9d` |
| 8 | `theorem` | [le_of_fin_surjective](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/le-of-fin-surjective--56f2c955e207acc7b0c698b5.md) | 184 | `result-track:56f2c955e207acc7b0c698b5d1d5ca79951ccbc7627036e0ac4b043ebd72ccd0` |
| 9 | `theorem` | [card_le_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/card-le-of-surjective--8ce1a76c55eb382caa5d4396.md) | 188 | `result-track:8ce1a76c55eb382caa5d4396e2bb1039c73416de728e7288557c995cc8ae3419` |
| 10 | `theorem` | [card_le_of_surjective'](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/card-le-of-surjective--baa49b5255a35af17cd783de.md) | 196 | `result-track:baa49b5255a35af17cd783defb084f62555ee34e97349ca9c2192fbc26b07380` |
| 11 | `theorem` | [Module.Finite.exists_nat_not_surjective](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/module-finite-exists-nat-not-surjective--4365f50b776f9c70846f0aeb.md) | 204 | `result-track:4365f50b776f9c70846f0aeb5d27afac1d3d5342295a93f38d33973281e8eedd` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/instance--658c5b058daa527110b5e261.md) | 213 | `declaration-track:658c5b058daa527110b5e2619f84eb788794f1664693f32d91926103cc20fc0a` |
| 13 | `class` | [InvariantBasisNumber](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/invariantbasisnumber--9aa4698e0d51033a71adf620.md) | 221 | `declaration-track:9aa4698e0d51033a71adf620b83849f22a2d1a79199698fd862cc7a93deaa9c3` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/instance--e5ab561e13821081c251e7a1.md) | 225 | `declaration-track:e5ab561e13821081c251e7a1d25ced5e02b798f4b04c3de0cd74cfb5d814c622` |
| 15 | `theorem` | [eq_of_fin_equiv](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/eq-of-fin-equiv--c348cd1d4c60563479a0ada6.md) | 236 | `result-track:c348cd1d4c60563479a0ada6c13d92ed73c8f28fc35c8c9181ddfacea6a3b156` |
| 16 | `theorem` | [card_eq_of_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/card-eq-of-linearequiv--1529585604fcbbd159521330.md) | 239 | `result-track:1529585604fcbbd1595213305b11479b31a4ef19c3aa06f6bb614135b8c479c2` |
| 17 | `theorem` | [nontrivial_of_invariantBasisNumber](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/nontrivial-of-invariantbasisnumber--ddc58c3b5238df56170e7889.md) | 245 | `result-track:ddc58c3b5238df56170e78897e96c45dc919e305fe28fc7e4849896b51a299d7` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/instance--186e00d4f19ef99e0b7026d7.md) | 267 | `declaration-track:186e00d4f19ef99e0b7026d7c2017ab8fdc0102ea9ccb42333ac1960f557b696` |
| 19 | `def` | [induced_map](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/induced-map--6b70da4015312fda685a01f1.md) | 292 | `declaration-track:6b70da4015312fda685a01f1f38ca9221cc3a84618c467a1add879f6e360ef43` |
| 20 | `def` | [inducedEquiv](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/inducedequiv--e6d095c15bb56c0c1ae1b5be.md) | 303 | `declaration-track:e6d095c15bb56c0c1ae1b5be776ce14325943bc4e68ba9c22cb2ea0a4fa395aa` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/InvariantBasisNumber/Variantc706fc7ee736535601956b52bb6562f14e082b67516828dea9e4c0e19852618f.lean/declarations/instance--75277af487fc02aa3618892e.md) | 327 | `declaration-track:75277af487fc02aa3618892e318ac3a1b2277358e087a05ce8b8dd7d2520370f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
