# Verification target: GRWTSK.Algebra.Basic.Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65e315e6ebb697b311bcf45a7943aac08fbd51fa",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65e315e6ebb697b311bcf45a7943aac08fbd51fa`.

Source path: `GRWTSK/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [castAddMonoidHom](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/castaddmonoidhom--a3460fc9ea20812b5cc01d40.md) | 38 | `declaration-track:a3460fc9ea20812b5cc01d403ead08c7231c1c03ff8c0b3b25dec45bb6b9fc6b` |
| 2 | `theorem` | [coe_castAddMonoidHom](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/coe-castaddmonoidhom--bb848c9c429755cbbe2403c0.md) | 45 | `result-track:bb848c9c429755cbbe2403c0d11ffdbe0ff316bb3a58bfc69f39b8e94f9ea30e` |
| 3 | `lemma` | [_root_.Even.natCast](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/root-even-natcast--6a051188ba15bd9c183267ca.md) | 48 | `result-track:6a051188ba15bd9c183267caa591fbd8033f1e081757a50f09edf3951a9acca6` |
| 4 | `lemma` | [cast_mul](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/cast-mul--1eb8883bbf01d642e098de8a.md) | 54 | `result-track:1eb8883bbf01d642e098de8aa8d941de785c8f6470a597b875b745a78a18b60b` |
| 5 | `def` | [castRingHom](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/castringhom--e17d2ec9762043b2931f9cb6.md) | 60 | `declaration-track:e17d2ec9762043b2931f9cb6c2c844b8f6d743deb91398f4f2e659f01700715e` |
| 6 | `lemma` | [coe_castRingHom](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/coe-castringhom--572d031d493f8e2e98771143.md) | 63 | `result-track:572d031d493f8e2e98771143933228f9753616aef5437a1d8b286e7517309fc8` |
| 7 | `lemma` | [_root_.nsmul_eq_mul'](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/root-nsmul-eq-mul--17344e01473e78ba5569be39.md) | 65 | `result-track:17344e01473e78ba5569be398f13670dcd5bf980cf4b9e5ae0f6113119a73f9b` |
| 8 | `lemma` | [ofNat_nsmul_eq_mul](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/ofnat-nsmul-eq-mul--dce605b8905d8432afb1f4a1.md) | 70 | `result-track:dce605b8905d8432afb1f4a191c31795240d138a6c2f0da4d3c8d0dfcb1432c7` |
| 9 | `lemma` | [cast_pow](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/cast-pow--39586f3daf7022bd57550efa.md) | 79 | `result-track:39586f3daf7022bd57550efadf238088f24b8103f594245a0a0a5d90fe43a18d` |
| 10 | `lemma` | [cast_dvd_cast](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/cast-dvd-cast--270fbcea27f08370bbb09147.md) | 84 | `result-track:270fbcea27f08370bbb091475b43e894f88c8f4371721db1be440b62ef30e678` |
| 11 | `theorem` | [eq_natCast'](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/eq-natcast--db3bff4744d680f5f671937f.md) | 96 | `result-track:db3bff4744d680f5f671937f162be578bbb6a489ab33aa048b0b4fe05b7bd80e` |
| 12 | `theorem` | [map_natCast'](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/map-natcast--937cfad4ae3b7ac13d89194c.md) | 100 | `result-track:937cfad4ae3b7ac13d89194c6e74c1ead3b8e124c23db72131508a4b2fd547a2` |
| 13 | `theorem` | [map_ofNat'](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/map-ofnat--ad729e637ec19f02d7bf9a1c.md) | 105 | `result-track:ad729e637ec19f02d7bf9a1cc1ee4a6169180fc8c66503cb9d3d17df96929be1` |
| 14 | `theorem` | [ext_nat''](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/ext-nat--999f4db9870a6dcd4c8eb031.md) | 116 | `result-track:999f4db9870a6dcd4c8eb0310da47e162b0149ea7598af5fd2cecec6bf2eff8b` |
| 15 | `theorem` | [MonoidWithZeroHom.ext_nat](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/monoidwithzerohom-ext-nat--fda1821d4f0d985ed52a4f1e.md) | 124 | `result-track:fda1821d4f0d985ed52a4f1e5e5150ec3a65489e7cb19fbd6b836ecb74307629` |
| 16 | `theorem` | [eq_natCast](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/eq-natcast--88cb5166dbfc4c86d71fe756.md) | 134 | `result-track:88cb5166dbfc4c86d71fe756d8ad59b829e77df5a4f82199d0d110c819d8cd86` |
| 17 | `theorem` | [map_natCast](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/map-natcast--7f403f543d567bd28f80042d.md) | 138 | `result-track:7f403f543d567bd28f80042df9a0043dab2e3099555ecd081012e09ec2ab1387` |
| 18 | `theorem` | [map_ofNat](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/map-ofnat--3871d762a35e2c63ad91aab1.md) | 146 | `result-track:3871d762a35e2c63ad91aab14c0708d4763af6a812482c3d0e6a56950ca2f8e5` |
| 19 | `theorem` | [ext_nat](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/ext-nat--6a7b1ed266faa6b7fc6f012e.md) | 150 | `result-track:6a7b1ed266faa6b7fc6f012e607512eb0453aa51ec872ccfba66e5c4f80a5938` |
| 20 | `theorem` | [NeZero.nat_of_neZero](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/nezero-nat-of-nezero--251a82d5e3130418678704b5.md) | 153 | `result-track:251a82d5e3130418678704b53f8baeac60de466eb31918d3a69ae1b51f2c3553` |
| 21 | `theorem` | [eq_natCast'](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/eq-natcast--7b886c2b14c17f31f984a121.md) | 163 | `result-track:7b886c2b14c17f31f984a12100cde45fdbafd029230bc6d00ef34e050d90f487` |
| 22 | `theorem` | [Nat.cast_id](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/nat-cast-id--d334dca18ca60d2f836d813f.md) | 169 | `result-track:d334dca18ca60d2f836d813f3f224003f45e573efe068d28caad0aa691918987` |
| 23 | `theorem` | [Nat.castRingHom_nat](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/nat-castringhom-nat--bb242bcac0c2e85d68de53cc.md) | 173 | `result-track:bb242bcac0c2e85d68de53cc483f01714d53825d12fb39b2ff69aa130afccfe3` |
| 24 | `instance` | [Nat.uniqueRingHom](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/nat-uniqueringhom--ff2e22f54068e3b8a185dff6.md) | 178 | `declaration-track:ff2e22f54068e3b8a185dff60668c0737fd0d79e4479096053b418e5ee95fcc0` |
| 25 | `instance` | [instNatCast](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/instnatcast--d9b703f5a925e36d3cd284ef.md) | 189 | `declaration-track:d9b703f5a925e36d3cd284efc1adc1412154e448d229c2e2c9a63fd2c4724382` |
| 26 | `theorem` | [natCast_apply](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/natcast-apply--b9cfbf27273fd612735cf04d.md) | 192 | `result-track:b9cfbf27273fd612735cf04d1fb36c37721dd6e692a236b38d5cedfbc7121405` |
| 27 | `theorem` | [natCast_def](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/natcast-def--850219d7f9c10891fcf442c8.md) | 196 | `result-track:850219d7f9c10891fcf442c804c468fcf3dd3395ff1ec185e9eec354d7106c75` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/instance--7ac173df993a95f204eed4dd.md) | 205 | `declaration-track:7ac173df993a95f204eed4ddd8e4c6354d62c73600ffbd7878a7005fa3e8cbd6` |
| 29 | `theorem` | [ofNat_apply](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/ofnat-apply--47524c50a37466af7833712a.md) | 209 | `result-track:47524c50a37466af7833712a9b46afc5cdb69bcd2c59198f21aa5d2642cebcac` |
| 30 | `lemma` | [ofNat_def](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/ofnat-def--632247d0411a589703555cba.md) | 212 | `result-track:632247d0411a589703555cba73fcd723824a8cafe196fcb26b9102bb1de8b1a5` |
| 31 | `theorem` | [Sum.elim_natCast_natCast](../../../../mathematics/Algebra/Basic/Variant935c67652a9058884e1aed30ed0592a36cda6e4a254b9eb24beb66b09bdd5259.lean/declarations/sum-elim-natcast-natcast--1f58923a1d6c38a38600de2b.md) | 218 | `result-track:1f58923a1d6c38a38600de2b747c932544fbe6e6371be9ec948db4360b468436` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
