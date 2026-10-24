# Verification target: GRWTSK.Algebra.LinearAlgebra.Polynomial.Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6126efe7585ea97ac809a9c2c3fa651fdaf4cf5",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6126efe7585ea97ac809a9c2c3fa651fdaf4cf5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Expand` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [C_dvd_iff_zmod](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/c-dvd-iff-zmod--251c52d80da6238b51e016d1.md) | 33 | `result-track:251c52d80da6238b51e016d16cd6a4f2e212a8e6f1137616da6dea6ef14da23b` |
| 2 | `theorem` | [frobenius_zmod](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/frobenius-zmod--83bfff2fb2da6580998cf505.md) | 43 | `result-track:83bfff2fb2da6580998cf5051f3bde5d21a37964d0ca22bf598bb6bbd616accf` |
| 3 | `theorem` | [expand_zmod](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/expand-zmod--1ed6be993faa56e4613c7768.md) | 51 | `result-track:1ed6be993faa56e4613c776838a2e38834cc29d2f4d896ca7e539013ecbbe512` |
| 4 | `def` | [indicator](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/indicator--0e9bbafe475c19e64678fffd.md) | 74 | `declaration-track:0e9bbafe475c19e64678fffdba7d5009ba6153ce184d9084723f0329fc53c994` |
| 5 | `theorem` | [eval_indicator_apply_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/eval-indicator-apply-eq-one--f504bff4588807477f309f43.md) | 82 | `result-track:f504bff4588807477f309f43d0e2f7959568534921c8c3c9a29affe25070f4f8` |
| 6 | `theorem` | [degrees_indicator](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/degrees-indicator--f042e8d368bc3d2293d1cea3.md) | 89 | `result-track:f042e8d368bc3d2293d1cea3ffc498356b9b33eff040eb4913125f5fcef6b184` |
| 7 | `theorem` | [indicator_mem_restrictDegree](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/indicator-mem-restrictdegree--d5f4ea9bcbc00c75c3424e8a.md) | 101 | `result-track:d5f4ea9bcbc00c75c3424e8a794f16c156a0b8481e5f38e95746e62e09128028` |
| 8 | `theorem` | [eval_indicator_apply_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/eval-indicator-apply-eq-zero--8849feecb73737bc756bd406.md) | 120 | `result-track:8849feecb73737bc756bd40647d7393dd53eff9ac74c55be7b616db42af22cad` |
| 9 | `def` | [evalₗ](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/eval--701446bd82a66a4edac9bdd6.md) | 137 | `declaration-track:701446bd82a66a4edac9bdd6b332868b4114ec30a2c51c2923da38e1fd2e9e56` |
| 10 | `theorem` | [map_restrict_dom_evalₗ](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/map-restrict-dom-eval--22a0efa88a7bc875b940add8.md) | 147 | `result-track:22a0efa88a7bc875b940add8bbe4e9c21338b22697cb51a1c77dea7509182ab3` |
| 11 | `def` | [R](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/r--1c9e4e2ef85c550aa2c9383a.md) | 182 | `declaration-track:1c9e4e2ef85c550aa2c9383a428b7a5769f13e8018fa8d9acec459595b7e6bd2` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/instance--2afd1ac0a213263a8ca555d6.md) | 187 | `declaration-track:2afd1ac0a213263a8ca555d6068196eaf634f8712241ae248365943314d35377` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/instance--4992702fd0bda5cca8a995e1.md) | 190 | `declaration-track:4992702fd0bda5cca8a995e18f13d5799e4ede68d866e40107e3d8bbfe7e76b5` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/instance--ce6f2634840a2f5f322f27c8.md) | 193 | `declaration-track:ce6f2634840a2f5f322f27c8dc8cc39819a81d9678109c529c3e7ef0242bf87c` |
| 15 | `def` | [evalᵢ](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/eval--3fdad2a93975819e246c613f.md) | 197 | `declaration-track:3fdad2a93975819e246c613fe3589d3b7bd87d8a549e1c6231e3c114192e17dd` |
| 16 | `instance` | [decidableRestrictDegree](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/decidablerestrictdegree--54a2fd4f8712456c27ba7d9c.md) | 205 | `declaration-track:54a2fd4f8712456c27ba7d9cfb81802439485753acb5414ebcdfa13d839a66cc` |
| 17 | `theorem` | [rank_R](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/rank-r--de879a88f76bb6d022b3805f.md) | 214 | `result-track:de879a88f76bb6d022b3805fabe0fc33fc126edb47a9a50a1a20b2cc1908ae2e` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/instance--658518e3bb238c0ba0f300ac.md) | 234 | `declaration-track:658518e3bb238c0ba0f300ac0d53611302661d310660269bf71af812df16175d` |
| 19 | `theorem` | [finrank_R](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/finrank-r--bbf97fe2d063a5c451c39ad7.md) | 241 | `result-track:bbf97fe2d063a5c451c39ad7eee3213b94cf93aeea74e8415cb6fc990fd0d06b` |
| 20 | `theorem` | [range_evalᵢ](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/range-eval--10fe1702841810d8d5c1bb73.md) | 247 | `result-track:10fe1702841810d8d5c1bb73c6833a4c4430c940ceb126406a1956a79ce7c2b0` |
| 21 | `theorem` | [ker_evalₗ](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/ker-eval--15715568c1f4651b2224b746.md) | 253 | `result-track:15715568c1f4651b2224b746d83829ca248ec0b66431f8bb184ef6cf90a5e1d5` |
| 22 | `theorem` | [eq_zero_of_eval_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant92d5ae2c2adb6bf38f37e24a0888eeec1ca95bab8105ec2e513e8d8e69996f3f.lean/declarations/eq-zero-of-eval-eq-zero--ad03238cf17039b4102a61d6.md) | 259 | `result-track:ad03238cf17039b4102a61d6a80b3a030b1c33b41d1f331c091045803eb95652` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
