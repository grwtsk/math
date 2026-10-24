# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "feae671419368d0d284d9ed57c536b6b54afba33",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `feae671419368d0d284d9ed57c536b6b54afba33`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Constructions` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsGδ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isg--69aa5df22d44a1312ab68ead.md) | 63 | `declaration-track:69aa5df22d44a1312ab68ead043d02310f141400c5b67ab1ad69dc8dd41a07c8` |
| 2 | `theorem` | [IsOpen.isGδ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isopen-isg--05edded16dfd9e8ef0863854.md) | 67 | `result-track:05edded16dfd9e8ef0863854bee979ee2424d3bfe41a0091311e67226d5f9f0c` |
| 3 | `theorem` | [IsGδ.empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isg-empty--b01b6402a70b89bacfba4377.md) | 71 | `result-track:b01b6402a70b89bacfba4377c6da2fac959637b293b20737b4068a52ff009c9b` |
| 4 | `theorem` | [IsGδ.univ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isg-univ--af44016ee1553dd5e13681d7.md) | 76 | `result-track:af44016ee1553dd5e13681d71a9086182ff24d0b3e91432ec6b23c1adcb3638f` |
| 5 | `theorem` | [IsGδ.biInter_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isg-biinter-of-isopen--6a4b9873c264b98bba6a2128.md) | 80 | `result-track:6a4b9873c264b98bba6a212884683ca0f169b82697ac0e2bed123e2e69fe2557` |
| 6 | `theorem` | [IsGδ.iInter_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isg-iinter-of-isopen--2ebfec0713f7491d57ec07c5.md) | 85 | `result-track:2ebfec0713f7491d57ec07c5607e544fb6d0093e307c9641d622b27d368ad8b4` |
| 7 | `lemma` | [isGδ_iff_eq_iInter_nat](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isg-iff-eq-iinter-nat--b6d4c189c5bf8b8d78756dde.md) | 90 | `result-track:b6d4c189c5bf8b8d78756dde8ba5b0a25b2cbd01407545cf2c4836a4918827ce` |
| 8 | `theorem` | [IsGδ.iInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isg-iinter--a97aa13bad592f511cb411e8.md) | 104 | `result-track:a97aa13bad592f511cb411e820ea1150f3576786aacb401a882f601f97d8a96a` |
| 9 | `theorem` | [IsGδ.biInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isg-biinter--40f8fb72c92f9cea5bdf5a06.md) | 111 | `result-track:40f8fb72c92f9cea5bdf5a06a8b0eac552d54110385f30f6c0c189625e6df099` |
| 10 | `theorem` | [IsGδ.sInter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isg-sinter--038958510200bc271822ed9a.md) | 119 | `result-track:038958510200bc271822ed9ae315c2cf2b1db96ec564a065fedcf3d2c9281852` |
| 11 | `theorem` | [IsGδ.inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isg-inter--e597ae04e0a75b9809b26247.md) | 123 | `result-track:e597ae04e0a75b9809b2624751d0e0db565a037c36e83227e4e633e86bd65c3e` |
| 12 | `theorem` | [IsGδ.union](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isg-union--932d5d48550cfabffc9e6c47.md) | 128 | `result-track:932d5d48550cfabffc9e6c478cee8e1350ef61e59918549d4058ae8d98302692` |
| 13 | `theorem` | [IsGδ.sUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isg-sunion--12a162e9220f078e5d52767e.md) | 137 | `result-track:12a162e9220f078e5d52767e48989c672e646290b2b14e027d6335a1a65577f9` |
| 14 | `theorem` | [IsGδ.biUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isg-biunion--8dcec776adb167e48b400423.md) | 145 | `result-track:8dcec776adb167e48b4004233c292f4e7ad0b0262cdfe954d676d9246e100cc2` |
| 15 | `theorem` | [IsGδ.iUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isg-iunion--9eb7ff1ecb3fd1b999111bcc.md) | 151 | `result-track:9eb7ff1ecb3fd1b999111bcc6a9fe6783a75c8db07661643ff26e119eebb1a7f` |
| 16 | `theorem` | [IsGδ.preimage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isg-preimage--2d20244647f0b283a187956c.md) | 155 | `result-track:2d20244647f0b283a187956c7e47000f068a9967c3de667448b323f8567bda60` |
| 17 | `def` | [residual](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/residual--c3f6dff5358e8bbe59bb584d.md) | 170 | `declaration-track:c3f6dff5358e8bbe59bb584d6638c8abf2746ea427261abd5bd980883e38dae9` |
| 18 | `instance` | [countableInterFilter_residual](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/countableinterfilter-residual--d6353a963badeff2a6a444cc.md) | 173 | `declaration-track:d6353a963badeff2a6a444cca3cf91ec4b2a7a62c79c92d87a025330922eb2d4` |
| 19 | `theorem` | [residual_of_dense_open](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/residual-of-dense-open--e5e438c686371a3a6db238df.md) | 177 | `result-track:e5e438c686371a3a6db238dff0cede73fd3582e83d6963f16f396dc8b3c58009` |
| 20 | `theorem` | [residual_of_dense_Gδ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/residual-of-dense-g--770260e3f25f5f96ee08318c.md) | 181 | `result-track:770260e3f25f5f96ee08318c96c3a2c8d41d067904f3fe15938f70f44aaa7f30` |
| 21 | `theorem` | [mem_residual_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/mem-residual-iff--5430f051cf46a40db3f4a66f.md) | 188 | `result-track:5430f051cf46a40db3f4a66fd099beca460c77820ae1b5fd38c847e45b25a874` |
| 22 | `def` | [IsNowhereDense](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isnowheredense--9bae2f6af4d4307d034f43e7.md) | 200 | `declaration-track:9bae2f6af4d4307d034f43e7586c97a0f73519bd6e998b3cbdf63da834855481` |
| 23 | `lemma` | [isNowhereDense_empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isnowheredense-empty--b3a8364fe1d0eca9c3d003ee.md) | 204 | `result-track:b3a8364fe1d0eca9c3d003ee30edc922e29ffaaf988dd09d3b01f79b1dcd2e74` |
| 24 | `lemma` | [IsNowhereDense.mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isnowheredense-mono--941059ebbeba885575f5e1c3.md) | 209 | `result-track:941059ebbeba885575f5e1c3d99f0dab946628846903531e00756add1aae9cb6` |
| 25 | `lemma` | [IsNowhereDense.union](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isnowheredense-union--111ac46485978c679e988974.md) | 213 | `result-track:111ac46485978c679e9889747b6d45d1e8f45c54a7bd31a260ea44474cb70442` |
| 26 | `lemma` | [IsNowhereDense.biUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isnowheredense-biunion--220f9ffe9ea6b84568573eea.md) | 221 | `result-track:220f9ffe9ea6b84568573eea40c1ec723a74d0777d65c4fd91a0f69ae4c162d9` |
| 27 | `lemma` | [IsNowhereDense.iUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isnowheredense-iunion--f0709b95fcc0ceddfa2c459d.md) | 231 | `result-track:f0709b95fcc0ceddfa2c459db2228afda97ec73ef596ba6b4f2433b6915eba5b` |
| 28 | `lemma` | [IsClosed.isNowhereDense_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isclosed-isnowheredense-iff--181f7532ccee89b70547a7f4.md) | 237 | `result-track:181f7532ccee89b70547a7f4c3fac55c215fdea38462e223e79b32379bf3f697` |
| 29 | `lemma` | [IsNowhereDense.closure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isnowheredense-closure--4ea558de7cf38075d76b1850.md) | 242 | `result-track:4ea558de7cf38075d76b185088f04181823bf8c0a9a90e680d6ecd6d252d8e35` |
| 30 | `lemma` | [IsNowhereDense.subset_of_closed_isNowhereDense](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isnowheredense-subset-of-closed-isnowheredense--48978a993ae9dab82996f648.md) | 247 | `result-track:48978a993ae9dab82996f648f9a891766d31c9f3c2fe1b7a071aa6a6971be258` |
| 31 | `lemma` | [isClosed_isNowhereDense_iff_compl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isclosed-isnowheredense-iff-compl--a1c9eafced423688b52efcbd.md) | 252 | `result-track:a1c9eafced423688b52efcbda7982bdcf02cf19e7ce154808dbdb90554b9d87c` |
| 32 | `lemma` | [isNowhereDense_iff_disjoint](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isnowheredense-iff-disjoint--53a7396b5de3098a5f1d7589.md) | 259 | `result-track:53a7396b5de3098a5f1d758957757e9ba906e901db7b68fd8feee4fb330ca4ba` |
| 33 | `lemma` | [isNowhereDense_iff_forall_notMem_nhds](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isnowheredense-iff-forall-notmem-nhds--0397b9fb049fd1ae9ff85df2.md) | 266 | `result-track:0397b9fb049fd1ae9ff85df231830617355b355a38441fbcbd5d331bb060529a` |
| 34 | `lemma` | [Topology.IsInducing.isNowhereDense_image](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/topology-isinducing-isnowheredense-image--e2cb93b02b373191366c0c55.md) | 272 | `result-track:e2cb93b02b373191366c0c5518c8b2cd59ce58d0432b1ab730073c0f475c38f4` |
| 35 | `lemma` | [IsNowhereDense.image_val](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isnowheredense-image-val--baed788bec7b5bc2d1aae161.md) | 279 | `result-track:baed788bec7b5bc2d1aae161c29621143d552ef4a034d34575b2785dae4a8c1d` |
| 36 | `def` | [IsMeagre](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/ismeagre--189cf521e1af95496e2745b4.md) | 284 | `declaration-track:189cf521e1af95496e2745b4c0d47a83d22d23e6344d926b7d863a91079d6e53` |
| 37 | `lemma` | [IsMeagre.empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/ismeagre-empty--97f061c3304e3cc4e3cacd16.md) | 287 | `result-track:97f061c3304e3cc4e3cacd1630753effc224e533beda2b4ed035b69328b803d9` |
| 38 | `lemma` | [IsMeagre.mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/ismeagre-mono--2b9ff75bb3156900bddbf025.md) | 293 | `result-track:2b9ff75bb3156900bddbf02574b4410c0c5b56fd74e0c08cb4df3b05934e3e5b` |
| 39 | `lemma` | [IsMeagre.inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/ismeagre-inter--590415cd2f6a07f37265f7ca.md) | 297 | `result-track:590415cd2f6a07f37265f7ca7cc97f059c7c5fbee85c35cf5c0703d43743eef9` |
| 40 | `lemma` | [IsMeagre.union](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/ismeagre-union--67e0ac0f0cfbf9593e99eb8a.md) | 301 | `result-track:67e0ac0f0cfbf9593e99eb8a589359a085ebf97c7ef4a1ca26ec691f98590ab9` |
| 41 | `lemma` | [isMeagre_iUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/ismeagre-iunion--5de6e3c88a52bbbe6f375893.md) | 306 | `result-track:5de6e3c88a52bbbe6f375893d760102a4a42b33571ccca0efd80c4e8c0444586` |
| 42 | `lemma` | [isMeagre_biUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/ismeagre-biunion--d1845538a13755cf292d9e8e.md) | 311 | `result-track:d1845538a13755cf292d9e8ed1e2435cfe4954fd88d1eb9eeafc7cac5bf77d26` |
| 43 | `lemma` | [isMeagre_iff_countable_union_isNowhereDense](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/ismeagre-iff-countable-union-isnowheredense--0f80ca98183a14c4c0315f1e.md) | 320 | `result-track:0f80ca98183a14c4c0315f1e414f0fc21e123e477af1713625464eb12c559f11` |
| 44 | `lemma` | [nonempty_of_not_isMeagre](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/nonempty-of-not-ismeagre--35b66ed4212cd29aeef82468.md) | 334 | `result-track:35b66ed4212cd29aeef824682feba10ae7efdcb5bc2758451d8d31344886192d` |
| 45 | `lemma` | [IsNowhereDense.isMeagre](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/isnowheredense-ismeagre--18ee28add6a91e634731219b.md) | 339 | `result-track:18ee28add6a91e634731219b22c8a925e2750d3e2cd4ea2924cac5fa97f6708b` |
| 46 | `lemma` | [exists_of_not_isMeagre_biUnion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/exists-of-not-ismeagre-biunion--c89b811ea03caac318e357bb.md) | 343 | `result-track:c89b811ea03caac318e357bb096f1dec911599bdff9b9838ddf86b19c0a780f0` |
| 47 | `lemma` | [Topology.IsInducing.isMeagre_image](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/topology-isinducing-ismeagre-image--8f6c9bbbe835dceda61bb38f.md) | 350 | `result-track:8f6c9bbbe835dceda61bb38fe4e947b17df1f96568ef22bfccfa2479327b1a56` |
| 48 | `lemma` | [IsMeagre.image_val](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean/declarations/ismeagre-image-val--cc40a09a6b2c8dccd76638c6.md) | 364 | `result-track:cc40a09a6b2c8dccd76638c6650e069aed063073df932d9dbac1966b33c6e052` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
