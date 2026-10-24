# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Completion.Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdfbcfccf21973533f6a501d74515798e0bbaa06",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdfbcfccf21973533f6a501d74515798e0bbaa06`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.UpperLower.CompleteLattice` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DedekindCut](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/dedekindcut--0a677bea99d7c4e5e05a4193.md) | 52 | `declaration-track:0a677bea99d7c4e5e05a4193fbeb79a07b3d8c77f697c732c966da76d94ca479` |
| 2 | `abbrev` | [left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/left--a820fe7f03f7f1f3b3d09800.md) | 60 | `declaration-track:a820fe7f03f7f1f3b3d098004267f7513bd17f3014f3831810a83f52362321f2` |
| 3 | `abbrev` | [right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/right--cbc42b5bd99107a5cb3a2c94.md) | 63 | `declaration-track:cbc42b5bd99107a5cb3a2c94d4cad87da055cd4e90e922e9b3e67272c49343c2` |
| 4 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/ext--45ca168ffb5e3aca039a6a36.md) | 66 | `result-track:45ca168ffb5e3aca039a6a36d89b901f5e1cc2d83e533a2f0b80ee3580ec3ee1` |
| 5 | `theorem` | [ext'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/ext--ab39851a8915dd5de2775f0d.md) | 69 | `result-track:ab39851a8915dd5de2775f0d0520586b5f312d78d8c9ecab32f4f85f8d055ffb` |
| 6 | `theorem` | [upperBounds_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/upperbounds-left--70746b62c29b98ae57d29ed8.md) | 72 | `result-track:70746b62c29b98ae57d29ed81ca267a3963cc95cc1e8bbada1ca898991562376` |
| 7 | `theorem` | [lowerBounds_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/lowerbounds-right--b95ca5beb988912c6f44c467.md) | 76 | `result-track:b95ca5beb988912c6f44c46718ba4c0dc69176eb09e5bc94d592c4bbb71822cd` |
| 8 | `theorem` | [image_left_subset_lowerBounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/image-left-subset-lowerbounds--7d642d0c0f1ad1fc6fdfb6c8.md) | 79 | `result-track:7d642d0c0f1ad1fc6fdfb6c8e509bba05f46e7909e6f58c8ee9b7831a1d5f037` |
| 9 | `theorem` | [image_right_subset_upperBounds](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/image-right-subset-upperbounds--dd60995fecbcda84cf2e7c9c.md) | 84 | `result-track:dd60995fecbcda84cf2e7c9c668ab9f6e5b8a7fbd87e7ccf830ea81daf25fb27` |
| 10 | `def` | [principal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/principal--59c576fb6eea064164d592c2.md) | 91 | `declaration-track:59c576fb6eea064164d592c26d40dbcfa614d786de818add3e6756f35994e899` |
| 11 | `theorem` | [left_principal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/left-principal--1f0756e34d457e8758e6c3bf.md) | 96 | `result-track:1f0756e34d457e8758e6c3bfbe876ec61683f98fec1f6948fb0ce4dda31c81bb` |
| 12 | `theorem` | [right_principal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/right-principal--78c2d311d451a71fc7ac1259.md) | 97 | `result-track:78c2d311d451a71fc7ac1259fc7ad271a6dc46e4c51bec3a77cd9fa3dda5ef66` |
| 13 | `theorem` | [ofObject_eq_principal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/ofobject-eq-principal--bc2a588e93c9cede84ed0aec.md) | 99 | `result-track:bc2a588e93c9cede84ed0aec285a24416c7f55b39eefc5dd368be96e13f869ac` |
| 14 | `theorem` | [ofAttribute_eq_principal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/ofattribute-eq-principal--37bd57f028871376ed29425d.md) | 101 | `result-track:37bd57f028871376ed29425df5d187cc066971a3c0dedf76aaa4d920911e10d5` |
| 15 | `theorem` | [principal_le_principal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/principal-le-principal--667479fefe591282a453298a.md) | 105 | `result-track:667479fefe591282a453298a39b534b0c8a9b25181c0fc5af084126780dfbd09` |
| 16 | `theorem` | [principal_lt_principal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/principal-lt-principal--303ec5ba2f702f6152ff7f10.md) | 109 | `result-track:303ec5ba2f702f6152ff7f10c41b914ce964211bc5487c5643fb42059b36f70b` |
| 17 | `lemma` | [principal_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/principal-le-iff--4a51b21504b0cb72210458a4.md) | 112 | `result-track:4a51b21504b0cb72210458a42a689d2e3bc148b39a5f7aaad8bd1e7cbfb30fb2` |
| 18 | `lemma` | [le_principal_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/le-principal-iff--a9cc23f9f4ee46f0908a863b.md) | 117 | `result-track:a9cc23f9f4ee46f0908a863b45df829045f8c68e24f956aab0273b2a1ee67746` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/instance--9645782b021f83cfc233777e.md) | 123 | `declaration-track:9645782b021f83cfc233777e955c3ae04ee4bf51f8c8864cbe1934ba2f7073fe` |
| 20 | `theorem` | [principal_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/principal-inj--c937ef5272a6b84895eeb63d.md) | 132 | `result-track:c937ef5272a6b84895eeb63d3c32c8b01201e03d344de5e84d2f3de8cdc49d6d` |
| 21 | `def` | [principalEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/principalembedding--06480dbb463d7ee628b22393.md) | 137 | `declaration-track:06480dbb463d7ee628b22393d8ff2cd834a5799db41a2bd13d7c0ba0fc75076e` |
| 22 | `theorem` | [coe_principalEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/coe-principalembedding--7bd181f1108f058de90c1d27.md) | 142 | `result-track:7bd181f1108f058de90c1d27d098873c876602e28ae45c1ede4d98a3b07cfd01` |
| 23 | `theorem` | [principal_sSup_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/principal-ssup-left--ee684e45d2d4077fe0239a2e.md) | 150 | `result-track:ee684e45d2d4077fe0239a2e5bf8d07d9949100fb54eee34066a88558354cac7` |
| 24 | `theorem` | [principal_sInf_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/principal-sinf-right--72e5eaf1cd4097724130c607.md) | 156 | `result-track:72e5eaf1cd4097724130c607268019bd3afcd97842e514a2be6f5c6a1b17b930` |
| 25 | `def` | [factorEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/factorembedding--4d5852ccc22b8d15b84ce8b1.md) | 165 | `declaration-track:4d5852ccc22b8d15b84ce8b134e1106666f039f546a1ddc55f50c2a48aef6fc4` |
| 26 | `theorem` | [factorEmbedding_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/factorembedding-apply--211d68eb94d6500f5ad047ce.md) | 174 | `result-track:211d68eb94d6500f5ad047ce96bfb9bbcc88ee066b73b21d6f5852cb8ec76534` |
| 27 | `theorem` | [factorEmbedding_principal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/factorembedding-principal--d5acfc1dea1918a1ea5e0f73.md) | 179 | `result-track:d5acfc1dea1918a1ea5e0f73b6479731572c54717d874899fd2d2ff4741b80df` |
| 28 | `theorem` | [principalEmbedding_trans_factorEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/principalembedding-trans-factorembedding--25b1a00119ecdfb2485df1de.md) | 188 | `result-track:25b1a00119ecdfb2485df1dedcfba115fa91b69fb631a908fc040ed31639f31c` |
| 29 | `def` | [principalIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/principaliso--832df1e0197d2d33b58c22aa.md) | 199 | `declaration-track:832df1e0197d2d33b58c22aaea88897cbe2373460c4f617b490ca80ccc029fed` |
| 30 | `theorem` | [principalIso_symm_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/principaliso-symm-apply--38d5879431cb977e7c1e8988.md) | 205 | `result-track:38d5879431cb977e7c1e8988b1f0a8f07550e0ffd0068201a116ee60d9fb8013` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/instance--83ad2adf6e13318c10486aaa.md) | 213 | `declaration-track:83ad2adf6e13318c10486aaab78392cfc4b4ab6970ab2fba0be3dc4cf63d5f9a` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/instance--92431811509aa58822e6452e.md) | 216 | `declaration-track:92431811509aa58822e6452efaf944ec9ed8959a9038ccf78479a039af22ed84` |
| 33 | `theorem` | [lt_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/lt-iff-exists--8f64f7d7335a8478102e49c5.md) | 223 | `result-track:8f64f7d7335a8478102e49c5205805c8218978b7c6217bc19d23bddb6d934065` |
| 34 | `theorem` | [lt_iff_exists'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/lt-iff-exists--589ee98beb3bdaf6fe65e1fd.md) | 230 | `result-track:589ee98beb3bdaf6fe65e1fd048ec323a1ae6d4567a1744e8bb3ba6a78ccf422` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/instance--6f86761c705b34a3db04993b.md) | 236 | `declaration-track:6f86761c705b34a3db04993b13dd15e6091907f6f9f833fd6b1bc5e22d859753` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/instance--7d99441391420c2be66dbe52.md) | 241 | `declaration-track:7d99441391420c2be66dbe52e5961d02d75b534395bb2cfc2a6b69c1482a03aa` |
| 37 | `theorem` | [principal_lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/principal-lt-iff--c24b987deae8480155662416.md) | 249 | `result-track:c24b987deae8480155662416a47e9923e691c2cd6da6dd73aa780f3c0db13f13` |
| 38 | `theorem` | [lt_principal_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Completion/Variantb84134240d661f43c479d6f5ca614c82f719f99252077df1156cc6a0e4768fd0.lean/declarations/lt-principal-iff--67a57839160518b5462129a3.md) | 256 | `result-track:67a57839160518b5462129a301a8170ae39c60e55eacc563c338c9ed703e58d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
