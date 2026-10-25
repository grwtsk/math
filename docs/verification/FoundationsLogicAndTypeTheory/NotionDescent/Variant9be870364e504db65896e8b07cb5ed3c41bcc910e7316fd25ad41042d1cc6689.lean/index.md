# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.NotionDescent.Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d031cf8520ba784a8558cdb7a1215107ee8e1861",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d031cf8520ba784a8558cdb7a1215107ee8e1861`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Notion` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Descent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Find` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DeterminesAt](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/determinesat--59ff7edcb38e22c5bb62905d.md) | 28 | `declaration-track:59ff7edcb38e22c5bb62905d1498f62592dcbd4acb02f0e61fe6152d582407cd` |
| 2 | `abbrev` | [InformationSufficientAt](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/informationsufficientat--6c7a5670f4a4aeec3ef431e7.md) | 33 | `declaration-track:6c7a5670f4a4aeec3ef431e7ed5c7e6f1e8ea8dce990624758636030aa5e8f20` |
| 3 | `def` | [DeterminesPredicateAt](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/determinespredicateat--9195da9d1b19651ac86a04c1.md) | 38 | `declaration-track:9195da9d1b19651ac86a04c1fb00e5e14f2da9c1475acda6dc5f4ea02f4ab7a6` |
| 4 | `theorem` | [predicate_determines_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/predicate-determines-iff--db85858c973ff61561ede9a6.md) | 43 | `result-track:db85858c973ff61561ede9a631b14302d418468a1706b4c4d10229fe4699d672` |
| 5 | `def` | [notionProjection](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/notionprojection--eb63af364fc9b83e09bac60d.md) | 49 | `declaration-track:eb63af364fc9b83e09bac60dc562fb1019edbee6872959dda6227a87ff2b3744` |
| 6 | `theorem` | [notionProjection_eq_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/notionprojection-eq-iff--a2555e67aaa9d498eebea579.md) | 54 | `result-track:a2555e67aaa9d498eebea57939cd6015ba86b0301ece4ec4609ff5db033f5336` |
| 7 | `theorem` | [determines_iff_descendsThrough](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/determines-iff-descendsthrough--1f69775d31cee91fd7fe7029.md) | 61 | `result-track:1f69775d31cee91fd7fe7029f98e9e92528ff4ad834a00c64cd4d7939146fbc1` |
| 8 | `theorem` | [determinesPredicate_iff_descendsThrough](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/determinespredicate-iff-descendsthrough--cd00f3e27a242d6411864c7c.md) | 67 | `result-track:cd00f3e27a242d6411864c7c54250c5d58b4bb5c0b6fd5a6f0e85bd61e114679` |
| 9 | `def` | [notionTargetLift](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/notiontargetlift--e6c2cb6d16e8befb6a1a42bd.md) | 78 | `declaration-track:e6c2cb6d16e8befb6a1a42bde5645b0a534367dbfb9f6d4087fd8f0b60dbd70c` |
| 10 | `theorem` | [notionTargetLift_projection](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/notiontargetlift-projection--14bee31845830063853640ac.md) | 86 | `result-track:14bee31845830063853640acce338c48a6172df6dad4c041deac9ade788f62c2` |
| 11 | `theorem` | [determines_of_quotient_factorization](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/determines-of-quotient-factorization--74108e459aba67b6a557c7e0.md) | 93 | `result-track:74108e459aba67b6a557c7e059c5a4c3e313107939cfa1b7002044b4be3de792` |
| 12 | `theorem` | [notionTargetLift_unique](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/notiontargetlift-unique--7d8b15a05fe0f8deafaae42e.md) | 102 | `result-track:7d8b15a05fe0f8deafaae42efabdcb7a8ae96bb1805d66a9c56445090d487e2d` |
| 13 | `theorem` | [determines_iff_unique_quotient_factorization](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/determines-iff-unique-quotient-factorization--b33c10763e1c552e56a79db1.md) | 112 | `result-track:b33c10763e1c552e56a79db12baec8f78ef6c103ff39143f260caec0bef9da33` |
| 14 | `theorem` | [determines_of_budget_le](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/determines-of-budget-le--7b63a7e755bc49e8a88b1c98.md) | 125 | `result-track:7b63a7e755bc49e8a88b1c98eab005417dc35b4f5c7c28d0e531f15b6114c12d` |
| 15 | `theorem` | [predicate_determines_of_budget_le](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/predicate-determines-of-budget-le--6fb68821b0a266aa8b259877.md) | 131 | `result-track:6fb68821b0a266aa8b2598774859f036d1592d94c5e48ced9af70f40aa944090` |
| 16 | `def` | [budgetTransition](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/budgettransition--f19851eab6df1ed9788b464b.md) | 138 | `declaration-track:f19851eab6df1ed9788b464b4f410084118283064a1819a34b65451e22bf09ad` |
| 17 | `theorem` | [budgetTransition_projection](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/budgettransition-projection--be6de1bc363735ea0f0af56c.md) | 145 | `result-track:be6de1bc363735ea0f0af56c4fbcfb5db16c8e86732e57720d3c561a83c25abe` |
| 18 | `theorem` | [budgetTransition_id](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/budgettransition-id--00c0001e80c1ae0bfb26d2b0.md) | 151 | `result-track:00c0001e80c1ae0bfb26d2b03b9ac507edc423ad578e01dd06dbbcdef418fbc7` |
| 19 | `theorem` | [budgetTransition_comp](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/budgettransition-comp--1196b9214b0e5e08a22e8dbe.md) | 158 | `result-track:1196b9214b0e5e08a22e8dbefba038023ae335540a682270981f5a3c83d470aa` |
| 20 | `def` | [InformationRadius](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/informationradius--1e335f16aa5af4bbc57f706f.md) | 167 | `declaration-track:1e335f16aa5af4bbc57f706f2a82be35335dece43162e632f30f4f0e072e5738` |
| 21 | `theorem` | [informationRadius_determines](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/informationradius-determines--26b39b331bc192cc18de966d.md) | 174 | `result-track:26b39b331bc192cc18de966d24e444156595c1b4234f06d637184007394f6389` |
| 22 | `theorem` | [informationRadius_minimal](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/informationradius-minimal--49640f68932125cb98e4cd4f.md) | 181 | `result-track:49640f68932125cb98e4cd4f29790f2dfef5cbe4a7342bf26bed27280073a9bb` |
| 23 | `theorem` | [informationRadius_le](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/informationradius-le--6d76a8095d1f13f3f3bd0275.md) | 189 | `result-track:6d76a8095d1f13f3f3bd027518492c098563ad8391ca231254427605e76ccd1c` |
| 24 | `theorem` | [determines_iff_informationRadius_le](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/determines-iff-informationradius-le--48ed3c4a2275ef14275f44ab.md) | 197 | `result-track:48ed3c4a2275ef14275f44abf9a73c6d66b636bf3290ed00277e3423ec5f843d` |
| 25 | `def` | [vectorPolicy](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/vectorpolicy--01902de98f4c37ea9b509ca8.md) | 208 | `declaration-track:01902de98f4c37ea9b509ca8ee8aa172a5bde117ba04101a6283b8eba0a1af9b` |
| 26 | `theorem` | [equivalent_at_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/equivalent-at-zero--b1edc87bbe11edbaca366d85.md) | 213 | `result-track:b1edc87bbe11edbaca366d85d86cb548b546e0f669543cd36dbd8fe0749f0658` |
| 27 | `theorem` | [identity_determined_at_one](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/identity-determined-at-one--70c55d5908d45f7cc713c3eb.md) | 219 | `result-track:70c55d5908d45f7cc713c3eb0c3abe235805c0f7fd0bd6121d38c160dcd455b2` |
| 28 | `theorem` | [identity_determined_at_two](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/identity-determined-at-two--eab4aa2456aa412a1e5668bb.md) | 224 | `result-track:eab4aa2456aa412a1e5668bb2f68f69bf40f03e83898ab63320ac167df241ed5` |
| 29 | `theorem` | [identity_not_determined_at_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/identity-not-determined-at-zero--936a4371a772ffaf96e9a70b.md) | 228 | `result-track:936a4371a772ffaf96e9a70bb907493d6c2374af6380b33c091c6a87355caf76` |
| 30 | `theorem` | [budget_equivalence_does_not_reverse](../../../../mathematics/FoundationsLogicAndTypeTheory/NotionDescent/Variant9be870364e504db65896e8b07cb5ed3c41bcc910e7316fd25ad41042d1cc6689.lean/declarations/budget-equivalence-does-not-reverse--b70468b7ae1bd0921c8f37d4.md) | 234 | `result-track:b70468b7ae1bd0921c8f37d401aed4cb9315d41f7d748b11cde6ecdf49553780` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
