# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fcf3ff7bff2f653dd0897a8bd98d764d6fca5be",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fcf3ff7bff2f653dd0897a8bd98d764d6fca5be`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.LinearIndependent.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Product` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Algebra` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Proj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/proj--387f8517949a3ea36ef13008.md) | 83 | `declaration-track:387f8517949a3ea36ef13008e9967370566c26b2e8eb3cdb2ac676022c219e07` |
| 2 | `theorem` | [continuous_proj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/continuous-proj--1dc8c6e10a14c0f9fbb2fa74.md) | 87 | `result-track:1dc8c6e10a14c0f9fbb2fa7475079579059d5849ebc351fd6e8e4177e36e014b` |
| 3 | `def` | [π](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/anonymous--107f36587b25615447a8c17f.md) | 97 | `declaration-track:107f36587b25615447a8c17f5d3951faacabf213e31e74c6aadcf21a3754d062` |
| 4 | `def` | [ProjRestrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/projrestrict--0681eaf43b8fa9e88e19c9b6.md) | 101 | `declaration-track:0681eaf43b8fa9e88e19c9b6b374ca3dcb5118fd3254970d4ffbeba822642c9d` |
| 5 | `theorem` | [continuous_projRestrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/continuous-projrestrict--d534af73e32e872e4143040f.md) | 105 | `result-track:d534af73e32e872e4143040f8f7a0a339340db191313ac158416e8243642ac40` |
| 6 | `theorem` | [proj_eq_self](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/proj-eq-self--aa8032794e79265733baf1e9.md) | 108 | `result-track:aa8032794e79265733baf1e97ab99847eb5b5f885d4e5baab986041be51d09b4` |
| 7 | `theorem` | [proj_prop_eq_self](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/proj-prop-eq-self--74de05895749fedf1d919a2a.md) | 114 | `result-track:74de05895749fedf1d919a2a3ad3dda50dea45a5b74abeffe21c61afa6eb8688` |
| 8 | `theorem` | [proj_comp_of_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/proj-comp-of-subset--f7d60336e29a38dec4781a99.md) | 120 | `result-track:f7d60336e29a38dec4781a99cc0ae8beb42d787ee4b5cfa023ab58601bc3f7e4` |
| 9 | `theorem` | [proj_eq_of_subset](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/proj-eq-of-subset--305b7ff4b6972b5818e9549e.md) | 124 | `result-track:305b7ff4b6972b5818e9549ecb0b36aad5b08e2d7e29b9bfc6eb3cb795184e66` |
| 10 | `def` | [ProjRestricts](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/projrestricts--e9bcd443fb3821a8aa1184a2.md) | 140 | `declaration-track:e9bcd443fb3821a8aa1184a22266bdfcdaf2b4507e8f9b889b405dcaeea7820f` |
| 11 | `theorem` | [continuous_projRestricts](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/continuous-projrestricts--c24becbbed59bffbe42ea66c.md) | 144 | `result-track:c24becbbed59bffbe42ea66c8e280c353ccc3026057bf3a95562a1a7362628da` |
| 12 | `theorem` | [surjective_projRestricts](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/surjective-projrestricts--843ea06ba16f870480650f10.md) | 147 | `result-track:843ea06ba16f870480650f1058b5e7a83d8e8f7b4d523d5928b55217b0ccf3c1` |
| 13 | `theorem` | [projRestricts_eq_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/projrestricts-eq-id--6496b4981dfb80a494c69b61.md) | 151 | `result-track:6496b4981dfb80a494c69b61ab9e829db1c4a92aae99d66d38f386f41cf59ba8` |
| 14 | `theorem` | [projRestricts_eq_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/projrestricts-eq-comp--8c0eb3c00a160f2b0d9192cf.md) | 155 | `result-track:8c0eb3c00a160f2b0d9192cff48c48df45edb49fc6d45f9d720af1217d5c0237` |
| 15 | `theorem` | [projRestricts_comp_projRestrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/projrestricts-comp-projrestrict--a4047d080218ddb8d99a3b1e.md) | 161 | `result-track:a4047d080218ddb8d99a3b1ef61d2856424a37f7989fb50bf04e92df35d7f499` |
| 16 | `def` | [iso_map](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/iso-map--bd013a406825d21ff43139b8.md) | 170 | `declaration-track:bd013a406825d21ff43139b886b12acaf45168d39c217ced8aff5fb037820bdb` |
| 17 | `lemma` | [iso_map_bijective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/iso-map-bijective--56b6c00020c61d71872c855a.md) | 179 | `result-track:56b6c00020c61d71872c855a0e8a6fb28d5b77ffe84dc80ba1d5d005adfaa9f5` |
| 18 | `def` | [spanFunctor](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/spanfunctor--c740a24b256cf71de3d24bcc.md) | 202 | `declaration-track:c740a24b256cf71de3d24bcc5e70746da1ca6ea0727204a8f5e4a8ff6b538e04` |
| 19 | `def` | [spanCone](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/spancone--17a904dca171ef384e792e2a.md) | 213 | `declaration-track:17a904dca171ef384e792e2a03dde527a599dc3d6eeb9bd7590655e74939d93f` |
| 20 | `def` | [spanCone_isLimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/spancone-islimit--d9587ee4990b5e9724c06997.md) | 227 | `declaration-track:d9587ee4990b5e9724c0699726782f6eb928bc5034d2474e4b98fabb6cd3afbd` |
| 21 | `def` | [e](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/e--9d6bdea3d23434b7585b1376.md) | 281 | `declaration-track:9d6bdea3d23434b7585b13761a44e4dd7c99a6a7bacc45c2dbe25a0ca38759d9` |
| 22 | `def` | [Products](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/products--35256976d472fa8e2272f9b6.md) | 298 | `declaration-track:35256976d472fa8e2272f9b64dbce28482e3fd642fed202f5a136be2efeefd49` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/instance--e03aaea8944afc800f1ef9fe.md) | 302 | `declaration-track:e03aaea8944afc800f1ef9fe5a58174934dd201e7381520e3715ea2ed35df307` |
| 24 | `theorem` | [lt_iff_lex_lt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/lt-iff-lex-lt--d50cb608bb4e966674461d24.md) | 306 | `result-track:d50cb608bb4e966674461d2457a0044d01d0d2464f4dd3abc591726a50c34026` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/instance--848c28522b10bb918c9cfac1.md) | 309 | `declaration-track:848c28522b10bb918c9cfac1ccc0c35adcddbdd30bc6ea96549045942fd2a50c` |
| 26 | `def` | [eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/eval--ff89be4198111b28802deaaf.md) | 318 | `declaration-track:ff89be4198111b28802deaaf4199aa83cbf7f95f9b57efc891be57ce8c160610` |
| 27 | `def` | [isGood](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/isgood--afd590932e16feffd5ee7e70.md) | 324 | `declaration-track:afd590932e16feffd5ee7e706d54353b4b8ee137dd4a2e28582b725d0faad5f5` |
| 28 | `theorem` | [rel_head!_of_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/rel-head-of-mem--ab45cc8bd1e5e775d1925879.md) | 327 | `result-track:ab45cc8bd1e5e775d19258795db487f002b05d822c1cccbc283ed552e281480f` |
| 29 | `theorem` | [head!_le_of_lt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/head-le-of-lt--707563110a0e8ffdfd93b254.md) | 331 | `result-track:707563110a0e8ffdfd93b2546be4af1787f31397a0be79ededc5e6d88543d538` |
| 30 | `def` | [GoodProducts](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/goodproducts--30c7315634fb3f237781f6b2.md) | 338 | `declaration-track:30c7315634fb3f237781f6b206284123c94d86c31cfeaf116d9158b8351952c3` |
| 31 | `def` | [eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/eval--b9c62f2d09d71ac85745a6d3.md) | 343 | `declaration-track:b9c62f2d09d71ac85745a6d3c3064bade809f34f331cc8dd3e872d411af7d376` |
| 32 | `theorem` | [injective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/injective--e80de158aa6cd1b284e35983.md) | 346 | `result-track:e80de158aa6cd1b284e35983675b5f32ebfb2f113e92199309602f33833d79c8` |
| 33 | `def` | [range](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/range--a82b0622e89a1f1b315f8091.md) | 355 | `declaration-track:a82b0622e89a1f1b315f8091de69b94ffa979c059166f26224a6150c9aeb03b0` |
| 34 | `def` | [equiv_range](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/equiv-range--8f8e1f4f518aa42f4f5f192c.md) | 359 | `declaration-track:8f8e1f4f518aa42f4f5f192c17e39349c80a58b96ce2fbfe7719085be4284fae` |
| 35 | `theorem` | [equiv_toFun_eq_eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/equiv-tofun-eq-eval--f593d621cb1f71bd45bfc890.md) | 362 | `result-track:f593d621cb1f71bd45bfc89028b31ef11418ec85aea39ae22b70e922035b61af` |
| 36 | `theorem` | [linearIndependent_iff_range](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/linearindependent-iff-range--d7b83ee28cdd824c33f60d91.md) | 364 | `result-track:d7b83ee28cdd824c33f60d91de88bbe743107e76e915cf2c8f414e3edb21ee62` |
| 37 | `theorem` | [eval_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/eval-eq--bc820643b4dea60286229604.md) | 373 | `result-track:bc820643b4dea60286229604b64cc46d5abd2e383c61bc227353631e6f37490a` |
| 38 | `theorem` | [evalFacProp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/evalfacprop--627d8e5f759d5162fd487fb3.md) | 389 | `result-track:627d8e5f759d5162fd487fb37df286cf660707dbf4544d5734fb38c140f64108` |
| 39 | `theorem` | [evalFacProps](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/evalfacprops--dff39a6175e604a270be4372.md) | 397 | `result-track:dff39a6175e604a270be4372168206773fb1b31ebfc772bf7b5ada8472422d01` |
| 40 | `theorem` | [prop_of_isGood](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/prop-of-isgood--bcf7ccd752c317f73f97b5c9.md) | 406 | `result-track:bcf7ccd752c317f73f97b5c9ab3615b347288f69cbb40260b8961de22f9374fb` |
| 41 | `theorem` | [GoodProducts.span_iff_products](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/goodproducts-span-iff-products--fd21c98ea6e68d3bccfbf9cf.md) | 421 | `result-track:fd21c98ea6e68d3bccfbf9cf7c0d844ab2996939c3a948158cf150b069c02f15` |
| 42 | `def` | [ord](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/ord--35281e29c50d9c06170a1a07.md) | 469 | `declaration-track:35281e29c50d9c06170a1a0786fc119607745bbe875b07e4b86bd516329bad18` |
| 43 | `def` | [term](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/term--632d1d7e2d17223e7938a2ec.md) | 473 | `declaration-track:632d1d7e2d17223e7938a2ec5942a360751ebf4eccf7698f4c864424a685e6be` |
| 44 | `theorem` | [term_ord_aux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/term-ord-aux--6b6a251d45bcf6fce859c664.md) | 478 | `result-track:6b6a251d45bcf6fce859c664cd7105ca84921542b911c4143cd9ade0de5a16e1` |
| 45 | `theorem` | [ord_term_aux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/ord-term-aux--6bb292596dbb828cc6717006.md) | 483 | `result-track:6bb292596dbb828cc6717006bd97915ac386ac47a193fa2089eee4bdc02bd1eb` |
| 46 | `theorem` | [ord_term](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/ord-term--5d549ec68612cb66c4a3fa46.md) | 487 | `result-track:5d549ec68612cb66c4a3fa46bc51602aed9985b3345988e89abc932e0738a94a` |
| 47 | `def` | [contained](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/contained--0ec65be8cf3f13f13ef1da68.md) | 496 | `declaration-track:0ec65be8cf3f13f13ef1da681ce9eabe2d7132089a94364efe034496579f9f8d` |
| 48 | `def` | [P](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/p--4a12d9f6687f11b683cbcda0.md) | 503 | `declaration-track:4a12d9f6687f11b683cbcda0ba8e63a625e66574c384124a0e2991c99cb8a0d9` |
| 49 | `theorem` | [Products.prop_of_isGood_of_contained](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/products-prop-of-isgood-of-contained--7a3be413ec87904e5e26f5cb.md) | 508 | `result-track:7a3be413ec87904e5e26f5cb17cb6e556d8a0be915442531c8c6cf345afcf597` |
| 50 | `theorem` | [contained_eq_proj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/contained-eq-proj--4ecfda0481ab036ea5cd955b.md) | 538 | `result-track:4ecfda0481ab036ea5cd955b6a35ab72ca941fb4a2922055671310298fb7d7e5` |
| 51 | `theorem` | [isClosed_proj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/isclosed-proj--1ea7cbb8ef0c98eb63ee1b8a.md) | 544 | `result-track:1ea7cbb8ef0c98eb63ee1b8ad8f1de15c1799c997875768a443a3f2a85749d92` |
| 52 | `theorem` | [contained_proj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/contained-proj--fc6aeff81955aa134fe44a4a.md) | 547 | `result-track:fc6aeff81955aa134fe44a4ac573da29e3d28cc8a14d73977cc3c6174621588b` |
| 53 | `def` | [πs](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/s--9c1cc1c12ca5af151b5bec85.md) | 554 | `declaration-track:9c1cc1c12ca5af151b5bec852991057caf09ac4f82948f209723d6b95f52c67c` |
| 54 | `theorem` | [coe_πs](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/coe-s--faf3709ca70f64d48168606d.md) | 557 | `result-track:faf3709ca70f64d48168606d03eddf68766b591915f06a3a0206725af47dacb7` |
| 55 | `theorem` | [injective_πs](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/injective-s--20fb300246f3b834e73c96cb.md) | 561 | `result-track:20fb300246f3b834e73c96cb14e74f460a6fedfaee76bb051766e9d722a0e6a5` |
| 56 | `def` | [πs'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/s--52b6f3d3470ebca10bceefa2.md) | 569 | `declaration-track:52b6f3d3470ebca10bceefa297384ea6c2f0f873bb9521e3fe789465d8b12371` |
| 57 | `theorem` | [coe_πs'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/coe-s--2772ddd4525cf365afbb20d2.md) | 574 | `result-track:2772ddd4525cf365afbb20d294aeb77ffd9d66f92973b2d5b7be09fa41c09333` |
| 58 | `theorem` | [injective_πs'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/injective-s--c48e834c1f58b7f6f7c31f97.md) | 578 | `result-track:c48e834c1f58b7f6f7c31f9742d9b3c5cabe2a93fa46ab91e2f57573be6e0a5a` |
| 59 | `theorem` | [lt_ord_of_lt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/lt-ord-of-lt--11de5df49a9c4b15b6d707f3.md) | 584 | `result-track:11de5df49a9c4b15b6d707f34a6cdd3a21be7d4f2bc7ade3c148afdbcab17fdb` |
| 60 | `theorem` | [eval_πs](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/eval-s--f6de586685a9877966118ad5.md) | 588 | `result-track:f6de586685a9877966118ad59985c10e8ee2fa682aeed1037e30b30764e30af4` |
| 61 | `theorem` | [eval_πs'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/eval-s--a484fc7a3716b4d226061f64.md) | 592 | `result-track:a484fc7a3716b4d226061f649292fdf1bb037695f983409c1293cff33f5964e9` |
| 62 | `theorem` | [eval_πs_image](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/eval-s-image--e613b68927898f21a3f636cd.md) | 599 | `result-track:e613b68927898f21a3f636cdd81daf72ed2952a90449b0bafaaab88a42ffa933` |
| 63 | `theorem` | [eval_πs_image'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/eval-s-image--592e0a14f427cced67e6997f.md) | 608 | `result-track:592e0a14f427cced67e6997fb9b7f7eb2d6a8df76d8ab65b3605a016c27f1109` |
| 64 | `theorem` | [head_lt_ord_of_isGood](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/head-lt-ord-of-isgood--8ca91e2c42a50565ab59d030.md) | 617 | `result-track:8ca91e2c42a50565ab59d03041d2081c3397f77a19d3ade9ad4cbead0f377f5d` |
| 65 | `theorem` | [isGood_mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant4b4560117d18be1df68fc0114ce3f1386874afc92763d64e7cc784e78ac1d14a.lean/declarations/isgood-mono--e377e76e9b49f0bcbe4292ef.md) | 625 | `result-track:e377e76e9b49f0bcbe4292efa64b0e64a430375ab98e7543c38f20a912f1bd6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
