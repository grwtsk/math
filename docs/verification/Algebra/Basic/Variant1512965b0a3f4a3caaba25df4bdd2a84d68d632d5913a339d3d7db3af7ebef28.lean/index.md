# Verification target: GRWTSK.Algebra.Basic.Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "681a91de84c5799417c5a4c35d9033ab6eb2d2df",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `681a91de84c5799417c5a4c35d9033ab6eb2d2df`.

Source path: `GRWTSK/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.IsField` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.LinearCombination` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maximal` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pi](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/pi--e5b5f4502f8cf075989acad5.md) | 54 | `declaration-track:e5b5f4502f8cf075989acad50146a97c602aeb15352694d47832141aed71b0a6` |
| 2 | `theorem` | [mem_pi](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/mem-pi--61f826bdec9022388682fbcc.md) | 60 | `result-track:61f826bdec9022388682fbcc1629f18d385dc47adff02818593b4e0f8d4e4a3a` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/instance--ec2e473a0eafbf2b250d95ee.md) | 63 | `declaration-track:ec2e473a0eafbf2b250d95eeae9c4acd18ac1515ce259211dca9f50acf8569ca` |
| 4 | `theorem` | [add_pow_mem_of_pow_mem_of_le_of_commute](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/add-pow-mem-of-pow-mem-of-le-of-commute--4934ce25f205d3b1ed654925.md) | 72 | `result-track:4934ce25f205d3b1ed654925cc5c3837c7283032487c595c11d588573fd441d1` |
| 5 | `theorem` | [add_pow_add_pred_mem_of_pow_mem_of_commute](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/add-pow-add-pred-mem-of-pow-mem-of-commute--499135cd0fe80db6c17b4564.md) | 86 | `result-track:499135cd0fe80db6c17b4564a2e5834294d2afb44a77933e97b9597a5ebc7cdf` |
| 6 | `theorem` | [add_pow_mem_of_pow_mem_of_le](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/add-pow-mem-of-pow-mem-of-le--b0988c86182e8d584059e729.md) | 107 | `result-track:b0988c86182e8d584059e7299dd36d979ca00defae5a504d08cfcd97b3c05938` |
| 7 | `theorem` | [add_pow_add_pred_mem_of_pow_mem](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/add-pow-add-pred-mem-of-pow-mem--c60a278d8a91b09bb518b6bd.md) | 112 | `result-track:c60a278d8a91b09bb518b6bd43e93155c42b6bcd3303a4827dde0e94077826d5` |
| 8 | `theorem` | [pow_multiset_sum_mem_span_pow](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/pow-multiset-sum-mem-span-pow--cd22b84dec890cd559fd40ea.md) | 117 | `result-track:cd22b84dec890cd559fd40ea98558cbe4f23884ef74be6eaafe0211dc5b8d780` |
| 9 | `theorem` | [sum_pow_mem_span_pow](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/sum-pow-mem-span-pow--d77cd50ba0bb4b0744f0a23c.md) | 143 | `result-track:d77cd50ba0bb4b0744f0a23c94b75a9fb865e564777182405acec3414b0737d5` |
| 10 | `theorem` | [span_pow_eq_top](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/span-pow-eq-top--b1ee1f03dbe3caba063a4465.md) | 149 | `result-track:b1ee1f03dbe3caba063a4465ddd90ff6a49ddf8cfca7c838589d48c0b8874c11` |
| 11 | `theorem` | [span_range_pow_eq_top](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/span-range-pow-eq-top--bc1742026be39fc867b89826.md) | 173 | `result-track:bc1742026be39fc867b89826b5fec3bffa6c0f4df12d202b548e1635bd92c00e` |
| 12 | `theorem` | [prod_mem](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/prod-mem--3a6697bed7c5254d3f67feb6.md) | 183 | `result-track:3a6697bed7c5254d3f67feb69b080eeec7d17bca21199c4d5dda8c77b55fc450` |
| 13 | `def` | [equivFinTwo](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/equivfintwo--c98ca481c2de7579edaf2917.md) | 203 | `declaration-track:c98ca481c2de7579edaf291729b9c5bf686bc1cdf4246ea6b34246b282a441bd` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/instance--f0d3daf0f0bfbfd8d6380b10.md) | 209 | `declaration-track:f0d3daf0f0bfbfd8d6380b1027b6056f0602b3a6c287ea718ce9401d60c7cd2d` |
| 15 | `instance` | [isSimpleOrder](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/issimpleorder--7b095ec608072fd8f19a2d44.md) | 213 | `declaration-track:7b095ec608072fd8f19a2d44bb82318235bdc4102212ffc17319a1981f5fc8f7` |
| 16 | `theorem` | [exists_not_isUnit_of_not_isField](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/exists-not-isunit-of-not-isfield--1e1339df971a7ae2a44be4df.md) | 226 | `result-track:1e1339df971a7ae2a44be4dfdee4d7b2a041ab9597b0d8e50482e6dc863ac76f` |
| 17 | `theorem` | [not_isField_iff_exists_ideal_bot_lt_and_lt_top](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/not-isfield-iff-exists-ideal-bot-lt-and-lt-top--a95351f51c398143ada2c34c.md) | 234 | `result-track:a95351f51c398143ada2c34caee96fdf3f7cdaba22e883bb417d61ab43491267` |
| 18 | `theorem` | [not_isField_iff_exists_prime](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/not-isfield-iff-exists-prime--47e8432e545d5ad8f681ab9e.md) | 249 | `result-track:47e8432e545d5ad8f681ab9e4f501e3cf857001cc0d3411a76512862d4d67da0` |
| 19 | `theorem` | [isField_iff_isSimpleOrder_ideal](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/isfield-iff-issimpleorder-ideal--737e78efdd48cc72c29b2b3f.md) | 261 | `result-track:737e78efdd48cc72c29b2b3f535bc81cce2ebeb484d26c19de4458512093862a` |
| 20 | `theorem` | [ne_bot_of_isMaximal_of_not_isField](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/ne-bot-of-ismaximal-of-not-isfield--0bece2caaa3eec3ec64fbe01.md) | 272 | `result-track:0bece2caaa3eec3ec64fbe01f76fde03112c9734af9acf7a9d41113ab611b73c` |
| 21 | `theorem` | [bot_lt_of_maximal](../../../../mathematics/Algebra/Basic/Variant1512965b0a3f4a3caaba25df4bdd2a84d68d632d5913a339d3d7db3af7ebef28.lean/declarations/bot-lt-of-maximal--7aca07b2b51065dad61aa0f9.md) | 286 | `result-track:7aca07b2b51065dad61aa0f9e8345bf69489d2d6d7ff145f88a1899e59de2b4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
