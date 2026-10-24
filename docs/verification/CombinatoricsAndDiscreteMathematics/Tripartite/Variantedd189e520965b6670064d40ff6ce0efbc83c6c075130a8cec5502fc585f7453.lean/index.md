# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Tripartite.Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "990339480c60dbed03373ea60c0904a6a9f2b8f3",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `990339480c60dbed03373ea60c0904a6a9f2b8f3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Triangle.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/rel--4065ee662f748da8e76df5a8.md) | 57 | `declaration-track:4065ee662f748da8e76df5a8fbd064aaecf2201e1f66d0266a303386b69f6a73` |
| 2 | `lemma` | [rel_irrefl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/rel-irrefl--f6bbc70f8c47f90a762eed54.md) | 67 | `result-track:f6bbc70f8c47f90a762eed547bcf8ac1514d220b41d24fae2103f2697ebda903` |
| 3 | `lemma` | [rel_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/rel-symm--e1baa6f39fb4d85afdad5a9d.md) | 68 | `result-track:e1baa6f39fb4d85afdad5a9d0cef7315bd7056eacf0c4852f64ae023352f5226` |
| 4 | `def` | [graph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/graph--6b62e6611ee9a33370554e05.md) | 72 | `declaration-track:6b62e6611ee9a33370554e0550c33c21c2a3782a73be63c6f3f8e7108d941d0e` |
| 5 | `lemma` | [not_in₀₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/not-in--39750b3b715be6dea29e7d68.md) | 76 | `result-track:39750b3b715be6dea29e7d68b4524aa1dcc78aa4ec0347757485d46eb548f620` |
| 6 | `lemma` | [not_in₁₁](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/not-in--798a9e979ced4d2ae7ac727b.md) | 77 | `result-track:798a9e979ced4d2ae7ac727b9a270cc3826a877bc4623b7585e50421194a476c` |
| 7 | `lemma` | [not_in₂₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/not-in--086f53df28a21fbc5b6fe03e.md) | 78 | `result-track:086f53df28a21fbc5b6fe03e90e7a7c3d29cb3aaefce7183d7fc1fa370e0d3bb` |
| 8 | `lemma` | [in₀₁_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/in-iff--885d2afc58ff97db67ab244c.md) | 80 | `result-track:885d2afc58ff97db67ab244cca46a49b1b3f2b1525df9ed9bed04c51eed97704` |
| 9 | `lemma` | [in₁₀_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/in-iff--11d07aae3b29bdff9f75682c.md) | 82 | `result-track:11d07aae3b29bdff9f75682c5df105296a1e8aa1c88e6a71ef8d1a2a442e3428` |
| 10 | `lemma` | [in₀₂_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/in-iff--6881d0006f7979b54be02102.md) | 84 | `result-track:6881d0006f7979b54be021027a8135891dc64b85874caba050f3e3f0221076bf` |
| 11 | `lemma` | [in₂₀_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/in-iff--5d35edbbef4dcad7c988bf32.md) | 86 | `result-track:5d35edbbef4dcad7c988bf324322d35003621928d06fc022952c981ab4fe48ad` |
| 12 | `lemma` | [in₁₂_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/in-iff--5ceb1d313f4d0998b1dbc47c.md) | 88 | `result-track:5ceb1d313f4d0998b1dbc47c4cc3b8f2a34a929cbcb5e72645226648f0d83212` |
| 13 | `lemma` | [in₂₁_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/in-iff--d08fa54d42e18fb94e1067ee.md) | 90 | `result-track:d08fa54d42e18fb94e1067ee17fe5507f123d0cb1e561175154a03108d0b638a` |
| 14 | `lemma` | [in₀₁_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/in-iff--eec4ab193efcdee060382d54.md) | 93 | `result-track:eec4ab193efcdee060382d54887d505e8f5a9cb5b322bbb17bd70f108269e2f6` |
| 15 | `lemma` | [in₁₀_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/in-iff--a410e037b9bdd17a9baea2e0.md) | 97 | `result-track:a410e037b9bdd17a9baea2e0005d86d794dc9fe9ebee17b78b44ed1b371b5049` |
| 16 | `lemma` | [in₀₂_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/in-iff--ebfb0bf286fb1237c5393f75.md) | 101 | `result-track:ebfb0bf286fb1237c5393f75dfcbd6d51239696fbff6fcdd8d44dcc493675643` |
| 17 | `lemma` | [in₂₀_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/in-iff--778a7c5d3e4496d974746b32.md) | 105 | `result-track:778a7c5d3e4496d974746b327a95ad6d09a88445607770d7e441926f49125746` |
| 18 | `lemma` | [in₁₂_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/in-iff--9f182b7eaa1f44e8be342939.md) | 109 | `result-track:9f182b7eaa1f44e8be34293984dd9efc553c674517ca8909982493eaef46c6a6` |
| 19 | `lemma` | [in₂₁_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/in-iff--39d348363c701b6388ee64f5.md) | 113 | `result-track:39d348363c701b6388ee64f5a4d7207119930f6d5e6e0bf00c2735f3292f7f70` |
| 20 | `class` | [ExplicitDisjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/explicitdisjoint--7990ab1a5ce4f2e2868e3099.md) | 123 | `declaration-track:7990ab1a5ce4f2e2868e309947550fd4db214092f144765d7a6cdd272a5729ad` |
| 21 | `class` | [NoAccidental](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/noaccidental--e2aa0145afe21c6913d0bd50.md) | 133 | `declaration-track:e2aa0145afe21c6913d0bd50e05cbf50fad99184fa965024c46e41ac74e7589f` |
| 22 | `instance` | [graph.instDecidableRelAdj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/graph-instdecidablereladj--6052f8e2f9b52a7e5635edd2.md) | 140 | `declaration-track:6052f8e2f9b52a7e5635edd296a2a57795e3a0082688459540f258ee86a4439f` |
| 23 | `lemma` | [graph_triple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/graph-triple--e7b2d3dfec77cae2fabfc1f8.md) | 153 | `result-track:e7b2d3dfec77cae2fabfc1f86aada76be9252a5aaf3aef736f94304c889fc4d8` |
| 24 | `def` | [toTriangle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/totriangle--8ad26efdb09115beb18e852b.md) | 162 | `declaration-track:8ad26efdb09115beb18e852bff15505f0e3ab689a73a32edf8015c6a7ce70a66` |
| 25 | `lemma` | [toTriangle_is3Clique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/totriangle-is3clique--bb2d74eff112ea5e2983476e.md) | 168 | `result-track:bb2d74eff112ea5e2983476eb8e994aa003c09a9de12e242f8c23a5386f3628b` |
| 26 | `lemma` | [exists_mem_toTriangle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/exists-mem-totriangle--d52c1817b300dad50ff8113e.md) | 172 | `result-track:d52c1817b300dad50ff8113e777dbc37ee23c0ec21a22b50368d31d24dfac60f` |
| 27 | `lemma` | [is3Clique_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/is3clique-iff--4e33232269d09443544071e8.md) | 175 | `result-track:4e33232269d09443544071e87dc4d44cdc391fa57f58cf72a792eeffbc5d47e8` |
| 28 | `lemma` | [toTriangle_surjOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/totriangle-surjon--715b7ff3390082edb9947477.md) | 189 | `result-track:715b7ff3390082edb9947477aa2ae386404a372272f4e8fa34fec31571136e9f` |
| 29 | `lemma` | [map_toTriangle_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/map-totriangle-disjoint--f6d66c8a8a706017403b5d4c.md) | 194 | `result-track:f6d66c8a8a706017403b5d4c558d5047e4cef24ddfa85abce257e97749eacb53` |
| 30 | `lemma` | [cliqueSet_eq_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/cliqueset-eq-image--9497c0145719932602033ded.md) | 215 | `result-track:9497c0145719932602033ded936d41c973b4ed6cb86bab934eb96fd39c0c2d66` |
| 31 | `lemma` | [cliqueFinset_eq_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/cliquefinset-eq-image--6cd63526b26debbab70375b7.md) | 221 | `result-track:6cd63526b26debbab70375b7aaf5387a33f4a3bb0df23b71faedb0894efa02d7` |
| 32 | `lemma` | [cliqueFinset_eq_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/cliquefinset-eq-map--4ec99e289232a3a6dc928593.md) | 224 | `result-track:4ec99e289232a3a6dc92859359234e14ef34d66410cb7bf2b091f0cb1e7f0c05` |
| 33 | `lemma` | [card_triangles](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/card-triangles--8c41b8073e1306c69a6bb09e.md) | 227 | `result-track:8c41b8073e1306c69a6bb09e4b34d20d611fbd3eb8c8a9c71df94f53b442ef71` |
| 34 | `lemma` | [farFromTriangleFree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/farfromtrianglefree--f6cb217b0337d7a40b6d0bd3.md) | 230 | `result-track:f6cb217b0337d7a40b6d0bd3b7f6c94ebf98cc679e47ee66f0ad4bec04a41ca8` |
| 35 | `lemma` | [locallyLinear](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Tripartite/Variantedd189e520965b6670064d40ff6ce0efbc83c6c075130a8cec5502fc585f7453.lean/declarations/locallylinear--f42bd0fbd8d6d28c691ce26f.md) | 242 | `result-track:f42bd0fbd8d6d28c691ce26f1d04bec89ad64b9adee3bd7bd441e3b8fce97b4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
