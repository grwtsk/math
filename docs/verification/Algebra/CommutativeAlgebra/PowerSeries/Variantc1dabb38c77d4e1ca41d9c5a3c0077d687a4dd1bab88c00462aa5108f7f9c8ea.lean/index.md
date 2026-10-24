# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PowerSeries.Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57005f97f438501ab75a2b845acd06e62d53c11d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57005f97f438501ab75a2b845acd06e62d53c11d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/declarations/topowerseries--bba81968c719fa100f3edb73.md) | 63 | `declaration-track:bba81968c719fa100f3edb7376f8703c06fca2ab672cacfd49fb48a47ed76933` |
| 2 | `theorem` | [coeff_toPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/declarations/coeff-topowerseries--130723538e234fedb5ab50a6.md) | 87 | `result-track:130723538e234fedb5ab50a69613946c9fbaff63a3516b20f6e01a244568239f` |
| 3 | `theorem` | [coeff_toPowerSeries_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/declarations/coeff-topowerseries-symm--b8b5039069c2c02ba39e3b04.md) | 91 | `result-track:b8b5039069c2c02ba39e3b04802070200e7cab9f7ee8449adbb0e04ce4f4c237` |
| 4 | `def` | [ofPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/declarations/ofpowerseries--6e7dd148c4fae31d59d18ade.md) | 98 | `declaration-track:6e7dd148c4fae31d59d18ade336c420ed2d5d157650c73af65e7295e368ff018` |
| 5 | `theorem` | [ofPowerSeries_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/declarations/ofpowerseries-injective--943a6ba4cf1482a77e67612b.md) | 105 | `result-track:943a6ba4cf1482a77e67612b47f48a9f804212ab4915b051fd2714364b71e702` |
| 6 | `theorem` | [ofPowerSeries_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/declarations/ofpowerseries-apply--cf6473290f5ed9893225222e.md) | 109 | `result-track:cf6473290f5ed9893225222eb3e6bc5b1995c765881fc2cf9d201d40eec176c7` |
| 7 | `theorem` | [ofPowerSeries_apply_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/declarations/ofpowerseries-apply-coeff--2d4b5d16bef73b69c7404b2c.md) | 113 | `result-track:2d4b5d16bef73b69c7404b2c4fa562544f04bbfdc601a1d002432e8b525a8be2` |
| 8 | `theorem` | [ofPowerSeries_C](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/declarations/ofpowerseries-c--c3bb249a8c6f2ce4f5ec20eb.md) | 122 | `result-track:c3bb249a8c6f2ce4f5ec20ebb1a1f7a7db7afbb1f02d55f6d496e55bcafa7090` |
| 9 | `theorem` | [ofPowerSeries_X](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/declarations/ofpowerseries-x--fd69f809345bb4fcd0ac3b20.md) | 136 | `result-track:fd69f809345bb4fcd0ac3b202a5b8d3a578704be661cb24d885f4db31b03bab3` |
| 10 | `theorem` | [ofPowerSeries_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/declarations/ofpowerseries-x-pow--3b22ce86b7c9f1d1472dde71.md) | 148 | `result-track:3b22ce86b7c9f1d1472dde71a5f568888ff5f322d4aa7db1fc186cac3e50ca01` |
| 11 | `def` | [toMvPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/declarations/tomvpowerseries--4ea6d7cf82cc325871f1e62b.md) | 161 | `declaration-track:4ea6d7cf82cc325871f1e62b7db504619261ae348b752c0d441ede1acd3a3b60` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/declarations/instance--843b464a5d428f5afc134f97.md) | 191 | `declaration-track:843b464a5d428f5afc134f97d41f72d9d80792577249387c0a9ff31d4dde458a` |
| 13 | `theorem` | [coeff_toMvPowerSeries](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/declarations/coeff-tomvpowerseries--334b8da307c39907a871f9b1.md) | 194 | `result-track:334b8da307c39907a871f9b137811c0a494934ace4ce5536095641ae99865ece` |
| 14 | `theorem` | [coeff_toMvPowerSeries_symm](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/declarations/coeff-tomvpowerseries-symm--343e18fbf4d4e5b3646c2e7b.md) | 198 | `result-track:343e18fbf4d4e5b3646c2e7b50bab8d95bc3619b35a0e9d7fd099946ed4b10f9` |
| 15 | `def` | [toPowerSeriesAlg](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/declarations/topowerseriesalg--304fa015893d27e6467fb6fd.md) | 210 | `declaration-track:304fa015893d27e6467fb6fd13eefe7780933d0d71ff85d3bc4e189836b1d7d8` |
| 16 | `def` | [ofPowerSeriesAlg](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/declarations/ofpowerseriesalg--ce4b5ec3f6f1c0f785590db4.md) | 220 | `declaration-track:ce4b5ec3f6f1c0f785590db40fde2ae2c3bfc7c73d8f3a6ced3b9ec5a6cad2dd` |
| 17 | `instance` | [powerSeriesAlgebra](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/declarations/powerseriesalgebra--2f4da168369f5a11901f21ba.md) | 225 | `declaration-track:2f4da168369f5a11901f21ba83586d45aa9b181b661bb0177be685c521e5a6ad` |
| 18 | `theorem` | [algebraMap_apply'](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/declarations/algebramap-apply--75a7f63a51b0bb5a06f74435.md) | 232 | `result-track:75a7f63a51b0bb5a06f74435a8ce9b5016aaf5424235f5fc28f0fdc8aa171518` |
| 19 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.ToPowerSeries.Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.Polynomial.algebraMap_hahnSeries_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/declarations/root-grwtsk-algebra-commutativealgebra-topowerseries-variantf77519d05eac--b3d220fd80cc76c1cf611b55.md) | 237 | `result-track:b3d220fd80cc76c1cf611b55625ff67b4476196d8ceae838f5d3e7e23188cb2b` |
| 20 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.ToPowerSeries.Variantf77519d05eacfb30e6696adc43ce65f4348269ae62ccc1bcdad1c093a6dfd4a0.Polynomial.algebraMap_hahnSeries_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/PowerSeries/Variantc1dabb38c77d4e1ca41d9c5a3c0077d687a4dd1bab88c00462aa5108f7f9c8ea.lean/declarations/root-grwtsk-algebra-commutativealgebra-topowerseries-variantf77519d05eac--15d54d6b2bf8971b05813810.md) | 241 | `result-track:15d54d6b2bf8971b0581381044c89294d6665b682e68b96eb04ac5a7ca3bd641` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
