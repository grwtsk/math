# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteCharacterGuardAttempt04.Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "153bbf71a062ffe59b7707418372471eef0726a7",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `153bbf71a062ffe59b7707418372471eef0726a7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/coefficientmap--42fe976812d37986b4659e34.md) | 22 | `declaration-track:42fe976812d37986b4659e34f3aff9201492f5773a0c2d102dc8db680fbd64f8` |
| 2 | `theorem` | [coefficient_eq_expect](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/coefficient-eq-expect--239a3269f4958d3a33d1e79a.md) | 28 | `result-track:239a3269f4958d3a33d1e79ab6192f47837913f02b1c08c40d43654e5ef6fab4` |
| 3 | `theorem` | [trivial_coefficient_eq_mean](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/trivial-coefficient-eq-mean--2699651feb30da44c568ba92.md) | 33 | `result-track:2699651feb30da44c568ba920350a2f442f3d1c11fb0aaa015301d9f5728c1df` |
| 4 | `theorem` | [coefficient_character](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/coefficient-character--645e27551a5a167e7be37a5e.md) | 38 | `result-track:645e27551a5a167e7be37a5e5bece6cc9edda98057309282eca860ace328c209` |
| 5 | `theorem` | [coefficient_eq_basis_repr](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/coefficient-eq-basis-repr--98e458333735f8dd640af095.md) | 43 | `result-track:98e458333735f8dd640af0959c7c3330ee77fe542dbdc88fe92f89ca73f80a67` |
| 6 | `theorem` | [complete_reconstruction](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/complete-reconstruction--058b69a76f2bb37f0b1f87c1.md) | 51 | `result-track:058b69a76f2bb37f0b1f87c13b017ba3a1044dc354771984504f0987f7f848b6` |
| 7 | `def` | [incompleteReconstruction](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/incompletereconstruction--3927e30312ee3a789f5363bf.md) | 57 | `declaration-track:3927e30312ee3a789f5363bfe0e2d40cbcad4484973fbf5f389a79fe5e8b2a6f` |
| 8 | `theorem` | [reconstruction_split](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/reconstruction-split--3ab2126c37cd12b2cb2c66db.md) | 62 | `result-track:3ab2126c37cd12b2cb2c66dbb287ca5d88540f50b5408ed663902422a4522e89` |
| 9 | `theorem` | [incomplete_eq_self_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/incomplete-eq-self-iff--405f14dd088a6640c48c1bd9.md) | 76 | `result-track:405f14dd088a6640c48c1bd95aecdaefc8d9ce5b676331ee0ee12cec710210ab` |
| 10 | `def` | [nontrivialSpan](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/nontrivialspan--158f81541972458eeffa322b.md) | 88 | `declaration-track:158f81541972458eeffa322b30198a4593860f31143ac896a233f45173b1cdfe` |
| 11 | `theorem` | [nontrivialSpan_le_trivial_kernel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/nontrivialspan-le-trivial-kernel--c6f8ce7325815f10cebdaddb.md) | 91 | `result-track:c6f8ce7325815f10cebdaddb1dd3b813cb290c872c5622cb8e2b3d5ff051ce3f` |
| 12 | `theorem` | [trivial_not_mem_nontrivialSpan](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/trivial-not-mem-nontrivialspan--6a55c9c2aaa8d9ea6f64261d.md) | 100 | `result-track:6a55c9c2aaa8d9ea6f64261d576eee910c30d44f4e201657a3c1b77ca6c6c545` |
| 13 | `theorem` | [mem_nontrivialSpan_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/mem-nontrivialspan-iff--ecb45b281128ef74b7899261.md) | 112 | `result-track:ecb45b281128ef74b78992612e6232183d22ce99e5bba657c245293cf4a590b9` |
| 14 | `theorem` | [nontrivialSpan_eq_trivial_kernel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/nontrivialspan-eq-trivial-kernel--941abe45196379475e66f397.md) | 127 | `result-track:941abe45196379475e66f3975eb9e3a45571d721d33fcd8f7dbdfb7e3ae59f19` |
| 15 | `theorem` | [coefficient_constant](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/coefficient-constant--d23b35997390d8cd02855d17.md) | 132 | `result-track:d23b35997390d8cd02855d17578390ac4580aa9affdc2c85e312d272f3f72038` |
| 16 | `def` | [nontrivialStack](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/nontrivialstack--cd25a12cf502cb36969706bb.md) | 141 | `declaration-track:cd25a12cf502cb36969706bba5b1913fa448ac899616c0a711566eba2705b2a3` |
| 17 | `theorem` | [nontrivialStack_add_constant](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/nontrivialstack-add-constant--6ddd8bfbc47d9a1e56ba7338.md) | 144 | `result-track:6ddd8bfbc47d9a1e56ba733812a567b6dc23d6668257197e559e9fad037a6a98` |
| 18 | `theorem` | [nontrivialStack_eq_iff_constant_difference](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/nontrivialstack-eq-iff-constant-difference--b7c4ee03db0c233749801314.md) | 150 | `result-track:b7c4ee03db0c2337498013146d6c819fd298f622ff832194d7aed488b88048f9` |
| 19 | `theorem` | [no_trivial_coefficient_decoder](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/no-trivial-coefficient-decoder--43b88d80c7907d4abcb83b28.md) | 167 | `result-track:43b88d80c7907d4abcb83b2870247c33f1091950ec559b6ffa4c16873a88c945` |
| 20 | `def` | [scalarFiber](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/scalarfiber--34340321c4af77967000f037.md) | 180 | `declaration-track:34340321c4af77967000f0371868bcf9e97afd1a62bcfed98675d6f54010201f` |
| 21 | `theorem` | [scalarFiber_sum](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/scalarfiber-sum--71ca4abf1e607ed0e3a2971f.md) | 182 | `result-track:71ca4abf1e607ed0e3a2971f293615c567bc0018c5989bcb0ea0ece7f2d1c909` |
| 22 | `theorem` | [scalarFiber_positive_total](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/scalarfiber-positive-total--3005290e18976cabb998a80e.md) | 194 | `result-track:3005290e18976cabb998a80ebaea24c39df872ae023b4ece201aa03be6e730c1` |
| 23 | `theorem` | [scalarFiber_negative_trivial](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/scalarfiber-negative-trivial--35ac85af83a6ceb82912837b.md) | 201 | `result-track:35ac85af83a6ceb82912837b1745b36c6ef1bd00fbe825a4a04c18348bbbbdd7` |
| 24 | `theorem` | [scalarFiber_positive_nontrivial](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/scalarfiber-positive-nontrivial--fb7bbae48bae901080cc3fd0.md) | 204 | `result-track:fb7bbae48bae901080cc3fd0189baded53b9e46e24aa47a374c0d1e1a853ee98` |
| 25 | `theorem` | [positive_total_not_fiberwise](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variantbde136e71604c2064ce80fa9c7a740c10dd7e4970bfbdfc7f720d563d3e5cb59.lean/declarations/positive-total-not-fiberwise--db5f5dfd595c5c710681151e.md) | 209 | `result-track:db5f5dfd595c5c710681151e1b7a3f0254f8d9ac9900afcc28ee1cd40cdd00bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
