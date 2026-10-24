# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Lemmas.Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1990ad092ed9a52cdc13e64b519e2939980fdf32",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1990ad092ed9a52cdc13e64b519e2939980fdf32`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.FiniteDimension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ofReal_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean/declarations/ofreal-eval--0479712b2d90b4691ff9a879.md) | 17 | `result-track:0479712b2d90b4691ff9a879f9c3934f3a0efb0f1c76d0265bea599ccf973c87` |
| 2 | `lemma` | [RCLike.span_one_I](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean/declarations/rclike-span-one-i--36cf45fb006361246e12f394.md) | 23 | `result-track:36cf45fb006361246e12f39425b0cb0e7e5505aae564cfccb66ffa829f34be63` |
| 3 | `lemma` | [RCLike.rank_le_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean/declarations/rclike-rank-le-two--799278f64c2fa021d918359c.md) | 29 | `result-track:799278f64c2fa021d918359c64fa7c70221f09b759e6eb0064688f2da7fe2081` |
| 4 | `lemma` | [RCLike.finrank_le_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean/declarations/rclike-finrank-le-two--d86d69176a553d0fb29702ce.md) | 41 | `result-track:d86d69176a553d0fb29702ce3811f37ace2a336510e9a4d974a2245a124f195b` |
| 5 | `instance` | [rclike_to_real](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean/declarations/rclike-to-real--cc457119b764aad3873e35f4.md) | 53 | `declaration-track:cc457119b764aad3873e35f4fb43009f5903366caa8ec5f0bedd554c5f0f0f39` |
| 6 | `theorem` | [proper_rclike](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean/declarations/proper-rclike--1dd270d30cc51abf9ed5a4c0.md) | 62 | `result-track:1dd270d30cc51abf9ed5a4c0bfc0280c679eee4016ab6a208ac6735257418edc` |
| 7 | `instance` | [RCLike.properSpace_submodule](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean/declarations/rclike-properspace-submodule--79ef0e31bf30886c7df9d3fc.md) | 69 | `declaration-track:79ef0e31bf30886c7df9d3fcf5fec1372def88ac5457adc95379e420283b5d51` |
| 8 | `theorem` | [reCLM_norm](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean/declarations/reclm-norm--fae3738803bb0379df27f15b.md) | 78 | `result-track:fae3738803bb0379df27f15bac84b0e73011c356582cc2905cefb788fe2ac16c` |
| 9 | `theorem` | [conjCLE_norm](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean/declarations/conjcle-norm--cb13f42bbfae6f6ea2b7528e.md) | 84 | `result-track:cb13f42bbfae6f6ea2b7528e2aafd4fc836dc09c0e3afaa873b876d4293926f7` |
| 10 | `theorem` | [ofRealCLM_norm](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean/declarations/ofrealclm-norm--cae30530583b835e7ac281e2.md) | 88 | `result-track:cae30530583b835e7ac281e282a8c06ec971391a6cc32ae6c0904e7251b4a63c` |
| 11 | `lemma` | [aeval_conj](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean/declarations/aeval-conj--89be44a81475c5f47df01926.md) | 98 | `result-track:89be44a81475c5f47df01926d7d80ed4008f7cb69efc64058d59efea3741eb82` |
| 12 | `lemma` | [aeval_ofReal](../../../../../mathematics/Algebra/CommutativeAlgebra/Lemmas/Variant81d1f98bc1fd629b0870aa8576459923257b7d717b3dbed9156eed5ada272cb6.lean/declarations/aeval-ofreal--559cfea17530d1e4ef34f64f.md) | 101 | `result-track:559cfea17530d1e4ef34f64ff3477b8b689d7bb22b59a4e160a875cf6cad706b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
