# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactics.Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c89f8d907bc723ac75f49f0a8e5147184b028df",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c89f8d907bc723ac75f49f0a8e5147184b028df`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.Interval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exprXSq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/exprxsq--cf511f065f64860bc9ede3b6.md) | 51 | `declaration-track:cf511f065f64860bc9ede3b64bd6de53b341bd089219973e18c830191afda1a8` |
| 2 | `def` | [exprXSq_core](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/exprxsq-core--5736e6543d484fcabb936fb5.md) | 54 | `declaration-track:5736e6543d484fcabb936fb5e2b28da8b4ac48e7c4abb46d65397e52b6029b9e` |
| 3 | `def` | [exprXSq_supp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/exprxsq-supp--a4e6976b09d8cd4fe42b167e.md) | 58 | `declaration-track:a4e6976b09d8cd4fe42b167eac657ea003d3e578cab99e9577d742784ea44bad` |
| 4 | `def` | [I01](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/i01--2f333c562ee6566d73fa5d3a.md) | 62 | `declaration-track:2f333c562ee6566d73fa5d3a1396ba67741623c070f56a4e45fc03181c2affaf` |
| 5 | `theorem` | [xsq_le_one_native](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/xsq-le-one-native--eca6da86a04fc3e0e93dd4e2.md) | 66 | `result-track:eca6da86a04fc3e0e93dd4e2f83dbe6576a37f9fc8422bf3b470aaae7865bc50` |
| 6 | `theorem` | [zero_le_xsq_native](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/zero-le-xsq-native--cae745f3115350ba64d5c274.md) | 70 | `result-track:cae745f3115350ba64d5c2746f96e7afc76e5f0df9a6346e26c51b5dbfc3e2d1` |
| 7 | `theorem` | [xsq_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/xsq-le-one--c608040ddfaccecf045aa390.md) | 75 | `result-track:c608040ddfaccecf045aa39023dcb4b68ff9a8ca611e9da04c111aecd5bc767e` |
| 8 | `theorem` | [zero_le_xsq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/zero-le-xsq--cf5f6780bf931f716d7fda54.md) | 88 | `result-track:cf5f6780bf931f716d7fda5470984ebcc77d6cb728e7d20fbf92a367de64c7f3` |
| 9 | `def` | [exprSin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/exprsin--ed09194a51d06bddf90f6dad.md) | 98 | `declaration-track:ed09194a51d06bddf90f6dad8fccd941f037d3e36b20a429618aa4cbac61a5ae` |
| 10 | `def` | [exprSin_core](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/exprsin-core--cb2e523f00239fd9726539be.md) | 101 | `declaration-track:cb2e523f00239fd9726539be9d13a8cfd75dd54bb5d100a71f189c461eb97855` |
| 11 | `def` | [exprSin_supp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/exprsin-supp--e6acb0d0d289c4bdd41d25c5.md) | 105 | `declaration-track:e6acb0d0d289c4bdd41d25c5db0c9c869fb3a2f460b49433e58694f1bc2e53b3` |
| 12 | `theorem` | [sin_le_one_native](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/sin-le-one-native--c82856124f224110ff0153e0.md) | 109 | `result-track:c82856124f224110ff0153e06549dd58e09f57c3ee67847ed1bee62c68e2fd9c` |
| 13 | `theorem` | [neg_one_le_sin_native](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/neg-one-le-sin-native--49e48ccf45ec422bd25f922c.md) | 113 | `result-track:49e48ccf45ec422bd25f922c1157b4b5fa2570fdabc29b0718fc26556a2bb70c` |
| 14 | `theorem` | [sin_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/sin-le-one--42e8a7922eca47331959758e.md) | 118 | `result-track:42e8a7922eca47331959758e4460d15c1080281c7e669c2fac4ab0977ec7f68a` |
| 15 | `theorem` | [neg_one_le_sin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/neg-one-le-sin--6e014fe3029fbe743d2028d7.md) | 126 | `result-track:6e014fe3029fbe743d2028d73b75d8ca7be9501cc02cf09cde0440359986ab9e` |
| 16 | `def` | [exprXSqPlusSin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/exprxsqplussin--9738cf917a7c835ccfe8c294.md) | 135 | `declaration-track:9738cf917a7c835ccfe8c294b9431ed74d52e6bc8766586bb591d4ec43cfa07a` |
| 17 | `def` | [exprXSqPlusSin_core](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/exprxsqplussin-core--c09be6ed436318ef9d26baa8.md) | 139 | `declaration-track:c09be6ed436318ef9d26baa8c5bb789d7346f6e57e9a01c0fb95f996b8c241ca` |
| 18 | `def` | [exprXSqPlusSin_supp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/exprxsqplussin-supp--0b19bc647fd0d825994b0de3.md) | 145 | `declaration-track:0b19bc647fd0d825994b0de3e85869ced1e44ea31ac622c5e1587ef46c7e51ba` |
| 19 | `theorem` | [xsq_plus_sin_le_two_native](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/xsq-plus-sin-le-two-native--01e0aed0e65483782627c3c5.md) | 151 | `result-track:01e0aed0e65483782627c3c5180bd3e817f9d6096155a23d5968047ff37dc93e` |
| 20 | `theorem` | [neg_one_le_xsq_plus_sin_native](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/neg-one-le-xsq-plus-sin-native--b184d7d033a89e29b3e6a9fa.md) | 155 | `result-track:b184d7d033a89e29b3e6a9fa50c1a179f66f24736ce93f6f8beb4d4c0f3325cf` |
| 21 | `theorem` | [xsq_plus_sin_le_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/xsq-plus-sin-le-two--398e21b192c2a7081fcf2e6e.md) | 160 | `result-track:398e21b192c2a7081fcf2e6ebd7fac5bc6ce06ff408887002adcc5cd671ebd28` |
| 22 | `theorem` | [neg_one_le_xsq_plus_sin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/neg-one-le-xsq-plus-sin--158c4a6f72af9eaaa2e5be55.md) | 173 | `result-track:158c4a6f72af9eaaa2e5be552287365a27a4b6f92357219eaa5c166b940db88e` |
| 23 | `def` | [exprXSqMinus2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/exprxsqminus2--42700d6a38c62202e0a2b348.md) | 187 | `declaration-track:42700d6a38c62202e0a2b348d82e609c0597fd18806292dfa9ad11d41c915b88` |
| 24 | `def` | [exprXSqMinus2_core](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/exprxsqminus2-core--b7cf5d0934adcf3c47a7f1ca.md) | 191 | `declaration-track:b7cf5d0934adcf3c47a7f1ca5239c30fdb9cb223c83cb1adc1244fba1422c2f8` |
| 25 | `def` | [exprXSqMinus2_supp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/exprxsqminus2-supp--bf0a48112cbf2e3f88e5c1c1.md) | 197 | `declaration-track:bf0a48112cbf2e3f88e5c1c168a954070ca7bf8ca38537c17541478ad11a289b` |
| 26 | `theorem` | [xsq_minus_two_lt_zero_native](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/xsq-minus-two-lt-zero-native--96831f03a05455f46ffcd86e.md) | 204 | `result-track:96831f03a05455f46ffcd86e47436a776e52178f5583eb2569683400d9028e77` |
| 27 | `theorem` | [xsq_minus_two_lt_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/xsq-minus-two-lt-zero--d185f71b0f8c8beb052e9ae4.md) | 209 | `result-track:d185f71b0f8c8beb052e9ae4ca491d0423f570531e1412d1bd0a29cb941b7991` |
| 28 | `def` | [exprPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/exprpoly--507f639a40502094a1d1dd0c.md) | 222 | `declaration-track:507f639a40502094a1d1dd0c6ab19de4dee6b638e675324aacda35120dcb144a` |
| 29 | `def` | [exprPoly_core](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/exprpoly-core--3893484856502eb47a49b5d7.md) | 230 | `declaration-track:3893484856502eb47a49b5d7b0f93bade406e6407f5021582429dbd6a8f78801` |
| 30 | `def` | [exprPoly_supp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/exprpoly-supp--f35ec1a47e5078b88e4e998d.md) | 239 | `declaration-track:f35ec1a47e5078b88e4e998d1dd646b42832ee8eb066277b950f827d1b320ae9` |
| 31 | `theorem` | [poly_le_six_native](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/poly-le-six-native--92cbbbf79b38b7ba58c6f717.md) | 249 | `result-track:92cbbbf79b38b7ba58c6f717587d3cd8a54cb05ac2146fedaafc6dc8cdbbdd8e` |
| 32 | `theorem` | [one_le_poly_native](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/one-le-poly-native--f80338125e4026346a953859.md) | 254 | `result-track:f80338125e4026346a9538594db92f4948d6c9ea5d58a36735c0c389fa980af7` |
| 33 | `theorem` | [poly_le_six](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/poly-le-six--883c06e4bc52c3a4fd99f5db.md) | 259 | `result-track:883c06e4bc52c3a4fd99f5db36df62e529767c6046b9b8c5b3b4014f7d785b59` |
| 34 | `theorem` | [one_le_poly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/one-le-poly--352d6da7d6e6979a282cb0ca.md) | 274 | `result-track:352d6da7d6e6979a282cb0ca9355bcf8a043fde47babc5c678e0e1a4cca825a2` |
| 35 | `def` | [exprExp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/exprexp--f75a85c900527ecbc1480294.md) | 292 | `declaration-track:f75a85c900527ecbc1480294708e4b0d34d9bb263d1010565a6d046dbab6e8e6` |
| 36 | `def` | [exprExp_supp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/exprexp-supp--0c8ebeb52ddb8b2d097177a3.md) | 295 | `declaration-track:0c8ebeb52ddb8b2d097177a3f37ac7b7bdf033ad9774f7441bdbece2b9f49f6d` |
| 37 | `theorem` | [exp_le_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/exp-le-three--19ea27b4e4442f67f9f1597f.md) | 301 | `result-track:19ea27b4e4442f67f9f1597f82fa6430009b03f1524c3ca2e8b77cde36f32146` |
| 38 | `theorem` | [one_le_exp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/one-le-exp--4896867ec5420f61ce6d0bdc.md) | 314 | `result-track:4896867ec5420f61ce6d0bdc5c7ceda5d131d01a7577e88bdb5c229c01d9ea02` |
| 39 | `def` | [exprXPlusExp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/exprxplusexp--2fa59258be0d80cbc983941c.md) | 323 | `declaration-track:2fa59258be0d80cbc983941cca98ed6b7ae5bcef9ff34945882abcabeac4fc6d` |
| 40 | `def` | [exprXPlusExp_supp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/exprxplusexp-supp--57a8297968c466a552c9ee4e.md) | 326 | `declaration-track:57a8297968c466a552c9ee4e79a46ea709cdcb479bc62d5f7dcb947478cdc795` |
| 41 | `theorem` | [x_plus_exp_le_four](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/x-plus-exp-le-four--84af5e55699abccf54d14cd3.md) | 331 | `result-track:84af5e55699abccf54d14cd374577875e13447a74ffd16838caa4b690715245d` |
| 42 | `theorem` | [one_le_x_plus_exp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/declarations/one-le-x-plus-exp--1382c9db3f641f6b70c333ea.md) | 344 | `result-track:1382c9db3f641f6b70c333ea43f52ae936baff7247db70e7629ff01ea02b3290` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
