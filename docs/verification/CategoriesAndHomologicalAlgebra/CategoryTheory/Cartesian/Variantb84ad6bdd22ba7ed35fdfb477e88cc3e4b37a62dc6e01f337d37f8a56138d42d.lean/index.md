# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cartesian.Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8c52d7393adc05e120c80bdd8622a3b57297a71",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8c52d7393adc05e120c80bdd8622a3b57297a71`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EpiMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.OfHasFiniteProducts` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Mates` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Exponentiable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/exponentiable--94d385849c3d83ebc80744b9.md) | 49 | `declaration-track:94d385849c3d83ebc80744b9415e0c8dd8799ff80eeec3588f39b4d7035c2020` |
| 2 | `def` | [binaryProductExponentiable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/binaryproductexponentiable--6e4e89f5500ac3280cf70e54.md) | 57 | `declaration-track:6e4e89f5500ac3280cf70e54b80b8b28656c5b0a507b6b461fc8647ab20d118d` |
| 3 | `def` | [terminalExponentiable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/terminalexponentiable--4ab868875814c558860457d0.md) | 66 | `declaration-track:4ab868875814c558860457d0fd66fa46da3dfa34e78cfb845b565694b48fd48b` |
| 4 | `abbrev` | [CartesianClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/cartesianclosed--90383a6b82c82d1314502772.md) | 74 | `declaration-track:90383a6b82c82d13145027720435d337053f8025f44a3c3981198cae0c143e2b` |
| 5 | `def` | [CartesianClosed.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/cartesianclosed-mk--7ff948fb10d6ee3d11b81e78.md) | 80 | `declaration-track:7ff948fb10d6ee3d11b81e78d86f418573d706f1161dc060ea0f888d680c91a5` |
| 6 | `abbrev` | [exp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/exp--cfc794adc72db8d8f46ec78f.md) | 91 | `declaration-track:cfc794adc72db8d8f46ec78f191e9753b227362485da9f19278db3ab64edfdc2` |
| 7 | `abbrev` | [adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/adjunction--01cfb4d650d9e1cc4614c48d.md) | 98 | `declaration-track:01cfb4d650d9e1cc4614c48d45485157a308db0f58a9787e2fad982d64204d05` |
| 8 | `abbrev` | [ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/ev--7161a3c1f489c1d792cde674.md) | 103 | `declaration-track:7161a3c1f489c1d792cde67422eeca63c815493c9d8a3c62e172be4bf38033c5` |
| 9 | `abbrev` | [coev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/coev--40c2cb81edc6809fa29b8b9d.md) | 108 | `declaration-track:40c2cb81edc6809fa29b8b9d925c2b6595a0cc415b9a9a03597651d9b442d750` |
| 10 | `def` | [delabPrefunctorObjExp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/delabprefunctorobjexp--47ccf0c04e424fa94cd73716.md) | 118 | `declaration-track:47ccf0c04e424fa94cd73716b3f3a6ac56be67e7ba27c6de3b11f2d39ed00156` |
| 11 | `theorem` | [ev_coev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/ev-coev--724a25d463a4914d5bad8976.md) | 136 | `result-track:724a25d463a4914d5bad8976da0ee7645384ce296662b0cb48d986fe51d5d9dd` |
| 12 | `theorem` | [coev_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/coev-ev--2647c194cd08d9fdd0c14c6e.md) | 141 | `result-track:2647c194cd08d9fdd0c14c6ea09a03e60362b673730d20dc870702113047b2d9` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/instance--cf5dee9f58018b8bf5711121.md) | 147 | `declaration-track:cf5dee9f58018b8bf57111215fa6c8026765c07a77e33960bfc2c9ba604a6731` |
| 14 | `def` | [curry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/curry--2ccbb8340e40b0fe4b27c535.md) | 156 | `declaration-track:2ccbb8340e40b0fe4b27c535f883a5f91f729419b10387fa8dad4ddbaffd1f70` |
| 15 | `def` | [uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/uncurry--bc027157d4fdcec6b228bc28.md) | 161 | `declaration-track:bc027157d4fdcec6b228bc28a2f9b9e330d31bb651b786aa8dc00e8ada44d826` |
| 16 | `theorem` | [homEquiv_apply_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/homequiv-apply-eq--1f403c98808d38129d9ab005.md) | 166 | `result-track:1f403c98808d38129d9ab00567d387f278a29610bbf6800d67430e05a44ef635` |
| 17 | `theorem` | [homEquiv_symm_apply_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/homequiv-symm-apply-eq--85f33796a278c758a18c91bd.md) | 171 | `result-track:85f33796a278c758a18c91bdd89bfaa021c6465fbeafec3e23d352e4219e313e` |
| 18 | `theorem` | [curry_natural_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/curry-natural-left--5bb317b781701b9d59076975.md) | 177 | `result-track:5bb317b781701b9d590769752f159d7c44eb62ae74940bde27b401680f2dba6e` |
| 19 | `theorem` | [curry_natural_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/curry-natural-right--905cd11f607d1c7a9b27c177.md) | 183 | `result-track:905cd11f607d1c7a9b27c177f57605b4a08a1b15eafeb43e5bf54aa75fc2f39c` |
| 20 | `theorem` | [uncurry_natural_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/uncurry-natural-right--8faf346e0f07b5a9aa153ca0.md) | 189 | `result-track:8faf346e0f07b5a9aa153ca0f888e935ee0803b01f3b081343d371072820ad04` |
| 21 | `theorem` | [uncurry_natural_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/uncurry-natural-left--08be89b130aaf82479a10269.md) | 195 | `result-track:08be89b130aaf82479a10269ae99f526b07f5229d0a9e0dcd479bc3adb323b8b` |
| 22 | `theorem` | [uncurry_curry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/uncurry-curry--8f0b436bc20d5c17f23f3c6a.md) | 201 | `result-track:8f0b436bc20d5c17f23f3c6a32fa4eec056dbf6aa7dccd779568e01f738a5b22` |
| 23 | `theorem` | [curry_uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/curry-uncurry--7f4d57d0a7e891c47c78d2e5.md) | 206 | `result-track:7f4d57d0a7e891c47c78d2e59287a733edc860fdc3d1b5a703b59f03b758e7ec` |
| 24 | `theorem` | [curry_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/curry-eq-iff--aaef4b978d1dc27aa4b74cec.md) | 211 | `result-track:aaef4b978d1dc27aa4b74cece0311f2ecc4cb570666f7437993218a2356548a6` |
| 25 | `theorem` | [eq_curry_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/eq-curry-iff--06f25d1c37d7c67afc432af4.md) | 216 | `result-track:06f25d1c37d7c67afc432af48ee6458d19e7f5d988a312c9e0a896207244d121` |
| 26 | `theorem` | [uncurry_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/uncurry-eq--c93283490737927e6247d1f4.md) | 221 | `result-track:c93283490737927e6247d1f458c092c7943de30d8249d0c801a97b490fca6206` |
| 27 | `theorem` | [curry_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/curry-eq--c73d4f5b905339f07bb3ba31.md) | 225 | `result-track:c73d4f5b905339f07bb3ba317717c6b6b9aa83abf8e1d24e54b4f53bc8023532` |
| 28 | `theorem` | [uncurry_id_eq_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/uncurry-id-eq-ev--a115d2d5eea71384030f29ff.md) | 229 | `result-track:a115d2d5eea71384030f29ff5ebc0485589a1e8c9d392acb68a7a71baf3ae2dc` |
| 29 | `theorem` | [curry_id_eq_coev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/curry-id-eq-coev--a90ef7bd10fd57d7d3b34bd4.md) | 233 | `result-track:a90ef7bd10fd57d7d3b34bd47e8154593b2b161d247ad2eed3a87deb1620d62d` |
| 30 | `theorem` | [curry_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/curry-injective--8a9072ebe4cba7353b75cfb5.md) | 237 | `result-track:8a9072ebe4cba7353b75cfb59c2f6112e79675c4d1edb188c106cc43067583f8` |
| 31 | `theorem` | [uncurry_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/uncurry-injective--49f73014f2808c24e16fe9a9.md) | 241 | `result-track:49f73014f2808c24e16fe9a9c66a15f60e33be2d61854892cdcabb267ff2d00a` |
| 32 | `def` | [expTerminalIsoSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/expterminalisoself--6323f39ea7448300fb4736d7.md) | 253 | `declaration-track:6323f39ea7448300fb4736d72028ee892a4f424b47f9ba9318db6815c554274c` |
| 33 | `def` | [internalizeHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/internalizehom--3deee4b34d3e823a4f646eca.md) | 267 | `declaration-track:3deee4b34d3e823a4f646ecae475f0c91655d9ba29590fb8f87e71faaf29ad2e` |
| 34 | `def` | [pre](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/pre--857279c94606b0e6f14f8c0f.md) | 276 | `declaration-track:857279c94606b0e6f14f8c0fbc35b7d5983e5c98a6a8a38b2757c6a288e7354d` |
| 35 | `theorem` | [prod_map_pre_app_comp_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/prod-map-pre-app-comp-ev--d928ec29be67922124394e2d.md) | 280 | `result-track:d928ec29be67922124394e2d68d05f25badf5866d5db6e77699eb26f5cebc511` |
| 36 | `theorem` | [uncurry_pre](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/uncurry-pre--61aedada46a81d100e77b281.md) | 286 | `result-track:61aedada46a81d100e77b28155cac4709a6e6741bab6721fed787f83e99deefb` |
| 37 | `theorem` | [coev_app_comp_pre_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/coev-app-comp-pre-app--4ffab9cfc57a10361ca0a9eb.md) | 291 | `result-track:4ffab9cfc57a10361ca0a9eb1d39f9e9c794caadaab2e7b3c57ff979d7c0a482` |
| 38 | `theorem` | [pre_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/pre-id--064f3b188ac210921f829a4c.md) | 298 | `result-track:064f3b188ac210921f829a4ca2fb5b4792c8c14cbafc15ae6ee5c69a057ed933` |
| 39 | `theorem` | [pre_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/pre-map--ccf271f088d01647d5e71213.md) | 302 | `result-track:ccf271f088d01647d5e71213a24701852cdf119d9403f378aa7a2493b00ce8b6` |
| 40 | `def` | [internalHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/internalhom--12fd0ffcc7fc4524f834f893.md) | 310 | `declaration-track:12fd0ffcc7fc4524f834f89361bb292b7bd87ad056efb95bcbf9869b746a9c35` |
| 41 | `def` | [zeroMul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/zeromul--53c2e9a441a7230e3d7119e7.md) | 317 | `declaration-track:53c2e9a441a7230e3d7119e77d1f657e93954f857d2d196c0e650888ac42628e` |
| 42 | `def` | [mulZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/mulzero--fbf7fcfd4ef9e2491fe715b6.md) | 330 | `declaration-track:fbf7fcfd4ef9e2491fe715b6e16cc3f6bc06d756b6d4f5eb1f95bab5d067b1d3` |
| 43 | `def` | [powZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/powzero--489c797441f075503897b87e.md) | 335 | `declaration-track:489c797441f075503897b87e557e2aa91ff49d64c135da1c146c62aa7cda1a03` |
| 44 | `def` | [prodCoprodDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/prodcoproddistrib--66974caa383a905d55874427.md) | 347 | `declaration-track:66974caa383a905d5587442701a1bffbdfcc94fd2dfeea537df759c2b9af71e9` |
| 45 | `theorem` | [strict_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/strict-initial--0d819747c216722bc8403220.md) | 371 | `result-track:0d819747c216722bc84032207b99dba04278a1cd94cb4c5174cf80e34c5a70cf` |
| 46 | `instance` | [to_initial_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/to-initial-isiso--2fa90eb3685751946d66ae20.md) | 378 | `declaration-track:2fa90eb3685751946d66ae20be34e7636f8131d29dfe54e03049acb28a1b1823` |
| 47 | `theorem` | [initial_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/initial-mono--7ea3a9e2d9415590af43b6c7.md) | 383 | `result-track:7ea3a9e2d9415590af43b6c7e9d481480f714ded7ef41fb1acd22af2cbb2b095` |
| 48 | `instance` | [Initial.mono_to](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/initial-mono-to--05903c61e3f9c32dab6a2a82.md) | 390 | `declaration-track:05903c61e3f9c32dab6a2a82a6fb9151ff175be9426fe670bb7251cc21102f2b` |
| 49 | `def` | [cartesianClosedOfEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb84ad6bdd22ba7ed35fdfb477e88cc3e4b37a62dc6e01f337d37f8a56138d42d.lean/declarations/cartesianclosedofequiv--53ca02c23fb11146037ff0dd.md) | 405 | `declaration-track:53ca02c23fb11146037ff0dd9a15b41c4065f8c02848ba25414884a339524510` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
