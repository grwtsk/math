# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c76e121915ae063d61b478080bbef46cafc39c9c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c76e121915ae063d61b478080bbef46cafc39c9c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [repr_range](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/repr-range--8e8da3d5efe2ab4eaa433aa7.md) | 54 | `result-track:8e8da3d5efe2ab4eaa433aa7675c823d8ef20332eb931d6e5d38b342a18f6157` |
| 2 | `theorem` | [mem_span_repr_support](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/mem-span-repr-support--9f49d638c3a3fdaa8a5c10eb.md) | 57 | `result-track:9f49d638c3a3fdaa8a5c10eb83d216e240f5559dbbae0ab376d1d90871d2ebc0` |
| 3 | `theorem` | [repr_support_subset_of_mem_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/repr-support-subset-of-mem-span--13d691523e22f928f56e916f.md) | 61 | `result-track:13d691523e22f928f56e916f85f613ce7547dc45c4e47359ff66b795001c4d4e` |
| 4 | `theorem` | [mem_span_image](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/mem-span-image--25c1de7e75ecc25981957a03.md) | 66 | `result-track:25c1de7e75ecc25981957a030464ff96b46cb0d7cc70197acd65346625343dc3` |
| 5 | `theorem` | [self_mem_span_image](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/self-mem-span-image--cf2fc34684b2cb291d926a02.md) | 71 | `result-track:cf2fc34684b2cb291d926a0293c5ff0587f75be6108f36fd34a085ebcf7e1924` |
| 6 | `theorem` | [mem_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/mem-span--f7a400a3878aa0ba3ed30ce5.md) | 75 | `result-track:f7a400a3878aa0ba3ed30ce5ff6d3d7e05f23088d541b0b32b396e7e583f97bb` |
| 7 | `theorem` | [span_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/span-eq--045164994ac65a71be93a99f.md) | 79 | `result-track:045164994ac65a71be93a99facb9222b81f50175d74ceb47f49b87ba7addbf35` |
| 8 | `theorem` | [index_nonempty](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/index-nonempty--d92ec33e58b23bb6e7bc0d9b.md) | 82 | `result-track:d92ec33e58b23bb6e7bc0d9b65c241dac470c6e99cc68533c7e42711aa7fd730` |
| 9 | `theorem` | [linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/linearindependent--842874cbe55c075547646bbf.md) | 87 | `result-track:842874cbe55c075547646bbf87bdc21144548bdc1c5bc3636cd9b24119237783` |
| 10 | `theorem` | [ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/ne-zero--d913a40f282ee55eb463d777.md) | 91 | `result-track:d913a40f282ee55eb463d777994cbcbc66d4285a81dfe6711cceab75ca089e16` |
| 11 | `def` | [mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/mk--bc77f2106afbb93522488a63.md) | 103 | `declaration-track:bc77f2106afbb93522488a632ee7b1fd9074c136299be8d2963852c117bfb0bf` |
| 12 | `theorem` | [mk_repr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/mk-repr--cdc9ee59a868a8353df5a2a9.md) | 111 | `result-track:cdc9ee59a868a8353df5a2a9d27f1803aaf43101575b4fe811f701b70b53e6ed` |
| 13 | `theorem` | [mk_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/mk-apply--96c4fd35c471073767a7745e.md) | 114 | `result-track:96c4fd35c471073767a7745e374a438b4b3b6bec56a57a433a9db9058f00675c` |
| 14 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/coe-mk--55e86e12e47ceb3c31f54315.md) | 118 | `result-track:55e86e12e47ceb3c31f54315ac443f1fcfbd58fcd9d2005cfb6475eaf8592bc3` |
| 15 | `theorem` | [mk_coord_apply_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/mk-coord-apply-eq--3f18e1158d4674351478676f.md) | 131 | `result-track:3f18e1158d4674351478676f0f8ec338da0a251a4253eaec7612898cdfcb6bf4` |
| 16 | `theorem` | [mk_coord_apply_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/mk-coord-apply-ne--b94a96d6f7779bfe8d15449c.md) | 136 | `result-track:b94a96d6f7779bfe8d15449c6f8e582bf32b4aae543d1248061b8960056df8dc` |
| 17 | `theorem` | [mk_coord_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/mk-coord-apply--4f23b91b64b2c982854ddf02.md) | 142 | `result-track:4f23b91b64b2c982854ddf02e1e1e16fb0d321907f0dc0c3c07317f2f345af98` |
| 18 | `def` | [span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/span--decc6d6368e90365aae0ed43.md) | 155 | `declaration-track:decc6d6368e90365aae0ed430874cff1fcb376dee6809efd01d3fd6c8850dbde` |
| 19 | `theorem` | [span_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/span-apply--d92751ba4906890f6b8b4739.md) | 175 | `result-track:d92751ba4906890f6b8b47394595767b203c13d52e5e4026dde939abe606bbaa` |
| 20 | `theorem` | [maximal](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/maximal--624aed818f85515c95e5e23e.md) | 182 | `result-track:624aed818f85515c95e5e23ef11211b74c8a5437baf4bdb05c7bbd71437a3db3` |
| 21 | `instance` | [uniqueBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/uniquebasis--4ad2f106a253b396f3d10efb.md) | 206 | `declaration-track:4ad2f106a253b396f3d10efb806eeb0ae23c628c6c1a09084745499e92ad226f` |
| 22 | `def` | [singleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/singleton--833dc1a54ef16e8d16630939.md) | 214 | `declaration-track:833dc1a54ef16e8d16630939596e2c8ef7b6fda0328b6a58dcd1703522aeb54a` |
| 23 | `theorem` | [singleton_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/singleton-apply--8e13deb70edd7995345e7580.md) | 224 | `result-track:8e13deb70edd7995345e75803b70ee13aa4f2d85b59a3aa0ec95863414e26314` |
| 24 | `theorem` | [singleton_repr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/singleton-repr--41fc6209b7e0e07dc721d023.md) | 228 | `result-track:41fc6209b7e0e07dc721d0230a1c5bb1dd59dbc9788aca0ab756ab33256f08f7` |
| 25 | `def` | [empty](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/empty--19bd05e68294a8ed6639a166.md) | 238 | `declaration-track:19bd05e68294a8ed6639a166ed712082e9f7f939ac6f0a6604c7a5e3172f9406` |
| 26 | `instance` | [emptyUnique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/emptyunique--bb5f506dea35c306cf63d85f.md) | 241 | `declaration-track:bb5f506dea35c306cf63d85f5ec22ea10b2fbc75091b8d6cdf541bc094c602a5` |
| 27 | `theorem` | [noZeroSMulDivisors](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/nozerosmuldivisors--87c68f9662947207d971cdcd.md) | 250 | `result-track:87c68f9662947207d971cdcd9b5abf2cf126517edaa50663b31ec4ab820c93d1` |
| 28 | `theorem` | [smul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/smul-eq-zero--0e173f46bb6c2871f2bcce03.md) | 260 | `result-track:0e173f46bb6c2871f2bcce035e7c3c1b6ff53e51a634c374c95887a3873d2605` |
| 29 | `theorem` | [basis_singleton_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantbb4b7e57e9a4cc3f8a24672f541c6f6251572e222f3fe4a9e18170328a03b8a9.lean/declarations/basis-singleton-iff--9f768f420609a1a3ec541da5.md) | 268 | `result-track:9f768f420609a1a3ec541da5b263c155537fbf55bda006ca745d08946e8ad455` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
