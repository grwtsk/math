# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Ring.Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65186bfe8cd4979a8232a2a5315e060d64249de2",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65186bfe8cd4979a8232a2a5315e060d64249de2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_pow_eq_pow_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/declarations/prod-pow-eq-pow-sum--8c1e0d98f210740f93a4d555.md) | 37 | `result-track:8c1e0d98f210740f93a4d5556312f675b3679162afc1de38a88e2d0f15aa4486` |
| 2 | `theorem` | [sum_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/declarations/sum-mul--c4a26cd9d78a382cf14329e4.md) | 51 | `result-track:c4a26cd9d78a382cf14329e436110bcac41b973c83a774ad4e03938df342af0a` |
| 3 | `theorem` | [mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/declarations/mul-sum--b7d8f6dc08a4484083da262f.md) | 55 | `result-track:b7d8f6dc08a4484083da262f6e5f6962ef19e0c3df516029b7cf6f68f40bb6b9` |
| 4 | `theorem` | [sum_mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/declarations/sum-mul-sum--4ffc916004998a60c063f00f.md) | 59 | `result-track:4ffc916004998a60c063f00f3d927c09f0d920324f3c2863f3eac5008b6a272b` |
| 5 | `theorem` | [sum_mul_boole](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/declarations/sum-mul-boole--8a8665e4d47a9115400dc86a.md) | 73 | `result-track:8a8665e4d47a9115400dc86aca66fb91cc95f533c55074182c0b38254b2dd869` |
| 6 | `theorem` | [sum_boole_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/declarations/sum-boole-mul--6742d298e554a5156e3b0806.md) | 77 | `result-track:6742d298e554a5156e3b08064a6b71919396694675498323faae0e4364bda04b` |
| 7 | `theorem` | [sum_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/declarations/sum-div--7bed758f5c0c77d499c1645e.md) | 83 | `result-track:7bed758f5c0c77d499c1645e9f858ecb7b8d06893a5ee38caedc197b476d59d6` |
| 8 | `theorem` | [prod_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/declarations/prod-sum--06628700b75c9ed3a792a3e2.md) | 93 | `result-track:06628700b75c9ed3a792a3e2350360b1d2df2f56cc3703cae25bebe4de49218b` |
| 9 | `theorem` | [prod_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/declarations/prod-add--a64170aa9f50b255f8565e0d.md) | 127 | `result-track:a64170aa9f50b255f8565e0d07f7d877a37855aa7521ed1807c7eca1e1f85dcd` |
| 10 | `theorem` | [prod_add_ordered](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/declarations/prod-add-ordered--c0e7d553baf0c83d6d1c3401.md) | 159 | `result-track:c0e7d553baf0c83d6d1c3401fac6c03f7c77515baf22628f70fe5f365c1685bb` |
| 11 | `theorem` | [prod_sub_ordered](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/declarations/prod-sub-ordered--352348549c99557249389e20.md) | 184 | `result-track:352348549c99557249389e20f36370a6d7a00d5b5a6936becdf9ffa03991f429` |
| 12 | `theorem` | [prod_one_sub_ordered](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/declarations/prod-one-sub-ordered--898ec5745f970bc2e522cbf3.md) | 196 | `result-track:898ec5745f970bc2e522cbf3dad8191d1730a02a82b0c9dcbd9c833f913e077a` |
| 13 | `theorem` | [sum_pow_mul_eq_add_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/declarations/sum-pow-mul-eq-add-pow--92607fa8d28daaa3352962a0.md) | 204 | `result-track:92607fa8d28daaa3352962a0c4d028d9a77bc48795b54449f47c7c717e93f0f8` |
| 14 | `theorem` | [dvd_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/declarations/dvd-sum--2636e0074b40f4e483ec31a9.md) | 212 | `result-track:2636e0074b40f4e483ec31a9d9ce7bc34546a0c7b10582be8fa4413a06612ca3` |
| 15 | `theorem` | [prod_natCast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/declarations/prod-natcast--91698e6817efb13238a9baa0.md) | 217 | `result-track:91698e6817efb13238a9baa0a5f9d25563a2c503510c7d39c15d2cc240e600e3` |
| 16 | `theorem` | [prod_range_cast_nat_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/declarations/prod-range-cast-nat-sub--d87ce5191919fd13c4f29a8d.md) | 227 | `result-track:d87ce5191919fd13c4f29a8d19f91d7824880c96c54111c4c2fc4cc8782612b8` |
| 17 | `theorem` | [prod_powerset_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/declarations/prod-powerset-insert--5f33220f702b1e75ee671168.md) | 243 | `result-track:5f33220f702b1e75ee671168534e6911b45e44a98bd91f090e31bebbede1c51d` |
| 18 | `theorem` | [prod_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/declarations/prod-powerset--0db58abc7dfa050d0848bf15.md) | 264 | `result-track:0db58abc7dfa050d0848bf15f891b878063ed47a50b439eaa8417f800f6b3430` |
| 19 | `theorem` | [sum_range_succ_mul_sum_range_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Ring/Variant005d122e1d9a51ae7841853e1ce26f711a315bf51244925c60785082ff15525f.lean/declarations/sum-range-succ-mul-sum-range-succ--a2170f9f93b90c186d0739d7.md) | 270 | `result-track:a2170f9f93b90c186d0739d784e56a3744fce52f1618422375a6722043648613` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
