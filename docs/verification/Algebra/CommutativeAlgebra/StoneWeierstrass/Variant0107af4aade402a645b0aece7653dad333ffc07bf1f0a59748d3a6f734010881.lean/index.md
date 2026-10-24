# Verification target: GRWTSK.Algebra.CommutativeAlgebra.StoneWeierstrass.Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "814bb20ff7e9737c105a088ed3b95aa65208022c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `814bb20ff7e9737c105a088ed3b95aa65208022c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousFunction.Weierstrass` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.IsROrC.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [attachBound](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/attachbound--8b218ad385b82edaa1d5bd46.md) | 57 | `declaration-track:8b218ad385b82edaa1d5bd4661321c58e6d451b2447fb187f7accb62194a03a8` |
| 2 | `theorem` | [attachBound_apply_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/attachbound-apply-coe--f1e9b48a8f81d5f45909a7fb.md) | 62 | `result-track:f1e9b48a8f81d5f45909a7fbd461b9537724588666ba4b9f90c051496c53b942` |
| 3 | `theorem` | [polynomial_comp_attachBound](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/polynomial-comp-attachbound--947edea099a0a89ffa5be2ce.md) | 66 | `result-track:947edea099a0a89ffa5be2ce4075eefb7efc7a2e513b49bc119898f484e467d6` |
| 4 | `theorem` | [polynomial_comp_attachBound_mem](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/polynomial-comp-attachbound-mem--73daf8dbbf66029087e0182c.md) | 83 | `result-track:73daf8dbbf66029087e0182c8765a7564e4f5c624cc79f388c56662af7b05e96` |
| 5 | `theorem` | [comp_attachBound_mem_closure](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/comp-attachbound-mem-closure--ebf1a8c3241b5cb5780379ea.md) | 89 | `result-track:ebf1a8c3241b5cb5780379eafb4b2e2ff0421f2c0860e925a0eb53476e3b6086` |
| 6 | `theorem` | [abs_mem_subalgebra_closure](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/abs-mem-subalgebra-closure--f5be48d65a75b2cb1d08b88c.md) | 111 | `result-track:f5be48d65a75b2cb1d08b88c5976725911374ea4a3021f190002b552c64429de` |
| 7 | `theorem` | [inf_mem_subalgebra_closure](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/inf-mem-subalgebra-closure--65193f90ce56a31fee368fea.md) | 119 | `result-track:65193f90ce56a31fee368fea0bf33fe21675ba4ce2bbff79c34704b2f562dcd0` |
| 8 | `theorem` | [inf_mem_closed_subalgebra](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/inf-mem-closed-subalgebra--24b52c400ec6931c17b64213.md) | 132 | `result-track:24b52c400ec6931c17b64213c2dc07bc93d38a8f3414cb99e90ac24f62cf2edd` |
| 9 | `theorem` | [sup_mem_subalgebra_closure](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/sup-mem-subalgebra-closure--2d3a156a91799039263973a8.md) | 141 | `result-track:2d3a156a91799039263973a8df8f9f6aab77591bff10c8463809d0bfbf7bbf52` |
| 10 | `theorem` | [sup_mem_closed_subalgebra](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/sup-mem-closed-subalgebra--119a7f549ccdd87073417366.md) | 154 | `result-track:119a7f549ccdd87073417366786305e9b0a327b4a7fc61090b20dc7e680c119c` |
| 11 | `theorem` | [sublattice_closure_eq_top](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/sublattice-closure-eq-top--e0421797c17a7d405be79f17.md) | 166 | `result-track:e0421797c17a7d405be79f1766df621016ef87bf0092644f9f2eaae1d10e9cc5` |
| 12 | `theorem` | [subalgebra_topologicalClosure_eq_top_of_separatesPoints](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/subalgebra-topologicalclosure-eq-top-of-separatespoints--68b145de146c26a5b330ade9.md) | 270 | `result-track:68b145de146c26a5b330ade97ecaaaf0551d05601b54f511943b5d601d9e4c18` |
| 13 | `theorem` | [continuousMap_mem_subalgebra_closure_of_separatesPoints](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/continuousmap-mem-subalgebra-closure-of-separatespoints--9cac7324aabb747266cf270b.md) | 292 | `result-track:9cac7324aabb747266cf270bf5650d75138992703a92e8a6f2149472dd23c932` |
| 14 | `theorem` | [exists_mem_subalgebra_near_continuousMap_of_separatesPoints](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/exists-mem-subalgebra-near-continuousmap-of-separatespoints--f8ef28ddcafd11d4f8ed930f.md) | 304 | `result-track:f8ef28ddcafd11d4f8ed930f066ce43cc3e495c9476877457282934123d93757` |
| 15 | `theorem` | [exists_mem_subalgebra_near_continuous_of_separatesPoints](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/exists-mem-subalgebra-near-continuous-of-separatespoints--7cfc2074ce35a1b5fc1f8077.md) | 321 | `result-track:7cfc2074ce35a1b5fc1f80770561df8df44e02148c95e6705e27ca09b3846678` |
| 16 | `theorem` | [Subalgebra.SeparatesPoints.isROrC_to_real](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/subalgebra-separatespoints-isrorc-to-real--eb99e4608c973dd235513df3.md) | 350 | `result-track:eb99e4608c973dd235513df3d6c16f89c9d6cf66a9e771df35f80ec5a16b25e6` |
| 17 | `theorem` | [ContinuousMap.starSubalgebra_topologicalClosure_eq_top_of_separatesPoints](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/continuousmap-starsubalgebra-topologicalclosure-eq-top-of-separatespoint--315bbe7810ad37dc8c0f3deb.md) | 382 | `result-track:315bbe7810ad37dc8c0f3deb48eb05c37ba5c97d7d7271cd24f50bc52aa7ddf5` |
| 18 | `theorem` | [polynomialFunctions.topologicalClosure](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/polynomialfunctions-topologicalclosure--61a82cd19055b6f3c59e2a6d.md) | 433 | `result-track:61a82cd19055b6f3c59e2a6d737654e86f0be9b6b4413c3fc024467532cc7441` |
| 19 | `theorem` | [polynomialFunctions.starClosure_topologicalClosure](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/polynomialfunctions-starclosure-topologicalclosure--fce99e7d5c204907c67febe8.md) | 440 | `result-track:fce99e7d5c204907c67febe82934388907f5e4e0b38c22a125deb3464034b70a` |
| 20 | `theorem` | [ContinuousMap.algHom_ext_map_X](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/continuousmap-alghom-ext-map-x--6d94bb22eee4d046a2975e57.md) | 448 | `result-track:6d94bb22eee4d046a2975e572b48db70791d49700fedd74f03fbdceefe8429d2` |
| 21 | `theorem` | [ContinuousMap.starAlgHom_ext_map_X](../../../../../mathematics/Algebra/CommutativeAlgebra/StoneWeierstrass/Variant0107af4aade402a645b0aece7653dad333ffc07bf1f0a59748d3a6f734010881.lean/declarations/continuousmap-staralghom-ext-map-x--e2ed6a368cedb2370e6f63f0.md) | 461 | `result-track:e2ed6a368cedb2370e6f63f01677a5de2519e669a82492f2a24e0c58f9b3d84c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
