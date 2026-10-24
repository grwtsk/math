# Verification target: GRWTSK.Algebra.Constructions.Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01ed6736dc8080d7b55e9be3802c4fa2311676ba",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/index.md) · [Full source](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01ed6736dc8080d7b55e9be3802c4fa2311676ba`.

Source path: `GRWTSK/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.FreeCommRing` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Units` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pushoutCocone](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/pushoutcocone--da6dea01b7528f903ce90be2.md) | 47 | `declaration-track:da6dea01b7528f903ce90be234f453e8ad6723ce7b93712307bc30d72a4f3230` |
| 2 | `theorem` | [pushoutCocone_inl](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/pushoutcocone-inl--6f6ab1d7631c45707475c4a3.md) | 59 | `result-track:6f6ab1d7631c45707475c4a3478aba538b5868426d7b6e72c603000dc7693c9a` |
| 3 | `theorem` | [pushoutCocone_inr](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/pushoutcocone-inr--8fe16151b47434ce1931dd38.md) | 64 | `result-track:8fe16151b47434ce1931dd38adb0beb667f4efd285169656c919a009ee45d27b` |
| 4 | `theorem` | [pushoutCocone_pt](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/pushoutcocone-pt--77b33947aeff72404ec81b48.md) | 69 | `result-track:77b33947aeff72404ec81b4862102180c917149528bda5c8ecf0795f1d0befc8` |
| 5 | `def` | [pushoutCoconeIsColimit](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/pushoutcoconeiscolimit--960e6a8d8a94d0e66c355416.md) | 75 | `declaration-track:960e6a8d8a94d0e66c355416a6df7ad6ba1f602f15adbf958c6dddd512792668` |
| 6 | `lemma` | [isPushout_tensorProduct](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/ispushout-tensorproduct--ab6de3c4bdeb4f9257fd768a.md) | 116 | `result-track:ab6de3c4bdeb4f9257fd768ad946511315f146a1430511d8c8e7cb7a56850c38` |
| 7 | `lemma` | [isPushout_of_isPushout](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/ispushout-of-ispushout--6d31f8ce93522079644d9866.md) | 126 | `result-track:6d31f8ce93522079644d9866fd5e162668b6a058f071a1b59379ada6009f253e` |
| 8 | `lemma` | [isPushout_iff_isPushout](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/ispushout-iff-ispushout--caf3943859761db80ac84297.md) | 137 | `result-track:caf3943859761db80ac8429768b0a4e683f21e7f168579c78210e89aedb0c00a` |
| 9 | `lemma` | [isPushout_of_isLocalization](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/ispushout-of-islocalization--dd242c7f5a346fafd036dc28.md) | 162 | `result-track:dd242c7f5a346fafd036dc28b8919bebe28fd3a93b6d131901776ab72261c10a` |
| 10 | `lemma` | [closure_range_union_range_eq_top_of_isPushout](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/closure-range-union-range-eq-top-of-ispushout--3e0cfdb89c31ce2ecc99d3df.md) | 173 | `result-track:3e0cfdb89c31ce2ecc99d3dfa06ac2c554d749bb405864a85c5ae8d9a3e42c27` |
| 11 | `def` | [coproductCocone](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/coproductcocone--9982ed16c7ec18eb120b286b.md) | 194 | `declaration-track:9982ed16c7ec18eb120b286b7dbd5f3d3c15cf5545bcbed19fbbbb7787937e88` |
| 12 | `theorem` | [coproductCocone_inl](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/coproductcocone-inl--ccf527e45473a140ac927582.md) | 200 | `result-track:ccf527e45473a140ac927582983365716cdd290f01f418d1b614dc010463b69b` |
| 13 | `theorem` | [coproductCocone_inr](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/coproductcocone-inr--a92cc32d58b6c3533a6a1934.md) | 204 | `result-track:a92cc32d58b6c3533a6a1934c4d4acf8bb769e6be744864721707c9c226a4372` |
| 14 | `def` | [coproductCoconeIsColimit](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/coproductcoconeiscolimit--b723d4388c3044de6b441a3f.md) | 211 | `declaration-track:b723d4388c3044de6b441a3f8614703f5edba6a216609d6d91d63b2ac616fdfd` |
| 15 | `def` | [coproductColimitCocone](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/coproductcolimitcocone--bf3a42cdebc91651a1f6ece1.md) | 230 | `declaration-track:bf3a42cdebc91651a1f6ece109ba998284376185f6dbafbd2d6e417f7de25ce3` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/instance--9c0b21eaa84b6c31babf4c5a.md) | 238 | `declaration-track:9c0b21eaa84b6c31babf4c5a05a5af18d245909e1fde6a163d57ddb81f407aeb` |
| 17 | `def` | [punitIsTerminal](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/punitisterminal--bd6933d1c1530645890efcb8.md) | 242 | `declaration-track:bd6933d1c1530645890efcb84cdbdae6fabc4b60a7f739a0a54e1948d6c4bdfb` |
| 18 | `instance` | [commRingCat_hasStrictTerminalObjects](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/commringcat-hasstrictterminalobjects--7c5b1b366fe4dfa03c3a6169.md) | 245 | `declaration-track:7c5b1b366fe4dfa03c3a61697d206d442d8a18710701d99154535a8b12682d99` |
| 19 | `theorem` | [subsingleton_of_isTerminal](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/subsingleton-of-isterminal--75d45de1f2d7ae95e1337f76.md) | 257 | `result-track:75d45de1f2d7ae95e1337f76ad093edf4dde26e50771983d237e04a4e9408b27` |
| 20 | `def` | [zIsInitial](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/zisinitial--a912416ef5f3a076fb737e81.md) | 262 | `declaration-track:a912416ef5f3a076fb737e81f6635ee60acc985bc885d270dca0929570cb5846` |
| 21 | `def` | [isInitial](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/isinitial--26148d34d899da262b899737.md) | 267 | `declaration-track:26148d34d899da262b89973711bc472b2662d6f6d89e499ac8505c6b78881ad4` |
| 22 | `def` | [prodFan](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/prodfan--42635bccce380d8cd8160f53.md) | 283 | `declaration-track:42635bccce380d8cd8160f53f43b5cc84b2f7ed83430bb71e3ac462f933776c5` |
| 23 | `def` | [prodFanIsLimit](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/prodfanislimit--0d2cb735c5c042b3aa510f3f.md) | 289 | `declaration-track:0d2cb735c5c042b3aa510f3f99d70931700f27ac37da48f7e5455fbdc4a8e42d` |
| 24 | `def` | [piFan](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/pifan--ea2e0d60e6c339d54f41683b.md) | 315 | `declaration-track:ea2e0d60e6c339d54f41683b390d87d5620195895f30c36be0366230cb4a8cbd` |
| 25 | `def` | [piFanIsLimit](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/pifanislimit--9520c0407a941b6c3dce6cec.md) | 321 | `declaration-track:9520c0407a941b6c3dce6ceca661a4aad2d58e37288f7822a6048ac721009613` |
| 26 | `def` | [piIsoPi](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/piisopi--13424fd7053c3504c06824f5.md) | 330 | `declaration-track:13424fd7053c3504c06824f53c75afb71e3a6171a9b74a1274f708e297030794` |
| 27 | `def` | [_root_.RingEquiv.piEquivPi](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/root-ringequiv-piequivpi--ec60469135e5b5b4e6d9f1c0.md) | 336 | `declaration-track:ec60469135e5b5b4e6d9f1c0912bfd95dd69e2ff07317254f43250bd67aedd38` |
| 28 | `theorem` | [isUnit_iff_forall_isUnit](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/isunit-iff-forall-isunit--130d85b831de1ea41e1cdd95.md) | 346 | `result-track:130d85b831de1ea41e1cdd9514603a9e793518c02f5a771ceaf0c86e4d2e05e1` |
| 29 | `theorem` | [π_isLocalHom](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/islocalhom--306ae89fcf1bd65ab1500cfa.md) | 370 | `result-track:306ae89fcf1bd65ab1500cfa02498fc8527b7a13f5891e4eb0f231db437b8eb9` |
| 30 | `theorem` | [isLocalRing](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/islocalring--1b04b327cc1b276482f70d23.md) | 379 | `result-track:1b04b327cc1b276482f70d233c01b9d7cb9438ecfa9216abfef45824c6145712` |
| 31 | `def` | [equalizerFork](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/equalizerfork--3515ba126e9053509efd2aca.md) | 393 | `declaration-track:3515ba126e9053509efd2acab00e375513373282f01850af5893f60a4ec1d065` |
| 32 | `def` | [equalizerForkIsLimit](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/equalizerforkislimit--2b7dccc2bc070ac8c6a46e03.md) | 399 | `declaration-track:2b7dccc2bc070ac8c6a46e030d2a821f665204396846ed4782ee361e78fa1273` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/instance--0b919b32cf8c5a18eb6e5503.md) | 410 | `declaration-track:0b919b32cf8c5a18eb6e5503b47de504c32be9c529eb61b1cf4f3f315a45f0ba` |
| 34 | `instance` | [equalizer_ι_isLocalHom](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/equalizer-islocalhom--1604b9dbb411ad34e5502501.md) | 415 | `declaration-track:1604b9dbb411ad34e550250116db94f29016dbdbec8c5b0307dc55df957bfcbe` |
| 35 | `theorem` | [equalizer_limit_isLocalRing](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/equalizer-limit-islocalring--d486fa21a1e88bdb3afde87e.md) | 424 | `result-track:d486fa21a1e88bdb3afde87e8857e2ef68b70cbc4e5c0e34b7b34ff664256eaf` |
| 36 | `instance` | [equalizer_ι_isLocalHom'](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/equalizer-islocalhom--2e5b72c0a734b8707604d3a3.md) | 428 | `declaration-track:2e5b72c0a734b8707604d3a3a8bc336ed9e6a71b508678980e800d156909c1b9` |
| 37 | `def` | [pullbackCone](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/pullbackcone--dabc2f7b06e19fcca005b9e0.md) | 447 | `declaration-track:dabc2f7b06e19fcca005b9e0c196581b270c484353a1fb3397d53c5724c7f985` |
| 38 | `def` | [pullbackConeIsLimit](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/pullbackconeislimit--877f2aa3e474c706fdacc14e.md) | 460 | `declaration-track:877f2aa3e474c706fdacc14ebc2f1d1fda8c73272031a7dff6fee2e89f458bb0` |
| 39 | `instance` | [pullbackFst_isLocalHom](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/pullbackfst-islocalhom--98409c28d578e7b1eb72aeff.md) | 483 | `declaration-track:98409c28d578e7b1eb72aeff4dba5a6e6c82b0c8f7ddce1c53bdef80950f55f1` |
| 40 | `theorem` | [pullback_isLocalRing](../../../../mathematics/Algebra/Constructions/Variantf6112ee9ec195d3d6d018c55723da2fb8ce75fba6396b21254a9c6a61d46bc57.lean/declarations/pullback-islocalring--40f0efaf9eab00fabbbd9d5d.md) | 492 | `result-track:40f0efaf9eab00fabbbd9d5defb298129e92c44b4c36b620356dc830a5f6149f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
