# Verification target: GRWTSK.Algebra.CancelDenoms.Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5654e0c69f7359b68727fa25b7b1c229f961ae90",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/index.md) · [Full source](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5654e0c69f7359b68727fa25b7b1c229f961ae90`.

Source path: `GRWTSK/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Util.SynthesizeUsing` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Tree` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Util.Qq` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/initialize--a65b01f16bd0356bcede9e83.md) | 33 | `declaration-track:a65b01f16bd0356bcede9e83532b5577319055a6780379f65077c12778e6f07f` |
| 2 | `theorem` | [mul_subst](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/mul-subst--25fbd9df7f344c4a0dc11b52.md) | 39 | `result-track:25fbd9df7f344c4a0dc11b52f6d7ed17387940a1536cece9a950ea86df5e6841` |
| 3 | `theorem` | [div_subst](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/div-subst--a409a02632ba479548455c84.md) | 45 | `result-track:a409a02632ba479548455c847e4b0f36fac1efa84c0fb7f417c11eb92357f539` |
| 4 | `theorem` | [cancel_factors_eq_div](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/cancel-factors-eq-div--9bb5dcac38d1281c1f5a95cf.md) | 50 | `result-track:9bb5dcac38d1281c1f5a95cf6a8171bde0cf01b26f84c4f771bf0b301e3af675` |
| 5 | `theorem` | [add_subst](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/add-subst--8de7a0d1e282dcc57b6367b2.md) | 55 | `result-track:8de7a0d1e282dcc57b6367b22be2218b4e1c8316e586c5fe918c96e4bda3c009` |
| 6 | `theorem` | [sub_subst](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/sub-subst--c755f55bc72ba71eff2514da.md) | 59 | `result-track:c755f55bc72ba71eff2514da45d8dd39f7e238fb6b5187bb70c80730d66709b5` |
| 7 | `theorem` | [neg_subst](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/neg-subst--77a68dbd06a6fbc556aee981.md) | 63 | `result-track:77a68dbd06a6fbc556aee981c31c52f8ccdc6cf49564bff8dc587ec487fb03c0` |
| 8 | `theorem` | [cancel_factors_lt](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/cancel-factors-lt--a7b2baf70ad0b6843f99e301.md) | 66 | `result-track:a7b2baf70ad0b6843f99e301b106b232040aff1948edfcebedd31fd943512aac` |
| 9 | `theorem` | [cancel_factors_le](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/cancel-factors-le--f3e3e90fa6cf6ba7d7a4bc85.md) | 74 | `result-track:f3e3e90fa6cf6ba7d7a4bc85a3ab3a0d0a358bd59114b0d2957b114ea1dc440b` |
| 10 | `theorem` | [cancel_factors_eq](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/cancel-factors-eq--18a4e1b4107ea84239330662.md) | 82 | `result-track:18a4e1b4107ea84239330662f846934ce3eeb63ebd29a6850c4058effb08d271` |
| 11 | `theorem` | [cancel_factors_ne](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/cancel-factors-ne--740d94df1764c3802d89257d.md) | 98 | `result-track:740d94df1764c3802d89257d89a6d4b0161bbd10536d6930382b867220aa3c73` |
| 12 | `def` | [findCancelFactor](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/findcancelfactor--ef593312e5588c1bfbfccaf7.md) | 111 | `declaration-track:ef593312e5588c1bfbfccaf741348a13ba20b782d97dfd7a181a91e4fd28ba34` |
| 13 | `def` | [synthesizeUsingNormNum](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/synthesizeusingnormnum--bcd61124333b792dc869093b.md) | 134 | `declaration-track:bcd61124333b792dc869093be4a0d8afa35c96b7f05f3c5c5c4e4385203a5172` |
| 14 | `def` | [mkProdPrf](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/mkprodprf--67333a3fd6439c8108958be9.md) | 145 | `declaration-track:67333a3fd6439c8108958be9e456ccb7b45df08ffc0f13744617ea2b9338ce8a` |
| 15 | `def` | [deriveThms](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/derivethms--024edbbe01e95e381917c242.md) | 187 | `declaration-track:024edbbe01e95e381917c2426174158f5dd96fd02b37784e3456d8ae5ed1b810` |
| 16 | `theorem` | [derive_trans](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/derive-trans--13b03d676eb9fec051604f89.md) | 191 | `result-track:13b03d676eb9fec051604f898a719fcbee270393d7060f926cda2ba3cbe94df6` |
| 17 | `def` | [derive](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/derive--ecd333d464479af826d170e5.md) | 197 | `declaration-track:ecd333d464479af826d170e5c2e8333f87bcdf09a056dbf89f1b4744b720f8cd` |
| 18 | `def` | [findCompLemma](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/findcomplemma--c1f96f3111a05a1b672b797a.md) | 223 | `declaration-track:c1f96f3111a05a1b672b797a1cdddf69a109ae9ca522e30402c41cb25a6c9208` |
| 19 | `def` | [cancelDenominatorsInType](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/canceldenominatorsintype--6c4a4874dd1744be578d461b.md) | 239 | `declaration-track:6c4a4874dd1744be578d461bca5511079488cab74a9a2499f6ac8df1410cde5f` |
| 20 | `syntax` | [(anonymous)](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/syntax--c54a774177bdd780876a2a7d.md) | 286 | `declaration-track:c54a774177bdd780876a2a7dcc93b54061d214df1d4fbf2f923ccd4b109dedc1` |
| 21 | `def` | [cancelDenominatorsAt](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/canceldenominatorsat--55d0f28a30baaec0b7c56496.md) | 290 | `declaration-track:55d0f28a30baaec0b7c56496f5030df66995c1be2f6b912ca98169a771d58280` |
| 22 | `def` | [cancelDenominatorsTarget](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/canceldenominatorstarget--bbcfc3f155ad35d50c86e609.md) | 297 | `declaration-track:bbcfc3f155ad35d50c86e609860d1ba6b8ce23e2a6ecd84ac81e214c545d19f6` |
| 23 | `def` | [cancelDenominators](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/canceldenominators--f0911cfa4caf3dcc13ea3d85.md) | 301 | `declaration-track:f0911cfa4caf3dcc13ea3d856b5751da2241f4385653700f2217c176d6cd87a4` |
| 24 | `elab` | [(anonymous)](../../../../mathematics/Algebra/CancelDenoms/Variant86c94baf159c96d036b33751d284eb4aa2e4ac8acd780896c5eafd7704c0dc8c.lean/declarations/elab--0b3162d760826e8987e59224.md) | 305 | `declaration-track:0b3162d760826e8987e59224f00abc2644d62667c579f1c918e57a27ade989ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
