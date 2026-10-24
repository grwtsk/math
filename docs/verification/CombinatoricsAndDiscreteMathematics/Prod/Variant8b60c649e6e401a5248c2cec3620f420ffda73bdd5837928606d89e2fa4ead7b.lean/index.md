# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Prod.Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c6fc7955102b936ef273b3a1421882b93463774",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c6fc7955102b936ef273b3a1421882b93463774`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Path` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Metric` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boxProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/boxprod--d81a73a3e35adc8cdd1d9d32.md) | 38 | `declaration-track:d81a73a3e35adc8cdd1d9d3239b89b2aa42c921e5e5964b1f4dd74d0a23820fb` |
| 2 | `theorem` | [boxProd_adj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/boxprod-adj--9482d127d3edd9428fe871ff.md) | 48 | `result-track:9482d127d3edd9428fe871ff885920759332e90fd6f1a00f8602780bd276a5bb` |
| 3 | `theorem` | [boxProd_adj_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/boxprod-adj-left--247fc9a2a8d5c55498feb826.md) | 52 | `result-track:247fc9a2a8d5c55498feb8260bb5d2dbee9ebec3443322cda30e2eb543cfa5dd` |
| 4 | `theorem` | [boxProd_adj_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/boxprod-adj-right--061835c3b904d95f289eb84a.md) | 56 | `result-track:061835c3b904d95f289eb84a0feb10ab62193618763cfbf285cf261f9ca63ea1` |
| 5 | `theorem` | [neighborSet_boxProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/neighborset-boxprod--ba92fec4df6efa26e27a7d8d.md) | 59 | `result-track:ba92fec4df6efa26e27a7d8d8566386e50b018698e77f8e646b66182b99bad3c` |
| 6 | `def` | [boxProdComm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/boxprodcomm--eca7cd502d92e02ecf1e938c.md) | 71 | `declaration-track:eca7cd502d92e02ecf1e938c7547da47d0a036dcf2739981386ed9bfa4a776c5` |
| 7 | `def` | [boxProdAssoc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/boxprodassoc--1d09ed6736d8733a06abe5f2.md) | 75 | `declaration-track:1d09ed6736d8733a06abe5f2e6dc31013d3c91a9ec0b479430f69cc8aee3092c` |
| 8 | `def` | [boxProdLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/boxprodleft--05af27ed7b501d0be55d98e8.md) | 82 | `declaration-track:05af27ed7b501d0be55d98e8d4e5f0ae2384dcbb3eb2cf067b8d37fa05a57805` |
| 9 | `def` | [boxProdRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/boxprodright--f4e8744d4866479b42a42ca7.md) | 89 | `declaration-track:f4e8744d4866479b42a42ca77883878133f74fa935d018f053776c867aedfd9a` |
| 10 | `def` | [boxProdLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/boxprodleft--f6bd90ce9988fb402e56253d.md) | 99 | `declaration-track:f6bd90ce9988fb402e56253d18e5c4193569c06755ba93b277ba4eadb3a4e2bc` |
| 11 | `def` | [boxProdRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/boxprodright--1d5a1b3798259dde31ab95cf.md) | 105 | `declaration-track:1d5a1b3798259dde31ab95cf19cfba28908860310f3ae767eb732d4b563c9412` |
| 12 | `def` | [ofBoxProdLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/ofboxprodleft--dd762146e27d58cac7b77377.md) | 111 | `declaration-track:dd762146e27d58cac7b77377297c3b35e9ca1feab47fa910124509738940830c` |
| 13 | `def` | [ofBoxProdRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/ofboxprodright--66a51eb89352476e94211f80.md) | 120 | `declaration-track:66a51eb89352476e94211f805591bb02532cf95fbb4bbbe2f339ccdf88108e6b` |
| 14 | `theorem` | [ofBoxProdLeft_boxProdLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/ofboxprodleft-boxprodleft--9f415b890e4ccc070648380c.md) | 129 | `result-track:9f415b890e4ccc070648380c57d6f8fd5467253582f3f3f4050ece957c3c36db` |
| 15 | `theorem` | [ofBoxProdRight_boxProdRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/ofboxprodright-boxprodright--fbc73a8c3ccd64716666d0a4.md) | 138 | `result-track:fbc73a8c3ccd64716666d0a46df8956f7b6dd38a477d2cdb6035dfce2b780bc5` |
| 16 | `lemma` | [length_boxProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/length-boxprod--5f09ddfb9bf35271e9cc7977.md) | 150 | `result-track:5f09ddfb9bf35271e9cc7977010ea5f32e1f364002c02f9daa2046aa4186bd76` |
| 17 | `theorem` | [Preconnected.boxProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/preconnected-boxprod--1a67db4c3351e36a9c23178d.md) | 170 | `result-track:1a67db4c3351e36a9c23178df3386ac90d8cebff5e2850942b21bce37e88db85` |
| 18 | `theorem` | [Preconnected.ofBoxProdLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/preconnected-ofboxprodleft--b91c3129d2ebc7f4edbd9bf9.md) | 177 | `result-track:b91c3129d2ebc7f4edbd9bf9f6c048aea330dab9dd33288a5ffb4e48e07930cf` |
| 19 | `theorem` | [Preconnected.ofBoxProdRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/preconnected-ofboxprodright--4865d912054784217f0b3469.md) | 184 | `result-track:4865d912054784217f0b3469a445db5557c3e29ee04a4cb009b04dc3cc4c2179` |
| 20 | `theorem` | [Connected.boxProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/connected-boxprod--e3695bb91b4653d22d776920.md) | 191 | `result-track:e3695bb91b4653d22d776920d4a5ed6ebaca3d52f4dca57af3ed0682057b1d0e` |
| 21 | `theorem` | [Connected.ofBoxProdLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/connected-ofboxprodleft--0d70ae97895855e1edc57b66.md) | 196 | `result-track:0d70ae97895855e1edc57b66af0cf653f75f30b7981bd997edcf86173ce87b35` |
| 22 | `theorem` | [Connected.ofBoxProdRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/connected-ofboxprodright--dc19d821e9cc904556c7be49.md) | 201 | `result-track:dc19d821e9cc904556c7be49fc9bab7f34950b89c453aab2e724d6bf89ce49bd` |
| 23 | `theorem` | [connected_boxProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/connected-boxprod--c0c8f0f0a6c0583e08c36891.md) | 207 | `result-track:c0c8f0f0a6c0583e08c3689120dc289039fe953908b0d99504d60888b7e7202b` |
| 24 | `instance` | [boxProdFintypeNeighborSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/boxprodfintypeneighborset--d6e537adbd70d6cc6055f3c7.md) | 212 | `declaration-track:d6e537adbd70d6cc6055f3c7f8b71ee4c3c38fd48bcba51ff747fc44b31e23f2` |
| 25 | `theorem` | [neighborFinset_boxProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/neighborfinset-boxprod--49d52a3531eaeb1dce6dcace.md) | 223 | `result-track:49d52a3531eaeb1dce6dcace3e2d55f9dd1f11f9161c9309e505ce0c391e306b` |
| 26 | `theorem` | [degree_boxProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/degree-boxprod--3602b6c246a47f61b8e9c5e0.md) | 235 | `result-track:3602b6c246a47f61b8e9c5e045691641eca38f705e4deb6a7f919d364c00dd55` |
| 27 | `lemma` | [reachable_boxProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/reachable-boxprod--6d8982e9c4868761287f5626.md) | 243 | `result-track:6d8982e9c4868761287f5626f7e2f41cb7eb10b622b9bd144ae5d5e3a8aa3a9c` |
| 28 | `lemma` | [edist_boxProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variant8b60c649e6e401a5248c2cec3620f420ffda73bdd5837928606d89e2fa4ead7b.lean/declarations/edist-boxprod--97d4a6a59997647b273e2c16.md) | 255 | `result-track:97d4a6a59997647b273e2c1693daf81575e6b66fd3ae24efbdeee408d6e090be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
