# Verification target: GRWTSK.Algebra.GroupTheory.Card.Variant41f200b7e7ce1f925367f5f54972f291f636df995e71f66a81a3d50e622f1353

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a3149f1e6ceb01da98549d58f815d89a3acf434",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Card/Variant41f200b7e7ce1f925367f5f54972f291f636df995e71f66a81a3d50e622f1353.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Card/Variant41f200b7e7ce1f925367f5f54972f291f636df995e71f66a81a3d50e622f1353.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Card/Variant41f200b7e7ce1f925367f5f54972f291f636df995e71f66a81a3d50e622f1353.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a3149f1e6ceb01da98549d58f815d89a3acf434`.

Source path: `GRWTSK/Algebra/GroupTheory/Card/Variant41f200b7e7ce1f925367f5f54972f291f636df995e71f66a81a3d50e622f1353.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Card/Variant41f200b7e7ce1f925367f5f54972f291f636df995e71f66a81a3d50e622f1353.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Coset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_eq_card_quotient_mul_card_subgroup](../../../../../mathematics/Algebra/GroupTheory/Card/Variant41f200b7e7ce1f925367f5f54972f291f636df995e71f66a81a3d50e622f1353.lean/declarations/card-eq-card-quotient-mul-card-subgroup--bfcad7a8e116e47fe6784fe8.md) | 34 | `result-track:bfcad7a8e116e47fe6784fe8759560d9cf75f1de553ed3c0958fca2f3703ee23` |
| 2 | `lemma` | [card_mul_eq_card_subgroup_mul_card_quotient](../../../../../mathematics/Algebra/GroupTheory/Card/Variant41f200b7e7ce1f925367f5f54972f291f636df995e71f66a81a3d50e622f1353.lean/declarations/card-mul-eq-card-subgroup-mul-card-quotient--b04c9c97263ea78acfdc891c.md) | 39 | `result-track:b04c9c97263ea78acfdc891ca9624963ea8913ad645dd24638e4cf580ce72a99` |
| 3 | `theorem` | [card_subgroup_dvd_card](../../../../../mathematics/Algebra/GroupTheory/Card/Variant41f200b7e7ce1f925367f5f54972f291f636df995e71f66a81a3d50e622f1353.lean/declarations/card-subgroup-dvd-card--71c7c69f92f1b9b8942dfc85.md) | 50 | `result-track:71c7c69f92f1b9b8942dfc8540023cded348c24dc7ed98f79efa0133ded5507d` |
| 4 | `theorem` | [card_quotient_dvd_card](../../../../../mathematics/Algebra/GroupTheory/Card/Variant41f200b7e7ce1f925367f5f54972f291f636df995e71f66a81a3d50e622f1353.lean/declarations/card-quotient-dvd-card--7689da4c8a38dd7607514aa0.md) | 54 | `result-track:7689da4c8a38dd7607514aa01aa1ad13e876efc52817e3da3050bc84e849c42a` |
| 5 | `theorem` | [card_dvd_of_injective](../../../../../mathematics/Algebra/GroupTheory/Card/Variant41f200b7e7ce1f925367f5f54972f291f636df995e71f66a81a3d50e622f1353.lean/declarations/card-dvd-of-injective--fafa95813ace9ce2904369a7.md) | 60 | `result-track:fafa95813ace9ce2904369a776344f280ac6641e52d189806f30910259e15026` |
| 6 | `theorem` | [card_dvd_of_le](../../../../../mathematics/Algebra/GroupTheory/Card/Variant41f200b7e7ce1f925367f5f54972f291f636df995e71f66a81a3d50e622f1353.lean/declarations/card-dvd-of-le--10bae2d87e1f8c5c812d6882.md) | 67 | `result-track:10bae2d87e1f8c5c812d68820b62a7a9298b7820306aa476df29ff618b8e6060` |
| 7 | `theorem` | [card_comap_dvd_of_injective](../../../../../mathematics/Algebra/GroupTheory/Card/Variant41f200b7e7ce1f925367f5f54972f291f636df995e71f66a81a3d50e622f1353.lean/declarations/card-comap-dvd-of-injective--a742c7d8f7fab7324cba74e9.md) | 71 | `result-track:a742c7d8f7fab7324cba74e92d213c0f077d3a5f8764a7c7f1db9f729a60e22c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
