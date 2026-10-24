# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f8abc5c8ad7e3a26fd394d750df66c48b4079e4",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f8abc5c8ad7e3a26fd394d750df66c48b4079e4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean.json)

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
| 1 | `structure` | [IsFredholm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm--53bc428a3cbef90496fcc3fd.md) | 123 | `declaration-track:53bc428a3cbef90496fcc3fdf693268be6abfb1ecfa8531c32bf64d9839e1e7e` |
| 2 | `lemma` | [IsFredholm.closedComplemented_range](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-closedcomplemented-range--937d01f602be313f0d04ba11.md) | 132 | `result-track:937d01f602be313f0d04ba116501f321ceedee3113c8895eb2df76787804848f` |
| 3 | `structure` | [_root_.FredholmDecomposition](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/root-fredholmdecomposition--0e7606dbbcad18861116aa8b.md) | 147 | `declaration-track:0e7606dbbcad18861116aa8b35ca8fd8411780258026ad26ed310d3aca18e3c9` |
| 4 | `abbrev` | [_root_.FredholmDecomposition.proj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/root-fredholmdecomposition-proj--878022dcf4e38732ca851420.md) | 158 | `declaration-track:878022dcf4e38732ca851420e8c1f88bc4e34fcb99c40872c4d1c7e254170b75` |
| 5 | `lemma` | [_root_.FredholmDecomposition.cofg_X₁](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/root-fredholmdecomposition-cofg-x--892d769afd82ddb140cad8a8.md) | 161 | `result-track:892d769afd82ddb140cad8a87497b013d2ef5a2355969840f7ea9a68036df41b` |
| 6 | `structure` | [FredholmPackage](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/fredholmpackage--c73d81591925bbb5c0c71068.md) | 178 | `declaration-track:c73d81591925bbb5c0c710684a075eca90c24fbf628db4fe3c78cd33861479b6` |
| 7 | `lemma` | [FredholmPackage.ker_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/fredholmpackage-ker-eq--c10044bb970ad50025b0d94d.md) | 187 | `result-track:c10044bb970ad50025b0d94db7b3027687e65f9da3a5973c37043e157284a8da` |
| 8 | `lemma` | [FredholmPackage.range_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/fredholmpackage-range-eq--ea0919b20e9649139c533af3.md) | 190 | `result-track:ea0919b20e9649139c533af3e0f42a60d37001e83e8d3ba6a4b197cbc57398f8` |
| 9 | `lemma` | [FredholmPackage.mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/fredholmpackage-mapsto--dbed8ce65132dc905d1038aa.md) | 194 | `result-track:dbed8ce65132dc905d1038aa0e3a55606309480a53f1cc7e5f465b2b783f71d8` |
| 10 | `lemma` | [FredholmPackage.equiv_eq_restrict](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/fredholmpackage-equiv-eq-restrict--9fe43798dea863bd53acb6ee.md) | 198 | `result-track:9fe43798dea863bd53acb6ee8e650c13ca2a16633173de14af4f98ce5caa5a48` |
| 11 | `lemma` | [FredholmPackage.isInvertible_restrict](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/fredholmpackage-isinvertible-restrict--2927d0c2fc56c2c6ac63888a.md) | 203 | `result-track:2927d0c2fc56c2c6ac63888aa89af2e4dca3d0c3714cdc168f676ca41f0b2892` |
| 12 | `def` | [FredholmPackage.quasiInverse](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/fredholmpackage-quasiinverse--5132222bbd061f87718cb684.md) | 208 | `declaration-track:5132222bbd061f87718cb684cbea1f38f21d7bcf244d6466d7a7fd64e3e2655d` |
| 13 | `lemma` | [FredholmPackage.isQuasiInverse](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/fredholmpackage-isquasiinverse--391510d9f6d8be1875b87dfa.md) | 213 | `result-track:391510d9f6d8be1875b87dfa7b56e8f713e4dae4cf7212b590b7a40c6662fac8` |
| 14 | `theorem` | [exists_restrict_isInvertible_of_isQuasiInverse](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/exists-restrict-isinvertible-of-isquasiinverse--77087554863f362709e6a818.md) | 234 | `result-track:77087554863f362709e6a818bd363a9ca0da25eec63e2e07089dabb7bc1d84a9` |
| 15 | `theorem` | [IsFredholm.of_isInvertible_restrict](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-of-isinvertible-restrict--8624981dec4bee6a6d6ba4d8.md) | 263 | `result-track:8624981dec4bee6a6d6ba4d84767eb89ef8c85ba8ab7fc9724019bd4c478021a` |
| 16 | `def` | [IsFredholm.fredholmPackage](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-fredholmpackage--eb070697b39f9e4f6e16454c.md) | 292 | `declaration-track:eb070697b39f9e4f6e16454c83e38681e8baac9481bb52ffdb2ceb2a149140bb` |
| 17 | `theorem` | [IsFredholm.nonempty_fredholmPackage](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-nonempty-fredholmpackage--acb6f58688e091ee6bb5eccd.md) | 322 | `result-track:acb6f58688e091ee6bb5eccdb20652ae105366b485bcffa91737b9cc8160ff4b` |
| 18 | `theorem` | [isFredholm_tfae](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-tfae--207a689995d74613c4a97a39.md) | 343 | `result-track:207a689995d74613c4a97a39f393587a38a516851b97e16ee6e4846851a1f84f` |
| 19 | `theorem` | [FredholmPackage.isFredholm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/fredholmpackage-isfredholm--89a459e21469ae58191ff4d6.md) | 364 | `result-track:89a459e21469ae58191ff4d68345bb827e93ff72d9f41ef50034542dbd6cff96` |
| 20 | `theorem` | [isFredholm_iff_exists_isQuasiInverse](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-iff-exists-isquasiinverse--14396fefc21d30991e7fab82.md) | 368 | `result-track:14396fefc21d30991e7fab8211341de167dd1651893c6a8bcd2e482dded99e67` |
| 21 | `theorem` | [IsFredholm.of_isQuasiInverse](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-of-isquasiinverse--d8844ee6d2173abe2310908a.md) | 374 | `result-track:d8844ee6d2173abe2310908a134661cedc2a4e7e4bc07de99157bac171c1098b` |
| 22 | `theorem` | [_root_.Topology.IsClosedEmbedding.isFredholm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/root-topology-isclosedembedding-isfredholm--5ec4b53457d1cb880a11b3eb.md) | 386 | `result-track:5ec4b53457d1cb880a11b3ebf4dd3b6c41ddddf3162ac699c3b3ce1bbf0881c8` |
| 23 | `theorem` | [_root_.Function.Injective.isFredholm_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/root-function-injective-isfredholm-iff--a27ff14e776dc39a1bb73d16.md) | 399 | `result-track:a27ff14e776dc39a1bb73d16f54068f3662342bcf6a2f3678afd5af0c4b86408` |
| 24 | `theorem` | [_root_.Submodule.isFredholm_subtypeL_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/root-submodule-isfredholm-subtypel-iff--db21256bafcbd30e23d72d66.md) | 406 | `result-track:db21256bafcbd30e23d72d66023efc1b63e23723a1537ad1b49c5988c4d338ba` |
| 25 | `theorem` | [_root_.Submodule.isFredholm_subtypeL](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/root-submodule-isfredholm-subtypel--d5be540d6b62c4de4e25bb17.md) | 411 | `result-track:d5be540d6b62c4de4e25bb17d891e4527e1b6e0dce29b3684d1c24d7ea7158a8` |
| 26 | `theorem` | [_root_.ContinuousLinearEquiv.isFredholm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/root-continuouslinearequiv-isfredholm--bef072ebba4329a30bd516b7.md) | 416 | `result-track:bef072ebba4329a30bd516b75c10fbcb06da1056ec5a5bf17da2eff4fb95987f` |
| 27 | `theorem` | [IsFredholm.id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-id--a97b3fcc488c88cc43e171ce.md) | 420 | `result-track:a97b3fcc488c88cc43e171cee34c448e6ff3432ebd994a2704627a78019d041e` |
| 28 | `theorem` | [IsInvertible.isFredholm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isinvertible-isfredholm--d9b2dd2f24af7cb97ec4342c.md) | 423 | `result-track:d9b2dd2f24af7cb97ec4342ca42db1889f2b0b82edacf7d3b69e0c670e99b102` |
| 29 | `theorem` | [_root_.Function.Bijective.isFredholm_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/root-function-bijective-isfredholm-iff--6d9471301fc3750a73965d68.md) | 428 | `result-track:6d9471301fc3750a73965d6840bfa37e2245da4b1dbc7ff3380444479b547c48` |
| 30 | `theorem` | [isInvertible_iff_isFredholm_and_bijective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isinvertible-iff-isfredholm-and-bijective--8b145d0a5e980b1f97bace13.md) | 435 | `result-track:8b145d0a5e980b1f97bace13faae7c7ab35954a8a9717522ef4736e5e66172e5` |
| 31 | `theorem` | [_root_.Topology.IsQuotientMap.isFredholm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/root-topology-isquotientmap-isfredholm--b80a49b12533710b066f985b.md) | 439 | `result-track:b80a49b12533710b066f985bd2f8dcfdf580e81bf4e0ae3bf6e7d83043053371` |
| 32 | `theorem` | [_root_.Function.Surjective.isFredholm_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/root-function-surjective-isfredholm-iff--db8b0ae4db29fed296f8438e.md) | 452 | `result-track:db8b0ae4db29fed296f8438ed25971221dcdc0fdf02490a64640601d7f8eb1bf` |
| 33 | `theorem` | [_root_.Submodule.isFredholm_mkQL_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/root-submodule-isfredholm-mkql-iff--82e287dd6d36a1d2704de3ca.md) | 458 | `result-track:82e287dd6d36a1d2704de3ca2c553666f4f065401a839957e6f57e6a27077dba` |
| 34 | `theorem` | [_root_.Submodule.isFredholm_mkQL](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/root-submodule-isfredholm-mkql--d5c1df165cce787bdf93f537.md) | 466 | `result-track:d5c1df165cce787bdf93f5376402a03bf876e7913daa624a3252ec31a2876686` |
| 35 | `theorem` | [_root_.Submodule.isFredholm_projectionOntoL_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/root-submodule-isfredholm-projectionontol-iff--8f6cdbf8ab60a1d25dac1ab9.md) | 471 | `result-track:8f6cdbf8ab60a1d25dac1ab9773f647aaf70328e2c60469563010de5a1728aa4` |
| 36 | `theorem` | [_root_.Submodule.isFredholm_projectionOntoL](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/root-submodule-isfredholm-projectionontol--d448f22084d0f5c33c21bc19.md) | 478 | `result-track:d448f22084d0f5c33c21bc19d1a0eb0830cc230952f1b71b20376dd02ef486b5` |
| 37 | `theorem` | [_root_.FredholmDecomposition.isFredholm_proj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/root-fredholmdecomposition-isfredholm-proj--7b2b2d76292702a00e46d326.md) | 484 | `result-track:7b2b2d76292702a00e46d326f4c8b92318d57e3052f16821ca22ad605fd68025` |
| 38 | `theorem` | [_root_.Submodule.isFredholm_projectionL](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/root-submodule-isfredholm-projectionl--d77d9a3c3de30241f5368d96.md) | 490 | `result-track:d77d9a3c3de30241f5368d96c54011f188ffffdc588932bdf231b4aaf199e931` |
| 39 | `theorem` | [_root_.Submodule.isFredholm_projectionL_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/root-submodule-isfredholm-projectionl-iff--85b20c5a8e23b8757bb9a297.md) | 501 | `result-track:85b20c5a8e23b8757bb9a29742a3c685f4413d585e9f926561e09399c7584e99` |
| 40 | `theorem` | [IsIdempotentElem.isFredholm_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isidempotentelem-isfredholm-iff--bc206b3cb1a97e4d040d3495.md) | 508 | `result-track:bc206b3cb1a97e4d040d34951b989f073c1d55854a87dc16c913dd8279cdb6a5` |
| 41 | `theorem` | [IsIdempotentElem.isFredholm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isidempotentelem-isfredholm--95dffc68af172937d693cca0.md) | 515 | `result-track:95dffc68af172937d693cca0b6b55db3883a2283514ed546489f228275dd1cb9` |
| 42 | `theorem` | [isFredholm_congr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-congr--8e9390b384085c2dac672d2e.md) | 525 | `result-track:8e9390b384085c2dac672d2e8eb6c60812135d42cc054f244c09c4417be3f215` |
| 43 | `theorem` | [IsFredholm.congr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-congr--5d58cf9b6ba1307b1cf2134f.md) | 530 | `result-track:5d58cf9b6ba1307b1cf2134ffdb124b900f7ad1ddd93ced2e51f75c7ab2e0710` |
| 44 | `theorem` | [IsFredholm.add_hasFiniteRange](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-add-hasfiniterange--0c4511bfdf85debf9eae7eb3.md) | 534 | `result-track:0c4511bfdf85debf9eae7eb3fb3d9fcb5782d38b6f6690e4d2371d43be664896` |
| 45 | `theorem` | [IsFredholm.hasFiniteRange_add](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-hasfiniterange-add--68ee9c6c59a94a08cc4fb27e.md) | 539 | `result-track:68ee9c6c59a94a08cc4fb27e2433e4e8b40c170269cd65ed156c8ed37add3741` |
| 46 | `theorem` | [IsFredholm.comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-comp--cdf320e0fd0286db962e1086.md) | 544 | `result-track:cdf320e0fd0286db962e1086458b6039ceb849ef15359b0c8e327fc81f9ee062` |
| 47 | `theorem` | [IsFredholm.comp_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-comp-iff-left--7454728e521105110eca6ce5.md) | 550 | `result-track:7454728e521105110eca6ce5701b2cde7f3c7fd00037aa9f93889f02ea5a4306` |
| 48 | `theorem` | [IsFredholm.comp_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-comp-iff-right--00434eba53ab964e6f56fd4c.md) | 557 | `result-track:00434eba53ab964e6f56fd4c2187f1cd6997f402640cc1efb3ffbdb2a53f5121` |
| 49 | `theorem` | [isFredholm_comp_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-comp-equiv--5800ef15606b1f5515f48719.md) | 565 | `result-track:5800ef15606b1f5515f487194afeee8180c50fb9a172727995523416d6c5be48` |
| 50 | `theorem` | [isFredholm_equiv_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-equiv-comp--adff13f5778f3ffc3979415f.md) | 570 | `result-track:adff13f5778f3ffc3979415f6beea83ffc72a251f14ead3e0b692d652db32dbb` |
| 51 | `theorem` | [isFredholm_restrict_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-restrict-iff--3172e19421c3ac62e37ded59.md) | 574 | `result-track:3172e19421c3ac62e37ded59a698af92ce2d79dc23587fb8ee215fabcbd2fc89` |
| 52 | `theorem` | [isFredholm_domRestrict_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-domrestrict-iff--9b93de190b338454542bd472.md) | 582 | `result-track:9b93de190b338454542bd472f2a7f2514533e887aa7279289fd912d32b686165` |
| 53 | `theorem` | [isFredholm_codRestrict_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-codrestrict-iff--3f51d7e4aa0244d71c7d7803.md) | 589 | `result-track:3f51d7e4aa0244d71c7d7803084505a8a6321fea6a74c4777776de429f936470` |
| 54 | `lemma` | [IsFredholm.index_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfd90c6bf222e0bbbad173b4761cf79962e32601968525004aaa1d5df11621449.lean/declarations/isfredholm-index-comp--f4e87ed16b54f468bb4076ae.md) | 613 | `result-track:f4e87ed16b54f468bb4076ae397628fcc7c0cb68f93f2361f3d436c7797ce1c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
