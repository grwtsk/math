# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e38a213d6370a699f156df65bd103a6239d682b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e38a213d6370a699f156df65bd103a6239d682b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.WithTop` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNReal.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENNReal.Inv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_finset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/declarations/coe-finset-sum--045d45a6d52b0f4cb6aaabdf.md) | 28 | `result-track:045d45a6d52b0f4cb6aaabdfd31b179ed909c9ede238533210e5b58e10862c5d` |
| 2 | `theorem` | [coe_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/declarations/coe-finset-prod--99e72d13de0e26fce13c5b7a.md) | 32 | `result-track:99e72d13de0e26fce13c5b7abe7d3b58b18ecbb927c792a4a6269bbce89d2901` |
| 3 | `theorem` | [toNNReal_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/declarations/tonnreal-prod--1446b4ca81c3147f25698bfd.md) | 36 | `result-track:1446b4ca81c3147f25698bfda47216a9f351e1226bff164e059d20e3c0d0cc7b` |
| 4 | `theorem` | [toReal_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/declarations/toreal-prod--f8f2ee0903a0223f918fb916.md) | 41 | `result-track:f8f2ee0903a0223f918fb9169b0b3df7a3b6af29237df8a9abef0dfec75d231b` |
| 5 | `theorem` | [ofReal_prod_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/declarations/ofreal-prod-of-nonneg--f5c7bac31d46837aa0633bbc.md) | 45 | `result-track:f5c7bac31d46837aa0633bbc21f2f24f83b7dd69b99fbb7cb5061b2eb6588ad1` |
| 6 | `theorem` | [iInf_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/declarations/iinf-sum--975e73b05ab26d48f378bbe4.md) | 50 | `result-track:975e73b05ab26d48f378bbe49168bbe3ca31d095004d8d39e174f799daf604eb` |
| 7 | `lemma` | [prod_ne_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/declarations/prod-ne-top--ebc2bf226dc0a3ce9fcca6aa.md) | 70 | `result-track:ebc2bf226dc0a3ce9fcca6aa83b4c933b95a8c9562f7215178aecb70bb365455` |
| 8 | `lemma` | [prod_lt_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/declarations/prod-lt-top--2ee27ea1595dc92ed7af943f.md) | 73 | `result-track:2ee27ea1595dc92ed7af943f4a01c659b49fbc2d5c0a08699e68eb8c4267380e` |
| 9 | `lemma` | [sum_eq_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/declarations/sum-eq-top--5abc83fa0fb7e3d04ac35e3f.md) | 76 | `result-track:5abc83fa0fb7e3d04ac35e3f61d2c03dad5837caaff0d6bc3cf66472c286478d` |
| 10 | `lemma` | [sum_ne_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/declarations/sum-ne-top--c709f4a16d3f4a0f439762ee.md) | 79 | `result-track:c709f4a16d3f4a0f439762ee3b39d4c70de837c372b2a3b12b1fe00218c926ca` |
| 11 | `lemma` | [sum_lt_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/declarations/sum-lt-top--03ca69a1109b85c8d35384b9.md) | 82 | `result-track:03ca69a1109b85c8d35384b96c10d68c5c7285810774aa51be1360daf60ddb32` |
| 12 | `theorem` | [lt_top_of_sum_ne_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/declarations/lt-top-of-sum-ne-top--a792a76e8b005ac61cbdf8d0.md) | 84 | `result-track:a792a76e8b005ac61cbdf8d0966def3fa7e31beada700b11af8b838935e28082` |
| 13 | `theorem` | [toNNReal_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/declarations/tonnreal-sum--a32bec3d35c9d6b5ec13ee53.md) | 90 | `result-track:a32bec3d35c9d6b5ec13ee53efa7446eafd701560a5f4d51e84cebce99084c8a` |
| 14 | `theorem` | [toReal_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/declarations/toreal-sum--7339b4728315ce988820443c.md) | 98 | `result-track:7339b4728315ce988820443c80ae379c82d4a1f6040b1ead58d64da31f4b454b` |
| 15 | `theorem` | [ofReal_sum_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/declarations/ofreal-sum-of-nonneg--92dc87b314731d05e26fcc41.md) | 103 | `result-track:92dc87b314731d05e26fcc41c4ff8ede858baa5381767e6d8061c66098d22d71` |
| 16 | `theorem` | [sum_lt_sum_of_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/declarations/sum-lt-sum-of-nonempty--ca2646f2cdfa0bb64f557dc9.md) | 108 | `result-track:ca2646f2cdfa0bb64f557dc94cdbb7afa368a7d1efbe0005415474e7c4ed0fb8` |
| 17 | `theorem` | [exists_le_of_sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/declarations/exists-le-of-sum-le--6f6ce6162dfa4e721ba66558.md) | 116 | `result-track:6f6ce6162dfa4e721ba66558c9e30d8927fa76176c0c269f40cf25d7e1ee7405` |
| 18 | `lemma` | [prod_inv_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/declarations/prod-inv-distrib--3137916eb3313b8caf28fe9f.md) | 125 | `result-track:3137916eb3313b8caf28fe9f1738ae72c86accadbd107d28790ff0ee2db513cd` |
| 19 | `lemma` | [finsetSum_iSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/declarations/finsetsum-isup--093a0cb2bdce3b0d32c74689.md) | 135 | `result-track:093a0cb2bdce3b0d32c746896fdfb5f9cdcc495627e269a56e087cbb57334190` |
| 20 | `lemma` | [finsetSum_iSup_of_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant5aab09c5a12d60ae590fd1bb83423323c407fdf0599f92f5a3362e541127fb73.lean/declarations/finsetsum-isup-of-monotone--0fefd2969229406ab17e5ea3.md) | 145 | `result-track:0fefd2969229406ab17e5ea3d4080ab732424a31fa46a0874c21b586d5d04863` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
