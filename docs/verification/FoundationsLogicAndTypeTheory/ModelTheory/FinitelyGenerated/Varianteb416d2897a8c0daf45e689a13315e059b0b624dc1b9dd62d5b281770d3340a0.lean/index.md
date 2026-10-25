# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.FinitelyGenerated.Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a60ef526866574b41c75e27f4bd9430624989ae5",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a60ef526866574b41c75e27f4bd9430624989ae5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Substructures` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FG](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg--14d418222a40183615658ae9.md) | 43 | `declaration-track:14d418222a40183615658ae9c012392c2b2e2786761474a0b8846696d777b47e` |
| 2 | `theorem` | [fg_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-def--2172101c79fe5efde94d3226.md) | 46 | `result-track:2172101c79fe5efde94d32261d214fce518d93ef567182d2b7267268278d8a35` |
| 3 | `theorem` | [fg_iff_exists_fin_generating_family](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-iff-exists-fin-generating-family--c1cc69de9e4402640db41318.md) | 52 | `result-track:c1cc69de9e4402640db41318a8a01ba6dbd65247a39b1f2fad29aa0e48268ce4` |
| 4 | `theorem` | [fg_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-bot--ddf6990d5a068cac6e2c3a04.md) | 62 | `result-track:ddf6990d5a068cac6e2c3a04510cbf793340e48a48345916eb6809d029cdb5a4` |
| 5 | `instance` | [instInhabited_fg](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/instinhabited-fg--61139f09eee4efe08ad70cbf.md) | 65 | `declaration-track:61139f09eee4efe08ad70cbf5f63158205abc499bb0a2cc05cdfd52b9f7e72b4` |
| 6 | `theorem` | [fg_closure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-closure--ef66418cac5edccc599f33d7.md) | 67 | `result-track:ef66418cac5edccc599f33d7c794e34579de29cf647d33c8322122d154f2cb99` |
| 7 | `theorem` | [fg_closure_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-closure-singleton--bac4095728758f0f2967fcd7.md) | 70 | `result-track:bac4095728758f0f2967fcd7076efb17fd0b0b8d6df1a0c70b3e97562adc2751` |
| 8 | `theorem` | [FG.sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-sup--f7f4ca70ee461990ab89f568.md) | 73 | `result-track:f7f4ca70ee461990ab89f568b9bedef8597d4bb8def13a4b77f7f90f20c8b130` |
| 9 | `theorem` | [FG.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-map--c122a4e65ea1b8c6711125d9.md) | 78 | `result-track:c122a4e65ea1b8c6711125d93eda24254c6e1c22b040885efb786bd375bab13d` |
| 10 | `theorem` | [FG.of_map_embedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-of-map-embedding--2ebd0513e34a7f2b1ec0c370.md) | 83 | `result-track:2ebd0513e34a7f2b1ec0c37032391bb740262220032c194f255d500afebf139a` |
| 11 | `theorem` | [FG.of_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-of-finite--5f501debf6b8353421afb48f.md) | 96 | `result-track:5f501debf6b8353421afb48fb59999b210abd0bf44f5af3d6054b443a21b501f` |
| 12 | `theorem` | [FG.finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-finite--9bb2de47b46d11ef0e1abc22.md) | 99 | `result-track:9bb2de47b46d11ef0e1abc22ddcf99a30cb660de476bf188b6a14a8b328239f6` |
| 13 | `theorem` | [fg_iff_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-iff-finite--80b9dabee92ab1e6922af6ea.md) | 105 | `result-track:80b9dabee92ab1e6922af6ea16a629f17c524e77b9fffeb9a23f9a7fac681fd7` |
| 14 | `def` | [CG](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/cg--f9dfe21ff7c32cec531766f8.md) | 110 | `declaration-track:f9dfe21ff7c32cec531766f843842e297637c66c3bae83ebf6b8e81e61ad5584` |
| 15 | `theorem` | [cg_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/cg-def--7393b0322c05bbd9042fb21c.md) | 113 | `result-track:7393b0322c05bbd9042fb21cefbb5c3e03fb86964ea5bb1b419f450ef02b3f06` |
| 16 | `theorem` | [FG.cg](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-cg--9c1bb3a2f086dd6f7a54fdf2.md) | 116 | `result-track:9c1bb3a2f086dd6f7a54fdf2f4f458c3fd9ed4875931fcba44ea53765971f1ea` |
| 17 | `theorem` | [cg_iff_empty_or_exists_nat_generating_family](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/cg-iff-empty-or-exists-nat-generating-family--686f80077f004a575a6d91ad.md) | 120 | `result-track:686f80077f004a575a6d91adab7a2bf0ae0508592e8b2c3e0e5b8dfb0d37dc73` |
| 18 | `theorem` | [cg_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/cg-bot--48df929ae1f5fa32abe0828a.md) | 141 | `result-track:48df929ae1f5fa32abe0828a5c903461aeb8124f8fb1c666a3d68fb2ff0a3187` |
| 19 | `theorem` | [cg_closure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/cg-closure--8162c5861cda6034afd126ae.md) | 144 | `result-track:8162c5861cda6034afd126aed3a5b81c03085ea94b20afe2f8fa3897569748d9` |
| 20 | `theorem` | [cg_closure_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/cg-closure-singleton--2c5804b1e8bc053f0506179e.md) | 147 | `result-track:2c5804b1e8bc053f0506179eda9e6496d5d5bd6c212f79ebb179931d660b94dc` |
| 21 | `theorem` | [CG.sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/cg-sup--ed0973232e309aa7cbbe5958.md) | 150 | `result-track:ed0973232e309aa7cbbe5958e4aed85b42c7c0858f4c29c5a6772952bb91fe25` |
| 22 | `theorem` | [CG.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/cg-map--5a63e7d0d98be811fd9b141b.md) | 155 | `result-track:5a63e7d0d98be811fd9b141b978c2654b2562faed5b4d55f8e4be0e6254b29cd` |
| 23 | `theorem` | [CG.of_map_embedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/cg-of-map-embedding--98523cbfe9dfad3d0401e7d6.md) | 160 | `result-track:98523cbfe9dfad3d0401e7d69d0653590ee7256161afc5ed6bc512518744e3c3` |
| 24 | `theorem` | [cg_iff_countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/cg-iff-countable--c07172b505eddbbbd39f3edd.md) | 173 | `result-track:c07172b505eddbbbd39f3edd59c19dcc2b2224b7c670eb03d39f61acc0c76d34` |
| 25 | `theorem` | [cg_of_countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/cg-of-countable--ae302987a77ea6c9a58865bc.md) | 179 | `result-track:ae302987a77ea6c9a58865bcf42286db3f17d0446329fe26beec21daaa78d172` |
| 26 | `class` | [FG](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg--f53a72070e82b3e68a97ec31.md) | 191 | `declaration-track:f53a72070e82b3e68a97ec31ec8725af8837123f210fec62d8955c0a42e54f0a` |
| 27 | `class` | [CG](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/cg--abfb6d7c3886476f277daf38.md) | 195 | `declaration-track:abfb6d7c3886476f277daf3834ca471a4e4d7ad28ed509c34b30355c227403c8` |
| 28 | `theorem` | [fg_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-def--66d8098defbae0ec362ec130.md) | 200 | `result-track:66d8098defbae0ec362ec13089107cea16311ec3683e3d6ef7c5c022e6d966a7` |
| 29 | `theorem` | [fg_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-iff--0a96a1f5fa05bb5e5b59eb7b.md) | 204 | `result-track:0a96a1f5fa05bb5e5b59eb7bb0ceed4dafd6873f47b020020e40f5d6caef25f7` |
| 30 | `theorem` | [FG.range](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-range--f9dd3cfc20d08f7da8dd8873.md) | 207 | `result-track:f9dd3cfc20d08f7da8dd88739056022f2490c8630700034fb9a8a7faa8ef39df` |
| 31 | `theorem` | [FG.map_of_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-map-of-surjective--7e490cd6240edcdf1eb05515.md) | 211 | `result-track:7e490cd6240edcdf1eb0551529a38d0236e61d4c28d088b706c9840cf64dc31b` |
| 32 | `theorem` | [FG.countable_hom](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-countable-hom--1cbdb4a2d3effca552bd0607.md) | 217 | `result-track:1cbdb4a2d3effca552bd06074d02075e1dae26336b6ff8005bdaa50f93fbb66a` |
| 33 | `instance` | [FG.instCountable_hom](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-instcountable-hom--8accfee7ef49ce2b85f582e6.md) | 230 | `declaration-track:8accfee7ef49ce2b85f582e6b08a1a5c01a7a7096bd369bfc7938c54b5b9e925` |
| 34 | `theorem` | [FG.countable_embedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-countable-embedding--3f8a637c849ddca0de051e25.md) | 234 | `result-track:3f8a637c849ddca0de051e253a517010def259992ca002ec2107d1cfaa2a5bfd` |
| 35 | `instance` | [Fg.instCountable_embedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-instcountable-embedding--934637bab05883e10e7748b5.md) | 238 | `declaration-track:934637bab05883e10e7748b5257472f99a11aa400ebef6a173e03a9baefdb92c` |
| 36 | `theorem` | [FG.of_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-of-finite--9b8bd7ee34e7e9ee1cc47744.md) | 242 | `result-track:9b8bd7ee34e7e9ee1cc4774488be6f3d660d47559d03f105407aa6cd9d9a7a96` |
| 37 | `theorem` | [FG.finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-finite--c27be753952278ff8f0e5a5f.md) | 245 | `result-track:c27be753952278ff8f0e5a5f79b7b94c1b3545c5ff1cd32961ab6165b3326131` |
| 38 | `theorem` | [fg_iff_finite](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-iff-finite--02f3e8e36ded15e7f1070c61.md) | 248 | `result-track:02f3e8e36ded15e7f1070c61e2045822bed4de7f47ececbfb08748225d5a7635` |
| 39 | `theorem` | [cg_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/cg-def--69c128b7652e0ad969845fd3.md) | 251 | `result-track:69c128b7652e0ad969845fd3387f44d7ea146c708792e6c5de3e0bc081f5db57` |
| 40 | `theorem` | [cg_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/cg-iff--275109594c839916cf672a87.md) | 255 | `result-track:275109594c839916cf672a870b446d0c8061a1fcea1374d64c9f0c6bba92dc16` |
| 41 | `theorem` | [CG.range](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/cg-range--079538562bbc4f8234983891.md) | 258 | `result-track:079538562bbc4f8234983891ad8c7c9613de7e65c685d010bc0803c70dedf6e4` |
| 42 | `theorem` | [CG.map_of_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/cg-map-of-surjective--8ed3e7f1103d367e7136bff9.md) | 262 | `result-track:8ed3e7f1103d367e7136bff9008d1712be2f1db6e47bd912ca04e94ae2e21230` |
| 43 | `theorem` | [cg_iff_countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/cg-iff-countable--7f85354085fea81a966ca8ed.md) | 268 | `result-track:7f85354085fea81a966ca8ed0a2698242e96c46b7ac19fc43861b00a30cddcef` |
| 44 | `theorem` | [cg_of_countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/cg-of-countable--b06eb281e61079d11c815766.md) | 271 | `result-track:b06eb281e61079d11c815766223e0e2eb03768e14d1f3e09310411ac5c4774f5` |
| 45 | `theorem` | [FG.cg](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/fg-cg--cf70112dccf2c7e3e347d267.md) | 274 | `result-track:cf70112dccf2c7e3e347d267e96c3781a2953590abd8a3ba4b9e1512067d5332` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/instance--0775ebc8ee051572c3ad2586.md) | 277 | `declaration-track:0775ebc8ee051572c3ad25865efc33aabd8bde8c62507ca21ec6a35cb6b6cd46` |
| 47 | `theorem` | [Equiv.fg_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/equiv-fg-iff--cb513190c9eb04609b647230.md) | 282 | `result-track:cb513190c9eb04609b6472304c4da8ff084aaa9663de78949d72d6b46e4b4b66` |
| 48 | `theorem` | [Substructure.fg_iff_structure_fg](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/substructure-fg-iff-structure-fg--e2adbf1fa75cff01999f30cd.md) | 287 | `result-track:e2adbf1fa75cff01999f30cda2ebdcf4bfcf8b4a0d2fbc154486b9c42b713de5` |
| 49 | `theorem` | [Equiv.cg_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/equiv-cg-iff--f913a52b39384820bc9b13b7.md) | 296 | `result-track:f913a52b39384820bc9b13b78829c2152ff636c1b16ec445bcbf7bfa301d3671` |
| 50 | `theorem` | [Substructure.cg_iff_structure_cg](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/substructure-cg-iff-structure-cg--30746cf444678e125df9e975.md) | 301 | `result-track:30746cf444678e125df9e975980a600de6275711b8c2d9c534124ea7cfe6745a` |
| 51 | `theorem` | [Substructure.countable_fg_substructures_of_countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/substructure-countable-fg-substructures-of-countable--097c7a9311202a18053aca34.md) | 310 | `result-track:097c7a9311202a18053aca343a90c8c3fe5c2388eafe7d70bbd4427ebe93b788` |
| 52 | `instance` | [Substructure.instCountable_fg_substructures_of_countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/FinitelyGenerated/Varianteb416d2897a8c0daf45e689a13315e059b0b624dc1b9dd62d5b281770d3340a0.lean/declarations/substructure-instcountable-fg-substructures-of-countable--0dfccad236bbd97717d8d2c3.md) | 321 | `declaration-track:0dfccad236bbd97717d8d2c3e7faa85367fda06766275a54aed4a2dadc366f01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
