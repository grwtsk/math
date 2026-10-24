# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Iterate.Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1e9301ec8785c13f3a2bc0ce68825cb79746b90",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1e9301ec8785c13f3a2bc0ce68825cb79746b90`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Conjugate` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iterate_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-zero--9771cfea3b40f894c0fda504.md) | 52 | `result-track:9771cfea3b40f894c0fda504481b1b160940f5b7b42ddebb1ed16482d442167c` |
| 2 | `theorem` | [iterate_zero_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-zero-apply--54cc2cbfdf48f9cdcc41bca8.md) | 56 | `result-track:54cc2cbfdf48f9cdcc41bca8ba0f6c42a702548ee673a6be724917c07c19555c` |
| 3 | `theorem` | [iterate_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-succ--d21419989ea68031e1f045c7.md) | 61 | `result-track:d21419989ea68031e1f045c7a7ff2184ad0ccfd21a45bc69ecaa1c1e3367ee99` |
| 4 | `theorem` | [iterate_succ_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-succ-apply--a0bbfab60b6a2ff9d9100c53.md) | 65 | `result-track:a0bbfab60b6a2ff9d9100c53635720ea2ed81b6ae98ee9eaf553d60c96406908` |
| 5 | `theorem` | [iterate_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-id--f95cca2324d5c99530c8861f.md) | 70 | `result-track:f95cca2324d5c99530c8861f79d5742c6df822dc3a8949753145bd49e327c543` |
| 6 | `theorem` | [iterate_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-add--e17710d4368fcaf8f303819e.md) | 74 | `result-track:e17710d4368fcaf8f303819eea880328017d19f78135959dd11492a628f8e128` |
| 7 | `theorem` | [iterate_add_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-add-apply--b7c07769e5b522d1f001abff.md) | 79 | `result-track:b7c07769e5b522d1f001abffbd84cf2bb889dbab93de4e03d3f48a7ebc458064` |
| 8 | `theorem` | [iterate_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-one--2f37180201dc7e5f9a8be908.md) | 85 | `result-track:2f37180201dc7e5f9a8be908f6f5c278a71b8e0769c00daef3392d5271da1f91` |
| 9 | `theorem` | [iterate_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-mul--4d67af85ec4fa598667632ea.md) | 89 | `result-track:4d67af85ec4fa598667632ea8debf454629351c13dc54ebe255d4f4effcb95fa` |
| 10 | `theorem` | [iterate_fixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-fixed--f9d0b45663ec66a6149d0aaf.md) | 96 | `result-track:f9d0b45663ec66a6149d0aaffb19273cdf171c5d23d2a834451e5443feb9ab33` |
| 11 | `theorem` | [Injective.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/injective-iterate--de6b911a1eef86445af9d16d.md) | 100 | `result-track:de6b911a1eef86445af9d16d698be9962d57bc435adfe445eb864842627ac746` |
| 12 | `theorem` | [Surjective.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/surjective-iterate--f7d48c668b06e1d3ba50a42a.md) | 104 | `result-track:f7d48c668b06e1d3ba50a42a4428ff29f4cbd05cd1615f460ad7194cb1fc59d8` |
| 13 | `theorem` | [Bijective.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/bijective-iterate--9b19c77898cb643e8cdcd073.md) | 108 | `result-track:9b19c77898cb643e8cdcd073a5be09291a1a4f9f53c5c8e887762c03dc35b8db` |
| 14 | `theorem` | [iterate_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-right--f49b1576a1416509492ea13c.md) | 114 | `result-track:f49b1576a1416509492ea13c01256bfdc23f13b66a2e0b6ad72a088ea2fd7b19` |
| 15 | `theorem` | [iterate_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-left--67213c1dbc1c838c82410c71.md) | 119 | `result-track:67213c1dbc1c838c82410c7187768ddac7e07c4eb75fce9fb3701b11fe47e9b2` |
| 16 | `theorem` | [iterate_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-right--72b13137c9ceb499cb49487a.md) | 134 | `result-track:72b13137c9ceb499cb49487a11f4895747ad1e85c913fe8631f98bf1dafe2c35` |
| 17 | `theorem` | [iterate_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-left--cea92714910e24ed99002d90.md) | 138 | `result-track:cea92714910e24ed99002d904e5e65be44f07574c4c1c819e493d410c23b0368` |
| 18 | `theorem` | [iterate_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-iterate--2b856953e5e9740f7fe770e2.md) | 142 | `result-track:2b856953e5e9740f7fe770e22071d794a9d6e4a897c66aa14fa2aa56c32c6787` |
| 19 | `theorem` | [iterate_eq_of_map_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-eq-of-map-eq--2c81ad18496b682780098ff2.md) | 146 | `result-track:2c81ad18496b682780098ff28e0bb905e259ebaa8a0fb03d9d75b1cfde8fa0b0` |
| 20 | `theorem` | [comp_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/comp-iterate--223e0d572ce72044b865be81.md) | 152 | `result-track:223e0d572ce72044b865be8121046ca042646b4e9b69148071b0a82d360d945f` |
| 21 | `theorem` | [iterate_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-self--9b9953c9e463e9117b5d4ddd.md) | 161 | `result-track:9b9953c9e463e9117b5d4ddd3c0e91d290a4f069af225c8e6f3e711cc7d25676` |
| 22 | `theorem` | [self_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/self-iterate--4187a89d22ee22934d169abd.md) | 165 | `result-track:4187a89d22ee22934d169abd1d74705e630e626547cb5c5bf45e988f5cfefe19` |
| 23 | `theorem` | [iterate_iterate_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-iterate-self--5631fc5598283ed097ed7ebb.md) | 169 | `result-track:5631fc5598283ed097ed7ebba87459ea6290e984db117172128c179412c084cb` |
| 24 | `theorem` | [Semiconj₂.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/semiconj-iterate--47d8759a249e084f9bf9f21b.md) | 175 | `result-track:47d8759a249e084f9bf9f21b4e58190886bd6fcf791d3f78a0d1d1a716cf57c0` |
| 25 | `theorem` | [iterate_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-succ--f0f3843a800d611501063d78.md) | 182 | `result-track:f0f3843a800d611501063d789ab30f616886ad872f17ea6e3cc3c96dc49fb585` |
| 26 | `theorem` | [iterate_succ_apply'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-succ-apply--07dff0a26ae80963db8d18ca.md) | 186 | `result-track:07dff0a26ae80963db8d18caea0172df11ce41fb0e9bea19582c59bb72102d9f` |
| 27 | `theorem` | [iterate_pred_comp_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-pred-comp-of-pos--3e3a27a45852365c2262e5ca.md) | 191 | `result-track:3e3a27a45852365c2262e5caceb2eed27f05c1464faa2738c775dfdd2688446a` |
| 28 | `theorem` | [comp_iterate_pred_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/comp-iterate-pred-of-pos--131b419bd72d1e3208008469.md) | 195 | `result-track:131b419bd72d1e3208008469f86a8ddf3b98581ed5287c60db719bd6f1cd1e9c` |
| 29 | `def` | [Iterate.rec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-rec--cb48642e67575ffb12ebe2f5.md) | 200 | `declaration-track:cb48642e67575ffb12ebe2f52610014a09744239e6c9191d8991c1f8400ea0ef` |
| 30 | `theorem` | [Iterate.rec_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-rec-zero--1af88b9dcf0e61051dd1044e.md) | 207 | `result-track:1af88b9dcf0e61051dd1044e6901af4d86dceae0c84e389d7abf038c74a4f0b3` |
| 31 | `theorem` | [LeftInverse.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/leftinverse-iterate--49ca71fdc9b65e42b20f1584.md) | 214 | `result-track:49ca71fdc9b65e42b20f15846b7b90685e40111ae3054d3c8dc1b5d4c746baa5` |
| 32 | `theorem` | [RightInverse.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/rightinverse-iterate--cce0ad4f4101e03c6905b160.md) | 221 | `result-track:cce0ad4f4101e03c6905b1607601a200ed27d5f329fbbad3dd07c39caefbbe5c` |
| 33 | `theorem` | [iterate_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-comm--e2269a20d5a0093402deab64.md) | 226 | `result-track:e2269a20d5a0093402deab649cbadfc65400c93159e3205f882bba72a217c06b` |
| 34 | `theorem` | [iterate_commute](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-commute--4a998f40ac16ab5a4a64de8e.md) | 230 | `result-track:4a998f40ac16ab5a4a64de8ef660a4afc7c362d76fbbd86ffdedf4755a5bc990` |
| 35 | `lemma` | [iterate_add_eq_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-add-eq-iterate--8d8bda9e575c7df5301635bc.md) | 234 | `result-track:8d8bda9e575c7df5301635bcb9c10997bd4e006e9a1dadbae00aa5bbc2aeca20` |
| 36 | `lemma` | [iterate_cancel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/iterate-cancel--407b55e45fcfd08031e6b61b.md) | 241 | `result-track:407b55e45fcfd08031e6b61b059a5f6b8ccf7cee19abfca0220a95b86b52b652` |
| 37 | `theorem` | [foldl_const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/foldl-const--9bf668a27f122197c65ba908.md) | 253 | `result-track:9bf668a27f122197c65ba90822227c5bef6edd8f1a7e669256e591240fba495c` |
| 38 | `theorem` | [foldr_const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant85fb68f94a4aae13ed72e0180b09ffea7cff636998099e6cd053982e82db926b.lean/declarations/foldr-const--c0b079ba738f79694ccf27ab.md) | 260 | `result-track:c0b079ba738f79694ccf27abd30f18f301f39e21e2aab10bbbf7c973ecd400d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
