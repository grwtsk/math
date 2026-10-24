# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.FinitePlaces.Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b816975828aea26d5b9815ba628175d029a6e59",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b816975828aea26d5b9815ba628175d029a6e59`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Ring.Ultra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.WithZero` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.InfinitePlace.Embeddings` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.AdicValuation` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Factorization` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Norm.AbsNorm` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Valued.NormedValued` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [one_lt_absNorm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/one-lt-absnorm--db960818aed0b3541bb8522d.md) | 54 | `result-track:db960818aed0b3541bb8522d6e8dde141088776ab518d74fc45d29be6dff5f58` |
| 2 | `lemma` | [one_lt_absNorm_nnreal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/one-lt-absnorm-nnreal--a8e3109a84efa0177aa71fc4.md) | 66 | `result-track:a8e3109a84efa0177aa71fc471f151cc18445d0ba4b79f6235a63cfd2c64e27c` |
| 3 | `lemma` | [absNorm_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/absnorm-ne-zero--78ebf6045eaf80593efa6b24.md) | 71 | `result-track:78ebf6045eaf80593efa6b241f7ba38b7cc5fd4c00a8b7c35ed98b5a4a9ff799` |
| 4 | `def` | [adicAbv](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/adicabv--4433aaef7827c5ae1989cd02.md) | 78 | `declaration-track:4433aaef7827c5ae1989cd025365e45b77ab261cb78c5bb721579549d81389b6` |
| 5 | `theorem` | [adicAbv_def](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/adicabv-def--12126cd15e6035c59eb49c0b.md) | 94 | `result-track:12126cd15e6035c59eb49c0bb37fe2dff974aa5d0e62f6c8b153f234950b2fca` |
| 6 | `def` | [FinitePlace.embedding](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/finiteplace-embedding--90d9c25860bb10f4a1e8390a.md) | 108 | `declaration-track:90d9c25860bb10f4a1e8390a651b860987927c2f35d8ffe5c9097a77605caf99` |
| 7 | `theorem` | [FinitePlace.embedding_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/finiteplace-embedding-apply--973b3f04dd9cd247ee6cf4ef.md) | 113 | `result-track:973b3f04dd9cd247ee6cf4eff65e7324e30576bb75ccd67c9d8a9bc8eb9911da` |
| 8 | `instance` | [instRankOneValuedAdicCompletion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/instrankonevaluedadiccompletion--5187f58b31f804395a65d1f4.md) | 115 | `declaration-track:5187f58b31f804395a65d1f41539930445fc96d5a35f06c8acf7530ecd3240f3` |
| 9 | `instance` | [instNormedFieldValuedAdicCompletion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/instnormedfieldvaluedadiccompletion--ed6ae9354269f9cb0a7f2b38.md) | 135 | `declaration-track:ed6ae9354269f9cb0a7f2b3814cd5de872225cd0eca1f5d1a8bbe69cecbac244` |
| 10 | `def` | [FinitePlace](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/finiteplace--40153e47de05ce99b6f769dc.md) | 140 | `declaration-track:40153e47de05ce99b6f769dc0ec6f942e54cd28dd4b8146799f72306e2b9cba9` |
| 11 | `def` | [FinitePlace.mk](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/finiteplace-mk--9cd2f46d12984f69c2de1d5b.md) | 144 | `declaration-track:9cd2f46d12984f69c2de1d5b0eb87221d90391dd3ed7b8ff4e353ab125fe7454` |
| 12 | `lemma` | [toNNReal_valued_eq_adicAbv](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/tonnreal-valued-eq-adicabv--31305c49d7221e6a99647445.md) | 147 | `result-track:31305c49d7221e6a99647445fba43a97e58ae059a6914cca9764bfb1ac7722e9` |
| 13 | `theorem` | [FinitePlace.norm_def](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/finiteplace-norm-def--73d298673d8d89845ec01f98.md) | 155 | `result-track:73d298673d8d89845ec01f9873ce5bc86992a921de6bbeabd00abe3de02d4dc0` |
| 14 | `theorem` | [FinitePlace.norm_def'](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/finiteplace-norm-def--3eb519437efe62a8da59d7f1.md) | 161 | `result-track:3eb519437efe62a8da59d7f11f4acc5e6034f08aeacd0f95ed0b9d8903db6e6c` |
| 15 | `theorem` | [FinitePlace.norm_def_int](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/finiteplace-norm-def-int--20c855cb264e493cbcb5e954.md) | 167 | `result-track:20c855cb264e493cbcb5e954559dc9a18cb1fe017c69bd5ddfeb7b5508c77884` |
| 16 | `theorem` | [RingOfIntegers.HeightOneSpectrum.adicAbv_add_le_max](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/ringofintegers-heightonespectrum-adicabv-add-le-max--904f7269cc2bc5e9b2e3e553.md) | 172 | `result-track:904f7269cc2bc5e9b2e3e553b71bbf3d4db32df1041b2b490237f46fe6d26fa7` |
| 17 | `theorem` | [RingOfIntegers.HeightOneSpectrum.adicAbv_natCast_le_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/ringofintegers-heightonespectrum-adicabv-natcast-le-one--e42141d54c9cc029f455a1af.md) | 180 | `result-track:e42141d54c9cc029f455a1af0f953d8aaa0eadd908347301d06b74716c8c7f0c` |
| 18 | `theorem` | [RingOfIntegers.HeightOneSpectrum.adicAbv_intCast_le_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/ringofintegers-heightonespectrum-adicabv-intcast-le-one--d475fb2845e0a5b6cd039004.md) | 187 | `result-track:d475fb2845e0a5b6cd0390043896aff53a4090f021edc6bf6dcd7b6fc13ed639` |
| 19 | `theorem` | [FinitePlace.norm_le_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/finiteplace-norm-le-one--0f04b21e3463bac094527800.md) | 196 | `result-track:0f04b21e3463bac09452780013e70f4241ab9163df9e7359e969b0961681b252` |
| 20 | `theorem` | [FinitePlace.norm_eq_one_iff_notMem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/finiteplace-norm-eq-one-iff-notmem--57a1289173b94d6756e0dd5c.md) | 203 | `result-track:57a1289173b94d6756e0dd5c9d7f6de935a41c598ebc75fd0d1dce8d6e9f68ef` |
| 21 | `theorem` | [FinitePlace.norm_lt_one_iff_mem](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/finiteplace-norm-lt-one-iff-mem--763a00b1bff1c85f980b6f18.md) | 216 | `result-track:763a00b1bff1c85f980b6f181a30d56ad97073fdec50e69e632ba526f3181e3f` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/instance--a33f456a7b48d8d6ee56ff9e.md) | 228 | `declaration-track:a33f456a7b48d8d6ee56ff9e4be08dc0f0adf839fbeb054d8c9813a1a15a23e0` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/instance--9e35c320a8ebb1805e194ba6.md) | 232 | `declaration-track:9e35c320a8ebb1805e194ba677c3a9cf382cc896a96999684edeef868fbe2b4e` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/instance--c119a0e64ac003f219841522.md) | 237 | `declaration-track:c119a0e64ac003f219841522b2c7c56dedb2f83a95243cc75735df5a94fc72cf` |
| 25 | `theorem` | [mk_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/mk-apply--850a550b647f4a2ceb1a3d54.md) | 241 | `result-track:850a550b647f4a2ceb1a3d5488424e6d49d54c8d5078de3291f0a097ad2a8904` |
| 26 | `def` | [maximalIdeal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/maximalideal--fd37c2f9fc8c713e383b66fc.md) | 246 | `declaration-track:fd37c2f9fc8c713e383b66fc0277ae091dc073308bd7de40464b84771a50082f` |
| 27 | `theorem` | [mk_maximalIdeal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/mk-maximalideal--276e275156be6f67a1734fb7.md) | 249 | `result-track:276e275156be6f67a1734fb7691c315ee284027be5445a8ee46098ef3b744254` |
| 28 | `theorem` | [norm_embedding_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/norm-embedding-eq--4239873485d968ec4ae8103c.md) | 252 | `result-track:4239873485d968ec4ae8103c832736677eaf03128c3f3c8d2c979e3eaf49941d` |
| 29 | `theorem` | [pos_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/pos-iff--ea89219f4c33895a84147b8e.md) | 256 | `result-track:ea89219f4c33895a84147b8ec099d6d747c173808c9e2f02479ec2142e74313e` |
| 30 | `theorem` | [mk_eq_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/mk-eq-iff--31a49a30a9f8273fc3681c31.md) | 259 | `result-track:31a49a30a9f8273fc3681c31eac2b8082a634c1ca210b514e0c5563a2f606ad5` |
| 31 | `theorem` | [maximalIdeal_mk](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/maximalideal-mk--bdae244c598a51a45bd6a4b9.md) | 273 | `result-track:bdae244c598a51a45bd6a4b9131f6230c9b1dac8a57c51ed196a429e76658296` |
| 32 | `def` | [equivHeightOneSpectrum](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/equivheightonespectrum--93956381015a380e1e8a13fa.md) | 277 | `declaration-track:93956381015a380e1e8a13fa2c87c7fcf1f67bcaf0a51a85ec97a77c7ece22f7` |
| 33 | `lemma` | [maximalIdeal_injective](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/maximalideal-injective--7d5f4b8a0e226a748ebc3055.md) | 284 | `result-track:7d5f4b8a0e226a748ebc30555d4486d23ffa2f44c7e6389c19e794d286fc543f` |
| 34 | `lemma` | [maximalIdeal_inj](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/maximalideal-inj--d641b5df94f898c679cbb186.md) | 287 | `result-track:d641b5df94f898c679cbb1863b087d5cbe09576e832beded1a55476ec74a8149` |
| 35 | `theorem` | [mulSupport_finite_int](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/mulsupport-finite-int--6c891635414c0881598d5fca.md) | 290 | `result-track:6c891635414c0881598d5fcaa69085be04c63c8648218c329d11630d158b5998` |
| 36 | `theorem` | [mulSupport_finite](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/mulsupport-finite--5b5a5c6b3ff7b0488c1e637c.md) | 304 | `result-track:5b5a5c6b3ff7b0488c1e637c1d9421d601ac1e55a7f37b4fa691b7f1433af629` |
| 37 | `lemma` | [equivHeightOneSpectrum_symm_apply](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/equivheightonespectrum-symm-apply--001111faf7b71e086b2ce042.md) | 328 | `result-track:001111faf7b71e086b2ce0428356f444520389f939a52b8a6a3f711a55a467ce` |
| 38 | `lemma` | [embedding_mul_absNorm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/FinitePlaces/Variant26cd1926ef65bf546081ddacc8aac9454aef337f881035f7f45b72407d6e7688.lean/declarations/embedding-mul-absnorm--5983970018f5d59c0a5df62e.md) | 336 | `result-track:5983970018f5d59c0a5df62ef6aefc808cc052c629b81acd87ea1affd6e86c3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
