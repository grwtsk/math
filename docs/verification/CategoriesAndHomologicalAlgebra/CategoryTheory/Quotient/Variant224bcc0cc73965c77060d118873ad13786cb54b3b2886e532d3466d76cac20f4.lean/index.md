# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Quotient.Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67f783c12bc18f3f801725f8ba52250dfcadead1",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67f783c12bc18f3f801725f8ba52250dfcadead1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.NatIso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HomRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/homrel--12cb47db8cb1abe6cdf35295.md) | 30 | `declaration-track:12cb47db8cb1abe6cdf35295a4b52a48fee7089f49014c3d6dd03be09e387b32` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/instance--151d118db9ee1eea51828dc9.md) | 35 | `declaration-track:151d118db9ee1eea51828dc91193c598ef84ac29cc9353e305555a231ac8c6cf` |
| 3 | `def` | [Functor.homRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/functor-homrel--852754a16ddc29b4101856b1.md) | 45 | `declaration-track:852754a16ddc29b4101856b18fd96e59831d62061fdc4c4160dfedb5577ab584` |
| 4 | `lemma` | [Functor.homRel_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/functor-homrel-iff--8e9921fc8da78a2c5cf28915.md) | 49 | `result-track:8e9921fc8da78a2c5cf28915326bdd968ba6ffe328f6a333346ad1a9916e9ce4` |
| 5 | `class` | [Congruence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/congruence--f5a503a2e148cc4bf8d5c686.md) | 58 | `declaration-track:f5a503a2e148cc4bf8d5c6865836ae38a6765b9edaa6b0bba2bd091195c97047` |
| 6 | `instance` | [Functor.congruence_homRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/functor-congruence-homrel--c09e2eb7ef84e58e82791bfc.md) | 67 | `declaration-track:c09e2eb7ef84e58e82791bfc59ecd7a854de014dbf51b05e352a2c3df977cd2e` |
| 7 | `structure` | [Quotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/quotient--aaea919561c142a48a1623b1.md) | 78 | `declaration-track:aaea919561c142a48a1623b1a17dc4de2684610bea1af0940c4ba2f7fcad0537` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/instance--3a1bd8207cc93a01a8c8da64.md) | 82 | `declaration-track:3a1bd8207cc93a01a8c8da64d4f79e1a394618f4275c1014a8e47d25c5dc2bc0` |
| 9 | `inductive` | [CompClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/compclosure--edeeae3002cbe1e25e23dac1.md) | 88 | `declaration-track:edeeae3002cbe1e25e23dac191741cbf6ab4ab8f782ccd4cd0134c1a8a8d46b2` |
| 10 | `theorem` | [CompClosure.of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/compclosure-of--95db6eb925d5692d0219d19c.md) | 92 | `result-track:95db6eb925d5692d0219d19c58d161cef2ac7af4b00d69c7db6cc2362809719c` |
| 11 | `theorem` | [comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/comp-left--01d248ccc5035ae470d52108.md) | 95 | `result-track:01d248ccc5035ae470d52108cd2b6a33e987b2d23eeb9ced699ff99e4a614ea8` |
| 12 | `theorem` | [comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/comp-right--b25e5373ed0eafa1f47c594e.md) | 99 | `result-track:b25e5373ed0eafa1f47c594ebd88dfdd2e0d1ad0a9f84c2aac3f45a77c70e08a` |
| 13 | `def` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/hom--0a859b8e5bc564738d5a1fb4.md) | 104 | `declaration-track:0a859b8e5bc564738d5a1fb4ec55eb806100e78de9a651fc5c2623814d6dce2f` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/instance--5159dafc6ae590c894aee4bf.md) | 107 | `declaration-track:5159dafc6ae590c894aee4bf13be379dd5736a4c8d31e63cdca5d93b7dffb771` |
| 15 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/comp--adef0f8ca331bb500a206364.md) | 111 | `declaration-track:adef0f8ca331bb500a206364850b7cef4162ab1ac9351d021bbc96935b928291` |
| 16 | `theorem` | [comp_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/comp-mk--86e7921c1cdf409404298cba.md) | 119 | `result-track:86e7921c1cdf409404298cba30025de53ded7d9c7a0a4b4a8305058ff7c1ee85` |
| 17 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/category--0d9d370f94d43b224dddd69d.md) | 124 | `declaration-track:0d9d370f94d43b224dddd69d2210ddadbe87c5b7579ed00ab932a0b74986bbe2` |
| 18 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/functor--180e857cc74abd35d91ede87.md) | 133 | `declaration-track:180e857cc74abd35d91ede872ce0f583db6a5fca4bac625964b69f0ee9af581b` |
| 19 | `instance` | [full_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/full-functor--119e19545c18a7cf4d5fd3e7.md) | 137 | `declaration-track:119e19545c18a7cf4d5fd3e7f4326b563e6da003d3ab336c90b8df80c8c4e407` |
| 20 | `instance` | [essSurj_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/esssurj-functor--bcca6c4017ab1994ac73714e.md) | 140 | `declaration-track:bcca6c4017ab1994ac73714e36b84270c3f1fe784bd4871c597983074dcb870d` |
| 21 | `theorem` | [induction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/induction--ce1e71d0f4c0d767bd8bd40c.md) | 146 | `result-track:ce1e71d0f4c0d767bd8bd40cc0b914301601d4742a99c21c4c00b5cac94500e7` |
| 22 | `theorem` | [sound](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/sound--2293b4af805221e8abd4a0ac.md) | 152 | `result-track:2293b4af805221e8abd4a0ac12e0068673c194624ae1051b520e8e80c1e98594` |
| 23 | `lemma` | [compClosure_iff_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/compclosure-iff-self--7d9ef2dc8b2c2208a8500569.md) | 156 | `result-track:7d9ef2dc8b2c2208a85005697e6e7c72d7a921327a44c5f17174b84469e3b81e` |
| 24 | `theorem` | [compClosure_eq_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/compclosure-eq-self--1618bb6ffb7821870098a594.md) | 165 | `result-track:1618bb6ffb7821870098a594e94f173131ff8d4383cd1a585a2716f935d2b310` |
| 25 | `theorem` | [functor_map_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/functor-map-eq-iff--41983abf585cd6f4f511f8dd.md) | 170 | `result-track:41983abf585cd6f4f511f8dd06f209fbbd69a42637def7d5e4016dde2403794a` |
| 26 | `theorem` | [functor_homRel_eq_compClosure_eqvGen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/functor-homrel-eq-compclosure-eqvgen--97e9f4aa0db209844de35a93.md) | 176 | `result-track:97e9f4aa0db209844de35a93c461c480ecd6bc4aebaa5ac04a58fa3b2e8de968` |
| 27 | `theorem` | [compClosure.congruence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/compclosure-congruence--e920cd2e5fc338d2ed97d92f.md) | 180 | `result-track:e920cd2e5fc338d2ed97d92f8c1be4f49d570a1a8eb31a3a0cad6a1264c634b5` |
| 28 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/lift--7e7f761479e6670ba297c5dc.md) | 189 | `declaration-track:7e7f761479e6670ba297c5dc87c51ea960db5c675f2073f6a59ecb9e445f2c3d` |
| 29 | `theorem` | [lift_spec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/lift-spec--5f7d1f081a5d8078d5a8dad1.md) | 203 | `result-track:5f7d1f081a5d8078d5a8dad1adddca242993ab2e05a3fb207ea1624c4c71fdae` |
| 30 | `theorem` | [lift_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/lift-unique--c29cb4a6b23b2d461dbe462d.md) | 211 | `result-track:c29cb4a6b23b2d461dbe462d424ef74db8eed3eb866b26ffdb97bd237e156e77` |
| 31 | `lemma` | [lift_unique'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/lift-unique--07744c665a2451b7212a505a.md) | 223 | `result-track:07744c665a2451b7212a505a183619b666f154e9f5638309084b06c7b74d117b` |
| 32 | `def` | [lift.isLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/lift-islift--ff06bc416a08bc56ecfc7fbc.md) | 233 | `declaration-track:ff06bc416a08bc56ecfc7fbc6b8f2a7f0e5e4de281d7ffdfff55c64eff15c5a3` |
| 33 | `theorem` | [lift.isLift_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/lift-islift-hom--107dcb7cec6f685c1a6dd982.md) | 237 | `result-track:107dcb7cec6f685c1a6dd982dad2a225269683055b6f273c0d544a8776be6456` |
| 34 | `theorem` | [lift.isLift_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/lift-islift-inv--8a93bbfd42b841194ee6cca0.md) | 241 | `result-track:8a93bbfd42b841194ee6cca07519d00036fb54bf924c2b9bba55960ae907ffce` |
| 35 | `theorem` | [lift_obj_functor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/lift-obj-functor-obj--480f299fae80e2dd426a1ba5.md) | 244 | `result-track:480f299fae80e2dd426a1ba50084f494e391787b8d3c5322dad97b583d3c7497` |
| 36 | `theorem` | [lift_map_functor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/lift-map-functor-map--35fe1b8adf572ad7f3333bc6.md) | 247 | `result-track:35fe1b8adf572ad7f3333bc604ad2ce17e110895816ff4405d3f2077bbdd248b` |
| 37 | `lemma` | [natTrans_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/nattrans-ext--ab7e6d3784b95c79d69abdaf.md) | 255 | `result-track:ab7e6d3784b95c79d69abdaf552b29f63222ce7032bcdf8bab55b2c5847053d5` |
| 38 | `def` | [natTransLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/nattranslift--b27be47d98c0dc002d258035.md) | 263 | `declaration-track:b27be47d98c0dc002d258035702e789ac2626483934c579e587d97be3c11a0e6` |
| 39 | `lemma` | [natTransLift_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/nattranslift-app--b979aae194e699414604ab7c.md) | 271 | `result-track:b979aae194e699414604ab7cfa051353f5011853bca64c00764a77e3999f1c9d` |
| 40 | `lemma` | [comp_natTransLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/comp-nattranslift--00f85c96e57b6da95f08a719.md) | 276 | `result-track:00f85c96e57b6da95f08a71927bb41ba8147168bfb60b7765c470fcae03af119` |
| 41 | `lemma` | [natTransLift_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/nattranslift-id--53dc0e2693d34cc8070e67cf.md) | 282 | `result-track:53dc0e2693d34cc8070e67cfcc50e5e0181ea56c855940055bde8028b784ca61` |
| 42 | `def` | [natIsoLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/natisolift--ae058b8078fb7423fc81ed1e.md) | 288 | `declaration-track:ae058b8078fb7423fc81ed1e501d12335698c75ce397e2a8433dd0570ee01b18` |
| 43 | `instance` | [full_whiskeringLeft_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/full-whiskeringleft-functor--e419efdf3708aafc4c57b3e0.md) | 297 | `declaration-track:e419efdf3708aafc4c57b3e062b014e6fdf2e03a0016408d9dbabf20a0921ebf` |
| 44 | `instance` | [faithful_whiskeringLeft_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean/declarations/faithful-whiskeringleft-functor--369c0e4a2fa7c05140629884.md) | 301 | `declaration-track:369c0e4a2fa7c05140629884a327b4e576748bbcd1b10298a9c2116b0feed8fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
