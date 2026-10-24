# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Collect.Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77e33127e3b173c8db8dbb520f82787eb54c4999",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77e33127e3b173c8db8dbb520f82787eb54c4999`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Bootstrap` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Monadic.Basic` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IterM.toArray.go_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-toarray-go-eq--6e2dd334c62c3155c3cfd49f.md) | 33 | `result-track:6e2dd334c62c3155c3cfd49f48af71913de2a8db06e6f9c0c1da4f750b734220` |
| 2 | `theorem` | [IterM.toArray.go.aux₁](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-toarray-go-aux--1b3517c3a3db86d39f2442a3.md) | 48 | `result-track:1b3517c3a3db86d39f2442a3cfae233e5c56a7fbbbd9bc74b20e96eeaef45fc5` |
| 3 | `theorem` | [IterM.toArray.go.aux₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-toarray-go-aux--db6f76c90e90c62fab9af4b4.md) | 57 | `result-track:db6f76c90e90c62fab9af4b4f759d2ced98e5c29cd55134a3255d71207d960a2` |
| 4 | `theorem` | [IterM.toArray_eq_match_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-toarray-eq-match-step--25b084c11c4c736feaae0c6d.md) | 69 | `result-track:25b084c11c4c736feaae0c6dfed5c81ed56ed5c9ee6f545a152c348ab9142793` |
| 5 | `theorem` | [IterM.toArray_ensureTermination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-toarray-ensuretermination--5fa755c859eada204dc12a33.md) | 83 | `result-track:5fa755c859eada204dc12a33bae894d3eadb78b4f11942a7da2cbcb8d04d9193` |
| 6 | `theorem` | [IterM.toArray_ensureTermination_eq_match_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-toarray-ensuretermination-eq-match-step--08c9a902c4bf6538efe56d16.md) | 88 | `result-track:08c9a902c4bf6538efe56d166aeadd2f2e3b481d1c7b7b0c2f69128c3885cfc5` |
| 7 | `theorem` | [IterM.toList_ensureTermination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-tolist-ensuretermination--3afeab3ce377a661e96a14a9.md) | 98 | `result-track:3afeab3ce377a661e96a14a9ab8342d72929cca0f6550ec9aa8cf57e6d131c10` |
| 8 | `theorem` | [IterM.toList_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-tolist-toarray--0eec3372997f3abe6263693f.md) | 104 | `result-track:0eec3372997f3abe6263693fb9c78f65f4889831a14de19285515875c47753af` |
| 9 | `theorem` | [IterM.toList_toArray_ensureTermination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-tolist-toarray-ensuretermination--3cd7fbfe6549a9ccced94eab.md) | 109 | `result-track:3cd7fbfe6549a9ccced94eabe551635a1fe3bed7d9a54435e4eff0f82271c49c` |
| 10 | `theorem` | [IterM.toArray_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-toarray-tolist--8126517c44574171d4ab875f.md) | 115 | `result-track:8126517c44574171d4ab875f9e7bae0383e8c0e0bc8603fa06ccb1eb912ad7e2` |
| 11 | `theorem` | [IterM.toArray_toList_ensureTermination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-toarray-tolist-ensuretermination--84e0d9f439d484d2f2aefdba.md) | 120 | `result-track:84e0d9f439d484d2f2aefdbac3918c8f5174790f9b70ed183ece5dbff0cc43c1` |
| 12 | `theorem` | [IterM.toList_eq_match_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-tolist-eq-match-step--c9525c0824e32b24a5f3e4ac.md) | 125 | `result-track:c9525c0824e32b24a5f3e4aca388103b87542fa93c661ce6cd426bcdc5386da7` |
| 13 | `theorem` | [IterM.toList_ensureTermination_eq_match_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-tolist-ensuretermination-eq-match-step--f4af745f0f12dc8e2a5ca835.md) | 138 | `result-track:f4af745f0f12dc8e2a5ca8352d8748ad573277068c70b2dbd38e449147e4f4be` |
| 14 | `theorem` | [IterM.toListRev_ensureTermination_eq_toListRev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-tolistrev-ensuretermination-eq-tolistrev--fb69b117e83f8a5adfc32d52.md) | 148 | `result-track:fb69b117e83f8a5adfc32d52988dc2f274fac5721adf3f149613bb426d68c094` |
| 15 | `theorem` | [IterM.toListRev.go_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-tolistrev-go-eq--8d20350052d43ee939a1fe3a.md) | 153 | `result-track:8d20350052d43ee939a1fe3ade65e126c4d84bc869d8d0a93a51fa0c3c96c461` |
| 16 | `theorem` | [IterM.toListRev.go.aux₁](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-tolistrev-go-aux--4bb2383cc3a709c3966e6696.md) | 167 | `result-track:4bb2383cc3a709c3966e6696772324b5956ee0aae27c877c8b505b5240ea6694` |
| 17 | `theorem` | [IterM.toListRev.go.aux₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-tolistrev-go-aux--8b4d0b9d38c3925a98fc2f26.md) | 180 | `result-track:8b4d0b9d38c3925a98fc2f26db5457f44572eec248c27309c6b5cee958c15e30` |
| 18 | `theorem` | [IterM.toListRev_eq_match_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-tolistrev-eq-match-step--9ed94e8d6372959c530b2a44.md) | 189 | `result-track:9ed94e8d6372959c530b2a44b1a85da8c6f272fdc3fa920e6c2c519d706ce93e` |
| 19 | `theorem` | [IterM.toListRev_ensureTermination_eq_match_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-tolistrev-ensuretermination-eq-match-step--af7df556b237390a06960ef5.md) | 202 | `result-track:af7df556b237390a06960ef5197bc5bb26c929973094dbca0ed03e9339c58c18` |
| 20 | `theorem` | [IterM.reverse_toListRev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-reverse-tolistrev--791d1598b824a94bba86b489.md) | 212 | `result-track:791d1598b824a94bba86b489d177f9b32f9dcb3d9ed0a151bfd94a456503dee3` |
| 21 | `theorem` | [IterM.reverse_toListRev_ensureTermination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-reverse-tolistrev-ensuretermination--c4dc1a01683bafa9f88470b6.md) | 224 | `result-track:c4dc1a01683bafa9f88470b60ad00fd9f1272aa0c53f672ec65dd88a2006b9e7` |
| 22 | `theorem` | [IterM.toListRev_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-tolistrev-eq--26b5b0c45cfe7552afed8db5.md) | 230 | `result-track:26b5b0c45cfe7552afed8db5fb21fa01ce6032a79e5cf4d7b40fe03771560970` |
| 23 | `theorem` | [IterM.toListRev_ensureTermination](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variantd1f029cc2dc136beb156c04fc54d8f524fb9dd799bf9ee03c7432a700ad168a1.lean/declarations/iterm-tolistrev-ensuretermination--f9e92f17209703d41e886727.md) | 235 | `result-track:f9e92f17209703d41e8867279e11b4ac5fec1f61584e0a292ab9a9a367d1a650` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
