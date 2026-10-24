# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.StronglyRegular.Variantc8449bcc658629fedc7101bd1a7e4bae7bee482c20471bc59958756730d092bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63564ffc39d03337238fd68d90934758b5080e1b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantc8449bcc658629fedc7101bd1a7e4bae7bee482c20471bc59958756730d092bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantc8449bcc658629fedc7101bd1a7e4bae7bee482c20471bc59958756730d092bb.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantc8449bcc658629fedc7101bd1a7e4bae7bee482c20471bc59958756730d092bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63564ffc39d03337238fd68d90934758b5080e1b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantc8449bcc658629fedc7101bd1a7e4bae7bee482c20471bc59958756730d092bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantc8449bcc658629fedc7101bd1a7e4bae7bee482c20471bc59958756730d092bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.DoubleCounting` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.AdjMatrix` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSRGWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantc8449bcc658629fedc7101bd1a7e4bae7bee482c20471bc59958756730d092bb.lean/declarations/issrgwith--96d332d4261aca811036d8d6.md) | 49 | `declaration-track:96d332d4261aca811036d8d6f24588652bf8246b962908ed57de3531366ca3a1` |
| 2 | `theorem` | [bot_strongly_regular](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantc8449bcc658629fedc7101bd1a7e4bae7bee482c20471bc59958756730d092bb.lean/declarations/bot-strongly-regular--834afb134e3df84f6f62a658.md) | 61 | `result-track:834afb134e3df84f6f62a658fc167cafff60439a5014e6bbfb331df2fc65a2e3` |
| 3 | `theorem` | [IsSRGWith.top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantc8449bcc658629fedc7101bd1a7e4bae7bee482c20471bc59958756730d092bb.lean/declarations/issrgwith-top--c967ab65b5bc5245d5bb05ca.md) | 73 | `result-track:c967ab65b5bc5245d5bb05cacd7f8f131cfca00cffce1bb71aeb4ec2bf878c88` |
| 4 | `theorem` | [IsSRGWith.card_neighborFinset_union_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantc8449bcc658629fedc7101bd1a7e4bae7bee482c20471bc59958756730d092bb.lean/declarations/issrgwith-card-neighborfinset-union-eq--0b7123c4ddd74e11f92e3639.md) | 84 | `result-track:0b7123c4ddd74e11f92e363940559e55f3ed339006d3a538900a0abb733923e0` |
| 5 | `theorem` | [IsSRGWith.card_neighborFinset_union_of_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantc8449bcc658629fedc7101bd1a7e4bae7bee482c20471bc59958756730d092bb.lean/declarations/issrgwith-card-neighborfinset-union-of-not-adj--dc7872f79a58ff6043dde833.md) | 102 | `result-track:dc7872f79a58ff6043dde833042d4ee3c532465458a343e34e18736fe7a8caae` |
| 6 | `theorem` | [IsSRGWith.card_neighborFinset_union_of_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantc8449bcc658629fedc7101bd1a7e4bae7bee482c20471bc59958756730d092bb.lean/declarations/issrgwith-card-neighborfinset-union-of-adj--c3719fb227e3e7fe98ab7141.md) | 110 | `result-track:c3719fb227e3e7fe98ab7141f4a38ded948ac1521803feef0bba95e558dbdaf0` |
| 7 | `theorem` | [compl_neighborFinset_sdiff_inter_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantc8449bcc658629fedc7101bd1a7e4bae7bee482c20471bc59958756730d092bb.lean/declarations/compl-neighborfinset-sdiff-inter-eq--070f3e836720b964585cb8c6.md) | 117 | `result-track:070f3e836720b964585cb8c6bf582d0f39ff5cf172be939de391e90bcb9e137c` |
| 8 | `theorem` | [sdiff_compl_neighborFinset_inter_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantc8449bcc658629fedc7101bd1a7e4bae7bee482c20471bc59958756730d092bb.lean/declarations/sdiff-compl-neighborfinset-inter-eq--ab89e01670d8535ac76adf55.md) | 125 | `result-track:ab89e01670d8535ac76adf55f19bb183807b6396bbaca76883f31f6f337ed554` |
| 9 | `theorem` | [IsSRGWith.compl_is_regular](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantc8449bcc658629fedc7101bd1a7e4bae7bee482c20471bc59958756730d092bb.lean/declarations/issrgwith-compl-is-regular--d659db45b4e1996512b94121.md) | 137 | `result-track:d659db45b4e1996512b94121cc3d71d4d2771e31dd695513760aaddbafb04412` |
| 10 | `theorem` | [IsSRGWith.card_commonNeighbors_eq_of_adj_compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantc8449bcc658629fedc7101bd1a7e4bae7bee482c20471bc59958756730d092bb.lean/declarations/issrgwith-card-commonneighbors-eq-of-adj-compl--91a181d547eff689aed63a18.md) | 144 | `result-track:91a181d547eff689aed63a189c76f569dc31777004c38b4587bc9cca20a79cd2` |
| 11 | `theorem` | [IsSRGWith.card_commonNeighbors_eq_of_not_adj_compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantc8449bcc658629fedc7101bd1a7e4bae7bee482c20471bc59958756730d092bb.lean/declarations/issrgwith-card-commonneighbors-eq-of-not-adj-compl--19ea49793349e45e264833cd.md) | 160 | `result-track:19ea49793349e45e264833cd2fcff4a165776e08866d08249a554ef4c096a6b2` |
| 12 | `theorem` | [IsSRGWith.compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantc8449bcc658629fedc7101bd1a7e4bae7bee482c20471bc59958756730d092bb.lean/declarations/issrgwith-compl--6ddcc68c056170327774a6c2.md) | 173 | `result-track:6ddcc68c056170327774a6c2d3dbba5a42080a7044c6e1867d8580c9c0d5b45b` |
| 13 | `theorem` | [IsSRGWith.param_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantc8449bcc658629fedc7101bd1a7e4bae7bee482c20471bc59958756730d092bb.lean/declarations/issrgwith-param-eq--1d724b246548b9eeadceb907.md) | 184 | `result-track:1d724b246548b9eeadceb907cc07dd2bb5143f8c5191631d779c82d7f720449e` |
| 14 | `theorem` | [IsSRGWith.matrix_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/StronglyRegular/Variantc8449bcc658629fedc7101bd1a7e4bae7bee482c20471bc59958756730d092bb.lean/declarations/issrgwith-matrix-eq--3fd9b9526beb1b62440facac.md) | 217 | `result-track:3fd9b9526beb1b62440facac41fc8c97359e8132a4cf459a94b992cfffff11b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
