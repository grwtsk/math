# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "168b18568e9582bd3fb2edd667b6f773b0b1e736",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `168b18568e9582bd3fb2edd667b6f773b0b1e736`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.ULift` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.LinearCombination` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Relations](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/relations--3ed531162d9a475bc449a445.md) | 57 | `declaration-track:3ed531162d9a475bc449a445ab2305b1180298209d1596edc8e8c30c25eb7a8b` |
| 2 | `def` | [Quotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/quotient--5352d9905b1a7691fae79dc1.md) | 72 | `declaration-track:5352d9905b1a7691fae79dc17a59e2ccb65ec32d89d6d37c421fb86ea46f2a43` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/instance--7206fb615da7ec7d4bcd456b.md) | 74 | `declaration-track:7206fb615da7ec7d4bcd456bf8e3146420baa827966b7f2fdfe8d462de07601c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/instance--a9b4492ce1a39ed43348dc83.md) | 77 | `declaration-track:a9b4492ce1a39ed43348dc83e84b467beb2415ad62f6cbe3c906a20e445b0c54` |
| 5 | `def` | [toQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/toquotient--1ba80e1bafa7fe4c78050305.md) | 81 | `declaration-track:1ba80e1bafa7fe4c7805030553253bb53c5a173e540e73aa525bd281e60a6c97` |
| 6 | `lemma` | [Quotient.linearMap_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/quotient-linearmap-ext--6fcf0b728859a646e37f7597.md) | 85 | `result-track:6fcf0b728859a646e37f75973e659fa5ba10008087270a97dceb16f2e9867b3a` |
| 7 | `lemma` | [surjective_toQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/surjective-toquotient--0d86868303d66d786f7f054f.md) | 92 | `result-track:0d86868303d66d786f7f054fc24c482943b5a7ce8461fa7c8841705464236155` |
| 8 | `lemma` | [ker_toQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/ker-toquotient--ff337fcbb225677f7ad5dc09.md) | 95 | `result-track:ff337fcbb225677f7ad5dc09c2d22468f918e945f25f1b5f04684260d2e3b284` |
| 9 | `lemma` | [toQuotient_relation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/toquotient-relation--d3b2a29aa70e6db08802872d.md) | 100 | `result-track:d3b2a29aa70e6db08802872d151b19cb42a2456769638639397bd48fac15b6c1` |
| 10 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/map--23c0ce6e57f676c978b29920.md) | 108 | `declaration-track:23c0ce6e57f676c978b29920b55ab5d374c8b3ae6ea05f8261b5a08cf7f010ef` |
| 11 | `lemma` | [map_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/map-single--3b107134c41f2f23b309c509.md) | 112 | `result-track:3b107134c41f2f23b309c509beddcc1a4c97d2c73af94726954601483f0a4bc1` |
| 12 | `lemma` | [range_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/range-map--e9a147d18678d6f4d26cc06a.md) | 117 | `result-track:e9a147d18678d6f4d26cc06a8aac89af98228b7a1503f6e2b2965310db91d4ac` |
| 13 | `lemma` | [toQuotient_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/toquotient-map--848723d20b5d71eb07b7f7b5.md) | 122 | `result-track:848723d20b5d71eb07b7f7b58ecb665ed615f5f5642a39755dce55ede18b9792` |
| 14 | `lemma` | [toQuotient_map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/toquotient-map-apply--e09bb390e4faf9202944e190.md) | 125 | `result-track:e09bb390e4faf9202944e1909e1d367169db0dba13d2b3603106cf46f1f49a80` |
| 15 | `structure` | [Solution](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/solution--38eaa46611785af8aa6ef26d.md) | 133 | `declaration-track:38eaa46611785af8aa6ef26d3e1eeb98a7c2a0ef9003f0e94b31fcc34e17d8c0` |
| 16 | `def` | [π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/anonymous--27af1e1997c227263e9e6877.md) | 149 | `declaration-track:27af1e1997c227263e9e687783238ac5cbc584a8f0a122d38fe37e417676ab39` |
| 17 | `lemma` | [π_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/single--b7ee2be01ce9cbf24c6db59a.md) | 152 | `result-track:b7ee2be01ce9cbf24c6db59acb6290dd80b55e5f89566f3adf70187aa91cbd98` |
| 18 | `lemma` | [π_relation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/relation--1b58623641d5dadea1f29136.md) | 156 | `result-track:1b58623641d5dadea1f29136a49d99e96a6619d9ad6ca6728243060cde1165ed` |
| 19 | `lemma` | [π_comp_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/comp-map--761ff654dd1f8e31bfa19c9c.md) | 160 | `result-track:761ff654dd1f8e31bfa19c9cce4f4fbd5b60f9ecc068cb109377ea1ba8aafd37` |
| 20 | `lemma` | [π_comp_map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/comp-map-apply--a610db3daf78864cf577bbb4.md) | 163 | `result-track:a610db3daf78864cf577bbb493d453e79b4091597bfc52d331fc69fbf5b6d353` |
| 21 | `lemma` | [range_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/range--623b20aa925eec8326661f2b.md) | 167 | `result-track:623b20aa925eec8326661f2b8d057b9ecd4e03335607b1eadccb1bd6623147c4` |
| 22 | `lemma` | [span_relation_le_ker_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/span-relation-le-ker--a27f261f61adf0796fe10aa4.md) | 170 | `result-track:a27f261f61adf0796fe10aa414956b304541447ca0ff08e328f684ef08565ed0` |
| 23 | `def` | [fromQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/fromquotient--6383fcb2feda7235f31cf660.md) | 178 | `declaration-track:6383fcb2feda7235f31cf660fb2b59bcbc091313fd21cccd111c06bb0b8c37ab` |
| 24 | `lemma` | [fromQuotient_comp_toQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/fromquotient-comp-toquotient--9d300d1eb9fdbe1e74521f32.md) | 182 | `result-track:9d300d1eb9fdbe1e74521f3211a3dbd6d9c32a359c76ac5896de4c42f4503214` |
| 25 | `lemma` | [fromQuotient_toQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/fromquotient-toquotient--d89686f2a12179b73723e80f.md) | 186 | `result-track:d89686f2a12179b73723e80f410770babb2209943da7acd9ce168c5a6c4e9091` |
| 26 | `def` | [postcomp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/postcomp--ed7e7ce3661535c5a0029aa3.md) | 193 | `declaration-track:ed7e7ce3661535c5a0029aa3dfe4db14f9c3beae761a86abd1e1222e21eb7f23` |
| 27 | `lemma` | [postcomp_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/postcomp-comp--c8bfac44b5b5a477d9165c39.md) | 200 | `result-track:c8bfac44b5b5a477d9165c396d4b98cad17466d26d1636ab7a567ac910be91fd` |
| 28 | `lemma` | [postcomp_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/postcomp-id--ccfd568ef96a40857e7be983.md) | 204 | `result-track:ccfd568ef96a40857e7be983320e0f4d4a95a284aa7c8e8bb00451059ea9ed46` |
| 29 | `lemma` | [congr_var](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/congr-var--2507313c763c4f78fadb3117.md) | 208 | `result-track:2507313c763c4f78fadb31179275821ae3f90175be5073f587ec1a5e251f0f61` |
| 30 | `lemma` | [congr_postcomp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/congr-postcomp--4730b04474216d670b5005cf.md) | 211 | `result-track:4730b04474216d670b5005cf7ba661f0ce60eb35e36dbc82b341819a343eb186` |
| 31 | `def` | [ofπ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/of--3507f1bea4b384d7aa431168.md) | 225 | `declaration-track:3507f1bea4b384d7aa431168703ed2089f1c2d0c0d438c386bb15d518e6812d8` |
| 32 | `lemma` | [ofπ_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/of--2cd508127acd21bd26d59ab0.md) | 233 | `result-track:2cd508127acd21bd26d59ab067ae79dab66df903d0a0bea916687729e997155f` |
| 33 | `def` | [ofπ'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/of--21e652c0a61f7c22d395ff00.md) | 244 | `declaration-track:21e652c0a61f7c22d395ff0004c008306614b0ccc7765497dd943ba3ce816fe3` |
| 34 | `lemma` | [ofπ'_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/of--07305808be3529f0ea5e7c18.md) | 249 | `result-track:07305808be3529f0ea5e7c184fcdff5113ade6067840e181313e5611a83d22c4` |
| 35 | `lemma` | [injective_fromQuotient_iff_ker_π_eq_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/injective-fromquotient-iff-ker-eq-span--042e2caf9f9ace4207a37b13.md) | 257 | `result-track:042e2caf9f9ace4207a37b13209141e932a2f6e568827282b0902e0f057e570a` |
| 36 | `lemma` | [surjective_fromQuotient_iff_surjective_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/surjective-fromquotient-iff-surjective--b2b07963565fbd39a41099b9.md) | 274 | `result-track:b2b07963565fbd39a41099b9b3a0ccbe2c61f49a7f924b1421eccdf83ae1936c` |
| 37 | `lemma` | [surjective_π_iff_span_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/surjective-iff-span-eq-top--4a1ac3ad794684710b851a86.md) | 280 | `result-track:4a1ac3ad794684710b851a860e7744bb3b23b28098088a2eff5f1605bcd5d5ec` |
| 38 | `structure` | [IsPresentation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/ispresentation--19c570117ad8b4f6b2724567.md) | 289 | `declaration-track:19c570117ad8b4f6b272456775e28585c12d9dd0f3b6e57a180b1a5dcdc5941c` |
| 39 | `def` | [linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/linearequiv--b7f4cb6690657eef2f7a5cc1.md) | 301 | `declaration-track:b7f4cb6690657eef2f7a5cc11bf46bf522516d0f167e5b5bea2210902e0c639e` |
| 40 | `lemma` | [linearEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/linearequiv-apply--f7d693c3e1bbacc15e997f85.md) | 304 | `result-track:f7d693c3e1bbacc15e997f85308d47feb4bc316058bb8efcf9cde1a12581c398` |
| 41 | `lemma` | [linearEquiv_symm_var](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/linearequiv-symm-var--aed58c29131eec8609cd7ea8.md) | 308 | `result-track:aed58c29131eec8609cd7ea8957f4bd440a4f37904bb91225a5b613445e3d425` |
| 42 | `lemma` | [surjective_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/surjective--45a458d3e821964ff037438f.md) | 312 | `result-track:45a458d3e821964ff037438fb153522671e192cf9891e6cfce8485a466aa8c6c` |
| 43 | `lemma` | [ker_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/ker--afc540a93225f38408c6b1e5.md) | 315 | `result-track:afc540a93225f38408c6b1e5b97de8f32a119b387d91deba211f5c947c671c08` |
| 44 | `lemma` | [exact](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/exact--5eac9597030caf8fb7358aff.md) | 319 | `result-track:5eac9597030caf8fb7358aff866b15e5c25e09d2e14deab9ef51998f722fa40b` |
| 45 | `def` | [desc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/desc--d396509a1b39d55184ea516a.md) | 327 | `declaration-track:d396509a1b39d55184ea516a8ff6fd7388061e7edd4d01a921c71545e5f3e9a4` |
| 46 | `lemma` | [desc_var](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/desc-var--c15afcf369354e7430c0aacc.md) | 331 | `result-track:c15afcf369354e7430c0aacccc2717e817d6f914963db0f239b8624213d914a9` |
| 47 | `lemma` | [desc_comp_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/desc-comp--f8364ded0e6ecbc7ca2ce24d.md) | 337 | `result-track:f8364ded0e6ecbc7ca2ce24d184514b8a8a6347f47f6117776c22c284853be32` |
| 48 | `lemma` | [π_desc_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/desc-apply--b2f018d18160a9cd2e6125f7.md) | 340 | `result-track:b2f018d18160a9cd2e6125f7b5f1d6920846de1808e70839e488c34e99a1acc5` |
| 49 | `lemma` | [postcomp_desc](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/postcomp-desc--36a3173972c092a0a0099f44.md) | 345 | `result-track:36a3173972c092a0a0099f4419169810a250c2654d4e1254e1e91b08eb51a322` |
| 50 | `lemma` | [postcomp_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/postcomp-injective--654b9d5746f9a65157a40867.md) | 348 | `result-track:654b9d5746f9a65157a408673159199551ec6f8d8788a255f9dfa706fd51146b` |
| 51 | `def` | [linearMapEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/linearmapequiv--31ed593b93b3c1e988d502fa.md) | 361 | `declaration-track:31ed593b93b3c1e988d502fa45af50bbaa6de9e3e3cec85d88df03c6421c3007` |
| 52 | `def` | [uniq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/uniq--cac858b2e25f15cc8cfb88a6.md) | 373 | `declaration-track:cac858b2e25f15cc8cfb88a60c1eb18b5d31ea4c1ab30d6d3439dd94710140ad` |
| 53 | `lemma` | [postcomp_uniq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/postcomp-uniq--a0ba483204aba05bffd33a52.md) | 379 | `result-track:a0ba483204aba05bffd33a52deadb2a8a78c00d809d3a3126266fbbbbb9d7ec0` |
| 54 | `lemma` | [postcomp_uniq_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/postcomp-uniq-symm--49ce8207b3d80a56d89a97a6.md) | 383 | `result-track:49ce8207b3d80a56d89a97a6b59f6c3a734013173353910e9816192770afe9c7` |
| 55 | `lemma` | [uniq_var](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/uniq-var--a22a5b158cc3e7b2ed1481a4.md) | 387 | `result-track:a22a5b158cc3e7b2ed1481a49a504b55a857cb88d4b6a4984efe9b5c72fdeee8` |
| 56 | `lemma` | [uniq_symm_var](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/uniq-symm-var--2b1219af047bff774802f22f.md) | 391 | `result-track:2b1219af047bff774802f22fcf9ebc63eb0fc3921ed9dfd3193767c954ac1c59` |
| 57 | `lemma` | [of_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/of-linearequiv--e299655aca41bcdcba5b79b8.md) | 396 | `result-track:e299655aca41bcdcba5b79b87fdfb66a071f1e7e20f31cfb961cb2e2223287f6` |
| 58 | `def` | [ofQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/ofquotient--8db2592fd13f2fc8cc1c1327.md) | 410 | `declaration-track:8db2592fd13f2fc8cc1c1327575a7c58159d91c87821815230eff17cc76af310` |
| 59 | `lemma` | [ofQuotient_π](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/ofquotient--3387dc89cced47d613506450.md) | 414 | `result-track:3387dc89cced47d61350645017294592e7aa48d3b3f15a18b1dee55e82f2ccc6` |
| 60 | `lemma` | [ofQuotient_fromQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/ofquotient-fromquotient--a904df41be14c15b436c22c4.md) | 417 | `result-track:a904df41be14c15b436c22c4c84920da0593cbdff6893784087d583d331236a8` |
| 61 | `lemma` | [ofQuotient_isPresentation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/ofquotient-ispresentation--36547eee7fecc865900a869d.md) | 419 | `result-track:36547eee7fecc865900a869db663de656c5823366f91a3006eeaeeb67ca70236` |
| 62 | `structure` | [IsPresentationCore](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/ispresentationcore--30a6fef152e9bf42d304b41d.md) | 429 | `declaration-track:30a6fef152e9bf42d304b41ddcf6366e430df5d267c5a28f61c639e93b0b5a13` |
| 63 | `lemma` | [desc_var](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/desc-var--7add84ec6bfccddc65c8200f.md) | 443 | `result-track:7add84ec6bfccddc65c8200f1ee210f1e8f83da76ec5ded662778be1cf2fca23` |
| 64 | `def` | [down](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/down--3387a44d823f1fe046a5e3c2.md) | 449 | `declaration-track:3387a44d823f1fe046a5e3c2b86ea800ead76d222d5ded0f83c3f8d52bd49be5` |
| 65 | `lemma` | [isPresentation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/ispresentation--fc1f349460952b79415f341a.md) | 463 | `result-track:fc1f349460952b79415f341a94fc8f7d89ed702983492ed31d298ae6da8496d2` |
| 66 | `lemma` | [isPresentation_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/ispresentation-iff--e851a3ab09e7b5b72bc22c81.md) | 477 | `result-track:e851a3ab09e7b5b72bc22c81e945ef9d85757ed9b1d12ca4bafff31cda619039` |
| 67 | `lemma` | [isPresentation_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/ispresentation-mk--77acbf978b1f8be91a633654.md) | 485 | `result-track:77acbf978b1f8be91a6336546e9087d9b219dd4fbd09b8381be93254890f0549` |
| 68 | `structure` | [Presentation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/presentation--a8a6f26273a69884dccb4218.md) | 500 | `declaration-track:a8a6f26273a69884dccb42185ffe4e0f41c8099dbb5accc5244f8595eb4c7039` |
| 69 | `def` | [Presentation.ofIsPresentation](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/presentation-ofispresentation--763a20fbe6a9b8c44bd07883.md) | 507 | `declaration-track:763a20fbe6a9b8c44bd07883b23befbac9ec4dc3d73539a61422ae0a91ba983f` |
| 70 | `def` | [Presentation.ofLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/declarations/presentation-oflinearequiv--6ecede66f99a519c29d5b20d.md) | 517 | `declaration-track:6ecede66f99a519c29d5b20d4f2a9ca6be0cb2ebfb9aa3185478987d1f060268` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
