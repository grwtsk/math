# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Monoidal.Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d251eccdbcc8f7dc81a7d81df73fa03771e310c9",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d251eccdbcc8f7dc81a7d81df73fa03771e310c9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Mates` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.InvIsos` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Closed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/closed--20c493f650a263c56d2e95f2.md) | 43 | `declaration-track:20c493f650a263c56d2e95f2e8df3362297eba729032b91f34683852ba1d3bd5` |
| 2 | `class` | [MonoidalClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/monoidalclosed--958cbacb80d8efa1a9a217de.md) | 49 | `declaration-track:958cbacb80d8efa1a9a217deb1285d1c4f45fad1caeddc1f20293280e57a2734` |
| 3 | `def` | [tensorClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/tensorclosed--56f8e7dfceb5a6c342745e60.md) | 61 | `declaration-track:56f8e7dfceb5a6c342745e606b1ec740bc8928679f41c7edb33432f3f4387aff` |
| 4 | `def` | [unitClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/unitclosed--473178ffee1c56453c3c35de.md) | 72 | `declaration-track:473178ffee1c56453c3c35de5452806f11054414bd1ef08e9d8f7ee57acbf709` |
| 5 | `def` | [ihom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/ihom--6f6c518b0a6c5aea15243c3c.md) | 93 | `declaration-track:6f6c518b0a6c5aea15243c3ce3a8bed68f4c95c74a648a21513a8f665e049c05` |
| 6 | `def` | [adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/adjunction--bcead9f1d81fc565f2b82837.md) | 100 | `declaration-track:bcead9f1d81fc565f2b82837b1665e299b20e4dccc24c34af6dff7d7ce43be86` |
| 7 | `def` | [ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/ev--b38db748b928097c089ff69e.md) | 105 | `declaration-track:b38db748b928097c089ff69ee0c7aa48273fa6f818360aba310ec55455e00f80` |
| 8 | `def` | [coev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/coev--6abbb68b1e87237844672781.md) | 110 | `declaration-track:6abbb68b1e872378446727812a1a6cc6e10dbb09085c3f04b54c1e239ed48b6f` |
| 9 | `theorem` | [ihom_adjunction_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/ihom-adjunction-counit--38d9c7fc332f561f6969eceb.md) | 115 | `result-track:38d9c7fc332f561f6969eceb4310debef0e30d118f814643c36cd2a5c7a7b9fc` |
| 10 | `theorem` | [ihom_adjunction_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/ihom-adjunction-unit--d74871f15584eab16c8e93cf.md) | 120 | `result-track:d74871f15584eab16c8e93cf5cad9433e724cba4eb5a54321382d7492610ab19` |
| 11 | `theorem` | [ev_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/ev-naturality--32b03cb920fccaa7eef85675.md) | 125 | `result-track:32b03cb920fccaa7eef85675cf72bf4886b9708e8b72919ec5d243f5c732008d` |
| 12 | `theorem` | [coev_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/coev-naturality--75392e0d2204dfd203b690d2.md) | 131 | `result-track:75392e0d2204dfd203b690d2a5dc84f1b48eca52aea7d2b934fb298984c84a5d` |
| 13 | `theorem` | [ev_coev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/ev-coev--9ebe0fce66f7188f47164df5.md) | 141 | `result-track:9ebe0fce66f7188f47164df5186123fa5cb052644cb4dddf1c3fecd5c10d29d8` |
| 14 | `theorem` | [coev_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/coev-ev--8cdaf7afc172be82dfdf4529.md) | 146 | `result-track:8cdaf7afc172be82dfdf4529ee13e04be3dfbb30ecaaf83a7895cf4895e372d3` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/instance--c8bfe70ad670dce5df4e8c9e.md) | 154 | `declaration-track:c8bfe70ad670dce5df4e8c9e9d1af07b40e205433b4f38319c66aa020da6d226` |
| 16 | `def` | [curry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/curry--c62d1be47e164cca45d3f9c6.md) | 163 | `declaration-track:c62d1be47e164cca45d3f9c6ab27571c53fb430ed07638b816fd5c0696ac49f1` |
| 17 | `def` | [uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/uncurry--d29bc30a468266c20e9fba56.md) | 168 | `declaration-track:d29bc30a468266c20e9fba5632b7baedd8a72647e3048cb8fc0978703362ddba` |
| 18 | `theorem` | [homEquiv_apply_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/homequiv-apply-eq--e6d4feccd44d16b1ed0bc507.md) | 173 | `result-track:e6d4feccd44d16b1ed0bc5072b41e30b8144575f876b03ab9e52d6a7395f7681` |
| 19 | `theorem` | [homEquiv_symm_apply_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/homequiv-symm-apply-eq--f0bc315e446f28dedc4caf45.md) | 178 | `result-track:f0bc315e446f28dedc4caf456dd90c233b8b02d8dd25d98e857ce707476ca9f5` |
| 20 | `theorem` | [curry_natural_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/curry-natural-left--88d67fa20478c3460840341b.md) | 184 | `result-track:88d67fa20478c3460840341b90abc6eea4490f8e58e3f6c16718bc71e58de3fb` |
| 21 | `theorem` | [curry_natural_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/curry-natural-right--ddd186c60de43fade43b5a68.md) | 189 | `result-track:ddd186c60de43fade43b5a68d838393577de74d5ca1fda19b213b248dc1d99ae` |
| 22 | `theorem` | [uncurry_natural_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/uncurry-natural-right--3369d628973c2f1aab0e7d2d.md) | 195 | `result-track:3369d628973c2f1aab0e7d2d3cc1d4f48db62d552d5f52ffd734aa389a27bd44` |
| 23 | `theorem` | [uncurry_natural_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/uncurry-natural-left--7cea0a89d59e3f70edcb8f84.md) | 201 | `result-track:7cea0a89d59e3f70edcb8f845b562b8b4cdd963d041650fb2c039e7256e455db` |
| 24 | `theorem` | [uncurry_curry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/uncurry-curry--839d5847d69c954b00871542.md) | 207 | `result-track:839d5847d69c954b00871542742dadacd753ba6f0352b6b3adfa954d5d0da4a4` |
| 25 | `theorem` | [curry_uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/curry-uncurry--a2fa45e677c8d143d6a257f8.md) | 212 | `result-track:a2fa45e677c8d143d6a257f84d8cf3d72b6cd8f6995136daf9f9ccf223a2cc0a` |
| 26 | `theorem` | [curry_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/curry-eq-iff--019f84f6fb52e8697255203d.md) | 216 | `result-track:019f84f6fb52e8697255203d959e74774dbd99b2767f462541ed61eb3a235a08` |
| 27 | `theorem` | [eq_curry_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/eq-curry-iff--d809a15c13cc9fe659e39e0d.md) | 220 | `result-track:d809a15c13cc9fe659e39e0dcaf2b11d02e7096a2f73499b250f0f233543824c` |
| 28 | `theorem` | [uncurry_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/uncurry-eq--58c667b16c2673bf9cd2a508.md) | 225 | `result-track:58c667b16c2673bf9cd2a5087ab879655f0378f10eea82d2e883c859b10e0346` |
| 29 | `theorem` | [curry_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/curry-eq--c6798d5003b25770ef6b0317.md) | 229 | `result-track:c6798d5003b25770ef6b03179ee4f6d8b6864f8d97ea3fa749cee0ee6579fbad` |
| 30 | `theorem` | [curry_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/curry-injective--dedac7d5a6a12c921f608460.md) | 233 | `result-track:dedac7d5a6a12c921f6084605f886d3a2d1967979da0c5af274dbd99792a64be` |
| 31 | `theorem` | [uncurry_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/uncurry-injective--11ff221c61164f116f7e6baf.md) | 237 | `result-track:11ff221c61164f116f7e6baf44b4ea19740bc5f1326c962a88852525c14b5d43` |
| 32 | `theorem` | [uncurry_id_eq_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/uncurry-id-eq-ev--ca034f765a5098cc0592c2dc.md) | 243 | `result-track:ca034f765a5098cc0592c2dcc55d54a4d1a11766af835c7c6547bf4f6284a947` |
| 33 | `theorem` | [curry_id_eq_coev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/curry-id-eq-coev--5c273d011c9f2bf0100b81c2.md) | 247 | `result-track:5c273d011c9f2bf0100b81c24a462e1b27ffa24c061462239b7f9589f014d70d` |
| 34 | `def` | [pre](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/pre--8885f5fbdc08b2cc0f2a4e1a.md) | 257 | `declaration-track:8885f5fbdc08b2cc0f2a4e1aa8ec28e1887fc6dcef0f5e70d7bb4d01215d71c5` |
| 35 | `theorem` | [id_tensor_pre_app_comp_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/id-tensor-pre-app-comp-ev--a98d9ce4d192ad469da7f9a8.md) | 262 | `result-track:a98d9ce4d192ad469da7f9a8f6821466422bfdaf343b9ff968aff1f27da3fc69` |
| 36 | `theorem` | [uncurry_pre](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/uncurry-pre--868a39d273f0082a94f5cd7d.md) | 268 | `result-track:868a39d273f0082a94f5cd7d4822f895ebbe3a5f55a5281dcc442e8f0b737c0e` |
| 37 | `theorem` | [coev_app_comp_pre_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/coev-app-comp-pre-app--310b7de00f5821b6e2a6d061.md) | 274 | `result-track:310b7de00f5821b6e2a6d061d8feaf2c74c595087d79f4fb7e441ad9ccf47429` |
| 38 | `theorem` | [pre_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/pre-id--296294ee87e899f27d312dc4.md) | 280 | `result-track:296294ee87e899f27d312dc44d88b341a140f8fee9f5c7f8b88fc5bae6078035` |
| 39 | `theorem` | [pre_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/pre-map--a338d907b71f22b8f8434bf0.md) | 287 | `result-track:a338d907b71f22b8f8434bf005ddeabc574ca6160853ee2275648a22b3fa777c` |
| 40 | `theorem` | [pre_comm_ihom_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/pre-comm-ihom-map--c3931b3cbe08767fa18fd408.md) | 292 | `result-track:c3931b3cbe08767fa18fd40844a7dddbad63a30b7678c58e110dd278d2cbe4c8` |
| 41 | `def` | [internalHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/internalhom--411426cb274cacd7215ef771.md) | 300 | `declaration-track:411426cb274cacd7215ef77129bf7e26c51b4d3af1c0794e1e0d4bc4e4a45ecf` |
| 42 | `def` | [ofEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/ofequiv--e16f2ca447ea7999c43aeaf7.md) | 311 | `declaration-track:e16f2ca447ea7999c43aeaf746213baff56ba53084086ba97925376df71d8767` |
| 43 | `theorem` | [ofEquiv_curry_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/ofequiv-curry-def--a36a3c36298e46f566d4d30f.md) | 326 | `result-track:a36a3c36298e46f566d4d30f1410ceeb4d3006191467e5daac014493d8ff1f68` |
| 44 | `theorem` | [ofEquiv_uncurry_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant0a9358dc29df80de18b1093124adfaa93e36fe205324c2dfa111cf70a0f3a5d1.lean/declarations/ofequiv-uncurry-def--7af33e3ef7811c2a004bfb76.md) | 341 | `result-track:7af33e3ef7811c2a004bfb760c6e2e4ba70950a3ad1647d39c59c619c2379c8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
