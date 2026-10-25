# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CardinalEmb.Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "307b1bf0c022c9bcab76476ab7dba82ada765f36",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `307b1bf0c022c9bcab76476ab7dba82ada765f36`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.SeparableClosure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PurelyInseparable.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeAlgebra` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.WithBotTop` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.DirectedInverseSystem` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/instance--05aa63fea2a7b2f129dd8704.md) | 84 | `declaration-track:05aa63fea2a7b2f129dd8704ace4039c57cc371d86b99473610060d074d60608` |
| 2 | `def` | [wellOrderedBasis](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/wellorderedbasis--cf8990ec649c1d7114435a5d.md) | 88 | `declaration-track:cf8990ec649c1d7114435a5d32a1dce55dbffe37986851acf300d4c434fb6f45` |
| 3 | `theorem` | [adjoin_basis_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/adjoin-basis-eq-top--16a1348fdca85cbe86aa9237.md) | 97 | `result-track:16a1348fdca85cbe86aa923772ad0ae3b56699a13711ff6699e4d7b90e489361` |
| 4 | `lemma` | [noMaxOrder_rank_toType](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/nomaxorder-rank-totype--0afab18ab7dca98f6ab18889.md) | 105 | `result-track:0afab18ab7dca98f6ab18889de9b6d905911018926b07b892d01e87cfa6f00a4` |
| 5 | `def` | [leastExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/leastext--a388a9c1798e23ac888fcdd4.md) | 115 | `declaration-track:a388a9c1798e23ac888fcdd4edc726e06daddfcd53c4c12d52c8b4cbd3860561` |
| 6 | `theorem` | [isLeast_leastExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/isleast-leastext--cf6166e312cb32692b1400c3.md) | 142 | `result-track:cf6166e312cb32692b1400c3d43946370938863954efe465c9adde6686fbcede` |
| 7 | `theorem` | [strictMono_leastExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/strictmono-leastext--7b139d4a7ba9adf7cbd7bda1.md) | 146 | `result-track:7b139d4a7ba9adf7cbd7bda129e1901ad7d643a7409b0018a8f7b3f1839bac7a` |
| 8 | `theorem` | [adjoin_image_leastExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/adjoin-image-leastext--387ca72a4ab50813000b396c.md) | 154 | `result-track:387ca72a4ab50813000b396c731925cb1032d9b97e3586d55c9549668b85a61e` |
| 9 | `theorem` | [iSup_adjoin_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/isup-adjoin-eq-top--68b70d8ba1ea516fc9037a11.md) | 159 | `result-track:68b70d8ba1ea516fc9037a1183c659f5a055b126a44fc97ce51101b8879eb747` |
| 10 | `theorem` | [strictMono_filtration](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/strictmono-filtration--421cc0e932e8074057f768d0.md) | 165 | `result-track:421cc0e932e8074057f768d0bd7998a5099e26e2ea07712d2bd5267773493754` |
| 11 | `theorem` | [filtration_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/filtration-succ--6c79a88c8eaa5d08e20c86d9.md) | 169 | `result-track:6c79a88c8eaa5d08e20c86d93ff418c3a82f39a2e7319f8b5a3a577a473cceb7` |
| 12 | `def` | [succEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/succequiv--19ce434a124971439f4d78df.md) | 175 | `declaration-track:19ce434a124971439f4d78df16bab1b34cd6603fbdc9cfd26d93ee3582850edd` |
| 13 | `theorem` | [succEquiv_coherence](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/succequiv-coherence--cb27f7307c9e8e49333773ff.md) | 181 | `result-track:cb27f7307c9e8e49333773ff52dbd9c36d78cc04072bf820efa568f93b251b5d` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/instance--ae4f7cb5c52329940be704af.md) | 185 | `declaration-track:ae4f7cb5c52329940be704af7e0a6e677cb5aba7909157ddc9b08ddd1c9a9363` |
| 15 | `theorem` | [deg_lt_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/deg-lt-aleph0--91c85756d2bc17bfc5827fcf.md) | 188 | `result-track:91c85756d2bc17bfc5827fcf17813637c0321f2a0c6ad72c57e52df248eb160e` |
| 16 | `def` | [filtration](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/filtration--1bc26d893b68eedd60a27aec.md) | 193 | `declaration-track:1bc26d893b68eedd60a27aec0503a807a63e71fa6b2200d860c3231b45ce5363` |
| 17 | `def` | [factor](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/factor--7ac96c33484472ed6f83b72f.md) | 202 | `declaration-track:7ac96c33484472ed6f83b72fd2e72ce92c804666b459cace6bd5d519625a1efe` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/instance--a572ae6883a51f4ca289b37e.md) | 207 | `declaration-track:a572ae6883a51f4ca289b37e8d4e06179464d7988938efed6bf6c245e62c9a3a` |
| 19 | `theorem` | [two_le_deg](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/two-le-deg--d529582029e1f9c3911878ee.md) | 213 | `result-track:d529582029e1f9c3911878eec3ba60a8dfcc953ec1325c796cf39306ddfa7643` |
| 20 | `def` | [embFunctor](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/embfunctor--f88a1ded2cc61cc0469c9274.md) | 227 | `declaration-track:f88a1ded2cc61cc0469c9274cc6c0c6a45673639c3ed4b6790f11971ddd1ba3d` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/instance--5c36f0ca077cbd393caf6372.md) | 230 | `declaration-track:5c36f0ca077cbd393caf63721372b1c8deb584a388afe0af32756b05cdd3c6e5` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/instance--de1b5e4287d6bbf9f213951c.md) | 234 | `declaration-track:de1b5e4287d6bbf9f213951c30603801a2039db9aee3334d8da56b6ca2799e6e` |
| 23 | `def` | [equivSucc](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/equivsucc--e4bbea2f3cac07cce2a7044a.md) | 237 | `declaration-track:e4bbea2f3cac07cce2a7044ab62638ca9c214421a2779936d186f73432474cac` |
| 24 | `theorem` | [equivSucc_coherence](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/equivsucc-coherence--197b22adcfd535204244f034.md) | 241 | `result-track:197b22adcfd535204244f03445741582d2c8a09d9f0915ed0ce6f69ec93e4838` |
| 25 | `theorem` | [directed_filtration](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/directed-filtration--9a3cbfc2b00e9eb22163b9c4.md) | 248 | `result-track:9a3cbfc2b00e9eb22163b9c430e6790f6f1d50d78592c1998eb51f04dd3e43d7` |
| 26 | `theorem` | [iSup_filtration](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/isup-filtration--5e53f0c656cae55b5b1dd0c4.md) | 255 | `result-track:5e53f0c656cae55b5b1dd0c47d6bf0c8f40098ec0ea9fbd941c40ccb54eb41df` |
| 27 | `lemma` | [eq_bot_of_not_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/eq-bot-of-not-nonempty--60574fdde6ada6b95c717395.md) | 265 | `result-track:60574fdde6ada6b95c717395ffe942da67d589101d0fe45a52203231bc449fa1` |
| 28 | `def` | [equivLim](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/equivlim--b072f313d01705c821cf43e0.md) | 274 | `declaration-track:b072f313d01705c821cf43e0283fe5cadfef1ac52b2d0bbda6d080e426c50ad2` |
| 29 | `theorem` | [equivLim_coherence](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/equivlim-coherence--1b666d45ad3c2afcf4d4c868.md) | 295 | `result-track:1b666d45ad3c2afcf4d4c86854719d6fc22cadc14941b1a282c9cfcb47053e16` |
| 30 | `def` | [embEquivPi](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/embequivpi--341167ea280cf1f8a387ca14.md) | 301 | `declaration-track:341167ea280cf1f8a387ca14642f77163b69c91baf756953fa9051ecb72d9e24` |
| 31 | `theorem` | [cardinal_eq_two_pow_rank](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/cardinal-eq-two-pow-rank--b19729228381a3e558549d06.md) | 315 | `result-track:b19729228381a3e558549d06a707887abba58fbab423f298f8a8ef9226a86997` |
| 32 | `theorem` | [cardinal_eq_of_isSeparable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/cardinal-eq-of-isseparable--a22f1baa8cffb06bcfc69e79.md) | 326 | `result-track:a22f1baa8cffb06bcfc69e79edde247e514dad0a75ab6b5fb83db2f3c793f803` |
| 33 | `theorem` | [cardinal_eq_two_pow_sepDegree](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/cardinal-eq-two-pow-sepdegree--1243baf5af3e9704e9031836.md) | 334 | `result-track:1243baf5af3e9704e903183614a074158039813ff5fcbb91ddf2a1aa4ff8e764` |
| 34 | `theorem` | [cardinal_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/declarations/cardinal-eq--6cfe0b783af0308806168716.md) | 339 | `result-track:6cfe0b783af03088061687163d2e21ef3e3b1505d202ce6f3101f911b0878eed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
