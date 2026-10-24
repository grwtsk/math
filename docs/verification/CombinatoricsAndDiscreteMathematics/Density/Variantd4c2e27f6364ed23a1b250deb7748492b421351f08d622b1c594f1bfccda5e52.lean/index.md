# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Density.Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "405b8ea2e8f69ac31da5032e8187324a14fc27d1",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `405b8ea2e8f69ac31da5032e8187324a14fc27d1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.Order` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Finpartition` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [interedges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/interedges--2c7ac13e27d7541bf3fc4177.md) | 53 | `declaration-track:2c7ac13e27d7541bf3fc4177e8b3853fa0cd21d4e2ca059c4cd7e6cca5e777cd` |
| 2 | `def` | [edgeDensity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/edgedensity--0a324efd70f540609ad2c2d1.md) | 56 | `declaration-track:0a324efd70f540609ad2c2d1fc3d4b9aa9e166ac5b863bd9587c14465e72bec7` |
| 3 | `theorem` | [mem_interedges_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/mem-interedges-iff--06af3dd4c52ca908b7bd8578.md) | 60 | `result-track:06af3dd4c52ca908b7bd8578734f1c70ddcb3bbef80453c735396d39139cd521` |
| 4 | `theorem` | [mk_mem_interedges_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/mk-mem-interedges-iff--8a3767217d051e65a7702092.md) | 63 | `result-track:8a3767217d051e65a770209244e71743a68da8c8ff708af2695c1f685c926b1d` |
| 5 | `theorem` | [interedges_empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/interedges-empty-left--a8719b89f1103ba270b8c996.md) | 67 | `result-track:a8719b89f1103ba270b8c9967601a82fc19d2742217b578e1d16f154bfc72f0c` |
| 6 | `theorem` | [interedges_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/interedges-mono--b2a1cd92ab92df6ccb56ab3f.md) | 70 | `result-track:b2a1cd92ab92df6ccb56ab3f0672a365c80fdcb122c4ff702f9c513715e92048` |
| 7 | `theorem` | [card_interedges_add_card_interedges_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/card-interedges-add-card-interedges-compl--a1859c1f7ea4057234110d52.md) | 77 | `result-track:a1859c1f7ea4057234110d520870643b5c9abbce2bf872d2bee98ec010eaf3ee` |
| 8 | `theorem` | [interedges_disjoint_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/interedges-disjoint-left--aea082037ed17ea4fc45c27b.md) | 83 | `result-track:aea082037ed17ea4fc45c27be3de07346c9c7791cec8b7975d653ab4b4f90357` |
| 9 | `theorem` | [interedges_disjoint_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/interedges-disjoint-right--8154e2c15cfd2b667bde10e7.md) | 90 | `result-track:8154e2c15cfd2b667bde10e77eaeaa7aeb07b2416416ddefd8e869fd7649956f` |
| 10 | `lemma` | [interedges_eq_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/interedges-eq-biunion--f4cdbb8d76a062b6359e1fd9.md) | 101 | `result-track:f4cdbb8d76a062b6359e1fd932b3cf54536757093d76ac45fbcbe595ab1125a9` |
| 11 | `theorem` | [interedges_biUnion_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/interedges-biunion-left--0ad0e89a1209b001023d5903.md) | 106 | `result-track:0ad0e89a1209b001023d590301a81cbaf837c1ff20c0390fc50964a1741be354` |
| 12 | `theorem` | [interedges_biUnion_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/interedges-biunion-right--68a117beaf8ffbf21a815d23.md) | 111 | `result-track:68a117beaf8ffbf21a815d233dd253868548f63371795235d66400dca069c00a` |
| 13 | `theorem` | [interedges_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/interedges-biunion--711e1dd083a8da92af28b97c.md) | 118 | `result-track:711e1dd083a8da92af28b97ccc4a0872c720318ce1a7eb78a2bf92daea654247` |
| 14 | `theorem` | [card_interedges_le_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/card-interedges-le-mul--50738b7407f4150bb09ddd03.md) | 125 | `result-track:50738b7407f4150bb09ddd03651d117366d6e3dc542d1fb85796ff1944f115cc` |
| 15 | `theorem` | [edgeDensity_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/edgedensity-nonneg--0b3cf968187e4162e6a51b13.md) | 129 | `result-track:0b3cf968187e4162e6a51b13451e7c11f879d194a0cea22c4191a61102c463b7` |
| 16 | `theorem` | [edgeDensity_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/edgedensity-le-one--b2cb53bd57586acfd9abf912.md) | 132 | `result-track:b2cb53bd57586acfd9abf912e6eeb98e86b61371124567d20a9a818532b38512` |
| 17 | `theorem` | [edgeDensity_add_edgeDensity_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/edgedensity-add-edgedensity-compl--ff12f4751aca9d6cc32980ab.md) | 137 | `result-track:ff12f4751aca9d6cc32980abd82af07947c5e53939e9bb0a900bc99184cc1adc` |
| 18 | `theorem` | [edgeDensity_empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/edgedensity-empty-left--0f5b3ddd41c338835afe6a9b.md) | 144 | `result-track:0f5b3ddd41c338835afe6a9ba464a9de54270178bfd00605bbeb1f623a90f468` |
| 19 | `theorem` | [edgeDensity_empty_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/edgedensity-empty-right--7de59921f4e04a5efa082a89.md) | 148 | `result-track:7de59921f4e04a5efa082a895ffc783f3dcc37d6d682e091cb99eccaa6765c0d` |
| 20 | `theorem` | [card_interedges_finpartition_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/card-interedges-finpartition-left--e52322bdfae538f04cde8278.md) | 151 | `result-track:e52322bdfae538f04cde8278911062afa2c3c79604814101d7ddb9e2e3abd7ae` |
| 21 | `theorem` | [card_interedges_finpartition_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/card-interedges-finpartition-right--c6597c9eb996a476f64d42cf.md) | 158 | `result-track:c6597c9eb996a476f64d42cfdca391fcbbd69bd2ca4e6b05b4ae28464929e0d3` |
| 22 | `theorem` | [card_interedges_finpartition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/card-interedges-finpartition--b2522c7154ff3e5728daa978.md) | 165 | `result-track:b2522c7154ff3e5728daa978d02f3372a9ecbda196d63faa0de80331ff59f449` |
| 23 | `theorem` | [mul_edgeDensity_le_edgeDensity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/mul-edgedensity-le-edgedensity--30717a2fba51a4812ee5a71c.md) | 172 | `result-track:30717a2fba51a4812ee5a71cc8e0dce5a1b0a1e9e6edbe65af1baba1b4f14090` |
| 24 | `theorem` | [edgeDensity_sub_edgeDensity_le_one_sub_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/edgedensity-sub-edgedensity-le-one-sub-mul--890c4acc1ff7d1d84dd72fb2.md) | 180 | `result-track:890c4acc1ff7d1d84dd72fb2457b0821c33f83b3381b6459bd6d20972705ee7d` |
| 25 | `theorem` | [abs_edgeDensity_sub_edgeDensity_le_one_sub_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/abs-edgedensity-sub-edgedensity-le-one-sub-mul--aaba7636b1c93f63af50fe13.md) | 191 | `result-track:aaba7636b1c93f63af50fe1327a775d20af24db3602885496402ffef2e0405fe` |
| 26 | `theorem` | [abs_edgeDensity_sub_edgeDensity_le_two_mul_sub_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/abs-edgedensity-sub-edgedensity-le-two-mul-sub-sq--5a69a5e430cc5f877807e327.md) | 201 | `result-track:5a69a5e430cc5f877807e3271f81eec013c222eee917c0e98bd28e75b014bf44` |
| 27 | `theorem` | [abs_edgeDensity_sub_edgeDensity_le_two_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/abs-edgedensity-sub-edgedensity-le-two-mul--b4ed472c02aa63aaa87f18ef.md) | 232 | `result-track:b4ed472c02aa63aaa87f18ef1518817b53209a0a57ec9275b85f04ca4b46f3c6` |
| 28 | `theorem` | [swap_mem_interedges_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/swap-mem-interedges-iff--22df0dd485cdceebc4dbffe7.md) | 251 | `result-track:22df0dd485cdceebc4dbffe76913f5affab10bbc7b6971c5195e34804e2c732b` |
| 29 | `theorem` | [mk_mem_interedges_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/mk-mem-interedges-comm--a920c0d8544d452b69047a16.md) | 256 | `result-track:a920c0d8544d452b69047a16716832df6c0c6b37e719124ac89b2834d1a589f5` |
| 30 | `theorem` | [card_interedges_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/card-interedges-comm--9d367fa3503de3e74e185b4d.md) | 260 | `result-track:9d367fa3503de3e74e185b4d03ae090480139d681e96ed3471deaf03f4beb7d0` |
| 31 | `theorem` | [edgeDensity_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/edgedensity-comm--a920626c52c59406a3c1dc13.md) | 266 | `result-track:a920626c52c59406a3c1dc13b20e83752ca07c3c6993a66102b850caf61773d4` |
| 32 | `def` | [interedges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/interedges--9d15f38281c4ed6e03e80cdd.md) | 284 | `declaration-track:9d15f38281c4ed6e03e80cdd14f5b02eeeecf4de41857d890ebfc4643207f8bb` |
| 33 | `def` | [edgeDensity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/edgedensity--e2cfe5d773ba838564448696.md) | 288 | `declaration-track:e2cfe5d773ba838564448696c2bc3d0aa49b9dd169bc1147d5061c49e8597e6a` |
| 34 | `lemma` | [interedges_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/interedges-def--b2841c2b7735ead15ff733a7.md) | 291 | `result-track:b2841c2b7735ead15ff733a71ced449595e5cbfa4c24570f2c5cc0892fd53629` |
| 35 | `lemma` | [edgeDensity_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/edgedensity-def--e8de1daed2f6dffd9c5ec127.md) | 293 | `result-track:e8de1daed2f6dffd9c5ec1272ff333ed8e3d9e55597baa8aa6246b1d99867859` |
| 36 | `theorem` | [card_interedges_div_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/card-interedges-div-card--2e5d9f1044cacd114279ecc6.md) | 295 | `result-track:2e5d9f1044cacd114279ecc648f9f738104dfcd1ee35ba21b73a2600977801ba` |
| 37 | `theorem` | [mem_interedges_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/mem-interedges-iff--b7cfd5f892739031afdd0319.md) | 299 | `result-track:b7cfd5f892739031afdd0319bcc1e98886180fa0bfe54e1f4ceb7156c48949e9` |
| 38 | `theorem` | [mk_mem_interedges_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/mk-mem-interedges-iff--dc1770b41366fcfd36bd6fbd.md) | 302 | `result-track:dc1770b41366fcfd36bd6fbd0b2265453c11e6f8ce84473df936e4f7350b9d63` |
| 39 | `theorem` | [interedges_empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/interedges-empty-left--c6f583d07b542b15fe8828c6.md) | 306 | `result-track:c6f583d07b542b15fe8828c6f64ad3083535235a1f6a1e2754aa69ef75756a53` |
| 40 | `theorem` | [interedges_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/interedges-mono--ddee7b256ffdd1ec852d8e21.md) | 309 | `result-track:ddee7b256ffdd1ec852d8e213f2946fffa2e39cf9c3a944869427e9267c9abee` |
| 41 | `theorem` | [interedges_disjoint_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/interedges-disjoint-left--2e2ce2a9011de436301e00cf.md) | 312 | `result-track:2e2ce2a9011de436301e00cfabcba6526510afff039da5762ebc0a733df95f99` |
| 42 | `theorem` | [interedges_disjoint_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/interedges-disjoint-right--a96b23a379c0b6150abdcb6b.md) | 316 | `result-track:a96b23a379c0b6150abdcb6bb5b4229cc324c54c5ccc6cb49f64606f520f8c25` |
| 43 | `theorem` | [interedges_biUnion_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/interedges-biunion-left--553041629ecca99338f475ed.md) | 324 | `result-track:553041629ecca99338f475edec810ce57372949ba9a94cd74649441b527ae920` |
| 44 | `theorem` | [interedges_biUnion_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/interedges-biunion-right--eec8aaac23551e2d6df885eb.md) | 328 | `result-track:eec8aaac23551e2d6df885eb6b1cd15b5cf8e5f4dfa70f3d88b7f51ab5b3408a` |
| 45 | `theorem` | [interedges_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/interedges-biunion--456a4112f003b92dfe06050b.md) | 332 | `result-track:456a4112f003b92dfe06050b7a20037b71e3c0b9edcb5645dcdef85c5fef1acb` |
| 46 | `theorem` | [card_interedges_add_card_interedges_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/card-interedges-add-card-interedges-compl--1ace9c177c792f98dd54e684.md) | 337 | `result-track:1ace9c177c792f98dd54e68434232e6489ff0f4d5d0000482b6dbc051d501e8c` |
| 47 | `theorem` | [edgeDensity_add_edgeDensity_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/edgedensity-add-edgedensity-compl--dba6c76d8aae5f99eb56f637.md) | 347 | `result-track:dba6c76d8aae5f99eb56f637c8242c844f93f38ff6a0f4d204e2395f085d7fde` |
| 48 | `theorem` | [card_interedges_le_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/card-interedges-le-mul--643d7c2f61faa42aad33b39f.md) | 355 | `result-track:643d7c2f61faa42aad33b39ffacf872d11ce45418b3b168427c4dd082e4045ef` |
| 49 | `theorem` | [edgeDensity_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/edgedensity-nonneg--85595b4d24b9fffe97cc0e4a.md) | 358 | `result-track:85595b4d24b9fffe97cc0e4a293cd9fa06778ed454223eb4dd537c2959b4561d` |
| 50 | `theorem` | [edgeDensity_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/edgedensity-le-one--6e3a098189382f435a574f4f.md) | 361 | `result-track:6e3a098189382f435a574f4f7cd2c807e874a6bee35715bd425ffad15b40e32a` |
| 51 | `theorem` | [edgeDensity_empty_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/edgedensity-empty-left--b617dc133de591bf5e02dc5d.md) | 365 | `result-track:b617dc133de591bf5e02dc5d633764e0e139db97d1d1922416c750e9bb1de1cd` |
| 52 | `theorem` | [edgeDensity_empty_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/edgedensity-empty-right--2ab9e75e157597f7168d6bae.md) | 369 | `result-track:2ab9e75e157597f7168d6baeacfc40a084d24d47e343c867dd3b6aef4cd89d9d` |
| 53 | `theorem` | [swap_mem_interedges_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/swap-mem-interedges-iff--714131d7ca99cc7b082e1931.md) | 373 | `result-track:714131d7ca99cc7b082e193132eb229e6293bcb76c4ea71b36d9048728b889d1` |
| 54 | `theorem` | [mk_mem_interedges_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/mk-mem-interedges-comm--ddd77f3294e65f56d1b2a3ae.md) | 376 | `result-track:ddd77f3294e65f56d1b2a3aee4299540eb3d059b54753edca4d0b5ccde33c740` |
| 55 | `theorem` | [edgeDensity_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Density/Variantd4c2e27f6364ed23a1b250deb7748492b421351f08d622b1c594f1bfccda5e52.lean/declarations/edgedensity-comm--db9455003a5350125d6fae82.md) | 379 | `result-track:db9455003a5350125d6fae82b2956efb1b970d36c4e53a9a7f301f203584fce9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
