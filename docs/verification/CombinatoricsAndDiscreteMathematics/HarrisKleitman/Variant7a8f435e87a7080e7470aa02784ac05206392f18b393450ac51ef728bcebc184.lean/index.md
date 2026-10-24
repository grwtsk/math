# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.HarrisKleitman.Variant7a8f435e87a7080e7470aa02784ac05206392f18b393450ac51ef728bcebc184

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d28f68581694269353f48f25cc961cc2f33d25e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant7a8f435e87a7080e7470aa02784ac05206392f18b393450ac51ef728bcebc184.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant7a8f435e87a7080e7470aa02784ac05206392f18b393450ac51ef728bcebc184.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant7a8f435e87a7080e7470aa02784ac05206392f18b393450ac51ef728bcebc184.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d28f68581694269353f48f25cc961cc2f33d25e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant7a8f435e87a7080e7470aa02784ac05206392f18b393450ac51ef728bcebc184.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant7a8f435e87a7080e7470aa02784ac05206392f18b393450ac51ef728bcebc184.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SetFamily.Compression.Down` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsLowerSet.nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant7a8f435e87a7080e7470aa02784ac05206392f18b393450ac51ef728bcebc184.lean/declarations/islowerset-nonmembersubfamily--fe6e33bc65d8ed275233cf04.md) | 36 | `result-track:fe6e33bc65d8ed275233cf04f6248bc1c88ce50dc1880ea26b2abcd05ad3fc48` |
| 2 | `theorem` | [IsLowerSet.memberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant7a8f435e87a7080e7470aa02784ac05206392f18b393450ac51ef728bcebc184.lean/declarations/islowerset-membersubfamily--0298c96138460ca85ec56c31.md) | 42 | `result-track:0298c96138460ca85ec56c31d87ba79908e2fef40b0339b395a4c2878726b3bb` |
| 3 | `theorem` | [IsLowerSet.memberSubfamily_subset_nonMemberSubfamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant7a8f435e87a7080e7470aa02784ac05206392f18b393450ac51ef728bcebc184.lean/declarations/islowerset-membersubfamily-subset-nonmembersubfamily--5faab2921d38e7407a1d79bd.md) | 49 | `result-track:5faab2921d38e7407a1d79bd15e5d625d1def7a71bb6ba116f83ca860b6e42b8` |
| 4 | `theorem` | [IsLowerSet.le_card_inter_finset'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant7a8f435e87a7080e7470aa02784ac05206392f18b393450ac51ef728bcebc184.lean/declarations/islowerset-le-card-inter-finset--9d09e5d38e8e54f7014919fd.md) | 56 | `result-track:9d09e5d38e8e54f7014919fdccb6eca8200e096dab839d87e46d00c634f4781a` |
| 5 | `theorem` | [IsLowerSet.le_card_inter_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant7a8f435e87a7080e7470aa02784ac05206392f18b393450ac51ef728bcebc184.lean/declarations/islowerset-le-card-inter-finset--3280402f80c25aa5091fdf01.md) | 97 | `result-track:3280402f80c25aa5091fdf018c876278905ee33d54f5d7e1e5ca92ebb886e99f` |
| 6 | `theorem` | [IsUpperSet.card_inter_le_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant7a8f435e87a7080e7470aa02784ac05206392f18b393450ac51ef728bcebc184.lean/declarations/isupperset-card-inter-le-finset--0f96f4fcbce5b16be36ea68e.md) | 103 | `result-track:0f96f4fcbce5b16be36ea68e0fca600c80545c8bfa82b437431791f72eab5ea5` |
| 7 | `theorem` | [IsLowerSet.card_inter_le_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant7a8f435e87a7080e7470aa02784ac05206392f18b393450ac51ef728bcebc184.lean/declarations/islowerset-card-inter-le-finset--28a154982a900e7243c49e2a.md) | 114 | `result-track:28a154982a900e7243c49e2a48d94907ab793c575fc69035407458c6ccbbcba9` |
| 8 | `theorem` | [IsUpperSet.le_card_inter_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/HarrisKleitman/Variant7a8f435e87a7080e7470aa02784ac05206392f18b393450ac51ef728bcebc184.lean/declarations/isupperset-le-card-inter-finset--dea950f3e237ec68452e25b7.md) | 122 | `result-track:dea950f3e237ec68452e25b71ff6280b4ad360fa371622791daf3af039e5e9f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
