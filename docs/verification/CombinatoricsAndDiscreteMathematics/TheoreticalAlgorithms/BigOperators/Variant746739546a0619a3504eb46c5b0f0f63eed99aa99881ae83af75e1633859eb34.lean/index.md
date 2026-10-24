# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BigOperators.Variant746739546a0619a3504eb46c5b0f0f63eed99aa99881ae83af75e1633859eb34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2daafb78d2a915ee58f1c28ec0f3aa76f97fb48",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant746739546a0619a3504eb46c5b0f0f63eed99aa99881ae83af75e1633859eb34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant746739546a0619a3504eb46c5b0f0f63eed99aa99881ae83af75e1633859eb34.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant746739546a0619a3504eb46c5b0f0f63eed99aa99881ae83af75e1633859eb34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2daafb78d2a915ee58f1c28ec0f3aa76f97fb48`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant746739546a0619a3504eb46c5b0f0f63eed99aa99881ae83af75e1633859eb34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant746739546a0619a3504eb46c5b0f0f63eed99aa99881ae83af75e1633859eb34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Finsupp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Pairwise` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.support_sum_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant746739546a0619a3504eb46c5b0f0f63eed99aa99881ae83af75e1633859eb34.lean/declarations/list-support-sum-subset--42e1cf2e577d2e254d3a1125.md) | 37 | `result-track:42e1cf2e577d2e254d3a1125d6892a7561c04e26816faf4729d2095d613575c0` |
| 2 | `theorem` | [Multiset.support_sum_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant746739546a0619a3504eb46c5b0f0f63eed99aa99881ae83af75e1633859eb34.lean/declarations/multiset-support-sum-subset--8477b325942169bb21d9773c.md) | 45 | `result-track:8477b325942169bb21d9773c5db8450208d7df1bf49cbfde551724760a7d078b` |
| 3 | `theorem` | [Finset.support_sum_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant746739546a0619a3504eb46c5b0f0f63eed99aa99881ae83af75e1633859eb34.lean/declarations/finset-support-sum-subset--f0c542bae261f3c82f5291ae.md) | 51 | `result-track:f0c542bae261f3c82f5291aec81f390cf81ec16e38d7e07104b759d329a26e40` |
| 4 | `theorem` | [List.mem_foldr_sup_support_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant746739546a0619a3504eb46c5b0f0f63eed99aa99881ae83af75e1633859eb34.lean/declarations/list-mem-foldr-sup-support-iff--4c3af62095acff03abf7af44.md) | 55 | `result-track:4c3af62095acff03abf7af447f2752864460b6f6c035eab0aa2196b4ffb0782e` |
| 5 | `theorem` | [Multiset.mem_sup_map_support_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant746739546a0619a3504eb46c5b0f0f63eed99aa99881ae83af75e1633859eb34.lean/declarations/multiset-mem-sup-map-support-iff--92b2b8881b438fb0e951e728.md) | 63 | `result-track:92b2b8881b438fb0e951e728831bd989c37b6852373f75690790c70f0ddeb247` |
| 6 | `theorem` | [Finset.mem_sup_support_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant746739546a0619a3504eb46c5b0f0f63eed99aa99881ae83af75e1633859eb34.lean/declarations/finset-mem-sup-support-iff--eef1ae8a19468bcee2ac847e.md) | 69 | `result-track:eef1ae8a19468bcee2ac847ea78269db9cf28229cb581eaf92839b18b114d142` |
| 7 | `theorem` | [List.support_sum_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant746739546a0619a3504eb46c5b0f0f63eed99aa99881ae83af75e1633859eb34.lean/declarations/list-support-sum-eq--65359c0020ac8426c08ab965.md) | 75 | `result-track:65359c0020ac8426c08ab965a7e7011babff01a1850d4b0d7a9ed379dfd9e035` |
| 8 | `theorem` | [Multiset.support_sum_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant746739546a0619a3504eb46c5b0f0f63eed99aa99881ae83af75e1633859eb34.lean/declarations/multiset-support-sum-eq--48f9287a7a15e801176bdbc6.md) | 92 | `result-track:48f9287a7a15e801176bdbc6c9845ce6f100b730b2330278ad47c554d7eb4f11` |
| 9 | `theorem` | [Finset.support_sum_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant746739546a0619a3504eb46c5b0f0f63eed99aa99881ae83af75e1633859eb34.lean/declarations/finset-support-sum-eq--ad1f71b16ef98b2e6be1da24.md) | 105 | `result-track:ad1f71b16ef98b2e6be1da2467664385b65c1344d0bd327970a3f531806085b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
