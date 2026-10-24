# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteCharacterGuardAttempt04.Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08c71cce4c0f1d35bba8fd2de67d5eccac5beab8",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08c71cce4c0f1d35bba8fd2de67d5eccac5beab8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientMap](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/coefficientmap--9ac54e6795ed4d1606e1814b.md) | 14 | `declaration-track:9ac54e6795ed4d1606e1814bb83f28ff7f1a3827f0e4bf2c002e056b48eca735` |
| 2 | `theorem` | [coefficient_eq_expect](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/coefficient-eq-expect--e1b090558920e90597fa9d76.md) | 20 | `result-track:e1b090558920e90597fa9d7695298ff4bb25b69ebf8099596126f28a6a418d65` |
| 3 | `theorem` | [trivial_coefficient_eq_mean](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/trivial-coefficient-eq-mean--a5477ef3c1896d020e872e85.md) | 25 | `result-track:a5477ef3c1896d020e872e857e6b12f3cc6f7f589a5f13c18924786e9474c9c1` |
| 4 | `theorem` | [coefficient_character](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/coefficient-character--a32e61a81931e42d619d7145.md) | 30 | `result-track:a32e61a81931e42d619d7145d199bf6b2be6ca209ab2be70a2975ece86fe5329` |
| 5 | `theorem` | [coefficient_eq_basis_repr](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/coefficient-eq-basis-repr--9c6f78b5d85e770df331c120.md) | 35 | `result-track:9c6f78b5d85e770df331c120f014e90987e2d7c09eccb84d556a0db4fa1c4601` |
| 6 | `theorem` | [complete_reconstruction](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/complete-reconstruction--39359d4cc3fef56119f01435.md) | 43 | `result-track:39359d4cc3fef56119f0143560d5f7f3b8250898df627f3d3ec5bdb921155e48` |
| 7 | `def` | [incompleteReconstruction](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/incompletereconstruction--b2ee5901ff8de112b3ce6f87.md) | 49 | `declaration-track:b2ee5901ff8de112b3ce6f8715e480cb5ef1e28cb74ea8a529470355aa72362f` |
| 8 | `theorem` | [reconstruction_split](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/reconstruction-split--4951323587c034df0efd3a3f.md) | 54 | `result-track:4951323587c034df0efd3a3fe96d9a8ca47d3924669ea8e77da42c86b97d9ca4` |
| 9 | `theorem` | [incomplete_eq_self_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/incomplete-eq-self-iff--fc5d05f73ee2f340fdfacec0.md) | 68 | `result-track:fc5d05f73ee2f340fdfacec0f51599015d3308e55f39fa15d76a98111547052b` |
| 10 | `def` | [nontrivialSpan](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/nontrivialspan--001029081e26c8dd6786415f.md) | 80 | `declaration-track:001029081e26c8dd6786415f84e9e6849abbad7ebf9f87949282a199700ea67d` |
| 11 | `theorem` | [nontrivialSpan_le_trivial_kernel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/nontrivialspan-le-trivial-kernel--b3de3d559c8b6b32b880691d.md) | 83 | `result-track:b3de3d559c8b6b32b880691d5f9ed597377c4157489abc87c20e63e4c94b8077` |
| 12 | `theorem` | [trivial_not_mem_nontrivialSpan](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/trivial-not-mem-nontrivialspan--227592825b174bd8ff819b35.md) | 92 | `result-track:227592825b174bd8ff819b35062622ab4367ea8030ccb5cf92d857a2f9dd57c9` |
| 13 | `theorem` | [mem_nontrivialSpan_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/mem-nontrivialspan-iff--7e1093f561721825b93a43ac.md) | 104 | `result-track:7e1093f561721825b93a43ac91f655d97adff2eedd4498f22fa03adb63993b83` |
| 14 | `theorem` | [nontrivialSpan_eq_trivial_kernel](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/nontrivialspan-eq-trivial-kernel--cd6f1dd97a5794a677c114ba.md) | 119 | `result-track:cd6f1dd97a5794a677c114bac3492c6dfea68f7ef528e7b5900ea495e545d0f6` |
| 15 | `theorem` | [coefficient_constant](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/coefficient-constant--58c69bb3238ffceb53f92527.md) | 124 | `result-track:58c69bb3238ffceb53f925270de5e859c8537e64ec811731dff24577ffdc62b1` |
| 16 | `def` | [nontrivialStack](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/nontrivialstack--7c3e130e24f4af633e2bfd7d.md) | 133 | `declaration-track:7c3e130e24f4af633e2bfd7dc00e62afc276227619f24b0ed49676ad3180400d` |
| 17 | `theorem` | [nontrivialStack_add_constant](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/nontrivialstack-add-constant--090a8f2837da000dc46f2cee.md) | 136 | `result-track:090a8f2837da000dc46f2cee4e6544bd4b980069ad2a18a8c04f20b2d5e21f48` |
| 18 | `theorem` | [nontrivialStack_eq_iff_constant_difference](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/nontrivialstack-eq-iff-constant-difference--29f8fbcb8728d7e0b0f61da1.md) | 142 | `result-track:29f8fbcb8728d7e0b0f61da12fbd51720bc059100b13f14ebf1e31d68a5edf9e` |
| 19 | `theorem` | [no_trivial_coefficient_decoder](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/no-trivial-coefficient-decoder--65e411596cf2b036b826de51.md) | 159 | `result-track:65e411596cf2b036b826de517b07546f13ff5ae978ae56b05f4ae46a846cab44` |
| 20 | `def` | [scalarFiber](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/scalarfiber--ef1adfafa7e094e2067ef887.md) | 172 | `declaration-track:ef1adfafa7e094e2067ef887d0339043748773b98ac6950479631353daaaf22c` |
| 21 | `theorem` | [scalarFiber_sum](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/scalarfiber-sum--1030f9838e5911fc7f4ca756.md) | 174 | `result-track:1030f9838e5911fc7f4ca756dc912e1ea4c0db91bebd2dae6af6cbab2443b573` |
| 22 | `theorem` | [scalarFiber_positive_total](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/scalarfiber-positive-total--cd4b66499fb937ba7b898036.md) | 186 | `result-track:cd4b66499fb937ba7b8980363297842baaad16e73bf763b00b0a45df2fa35fe7` |
| 23 | `theorem` | [scalarFiber_negative_trivial](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/scalarfiber-negative-trivial--ae2e92fe83f154431e956413.md) | 193 | `result-track:ae2e92fe83f154431e956413a39f7e015849554799a476abb501538dec32263e` |
| 24 | `theorem` | [scalarFiber_positive_nontrivial](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/scalarfiber-positive-nontrivial--8ee6c9b093da5d2a4bb7c36f.md) | 196 | `result-track:8ee6c9b093da5d2a4bb7c36fb01b0072240a972ab764c188443311ab2cfa3d0e` |
| 25 | `theorem` | [positive_total_not_fiberwise](../../../../../mathematics/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt04/Variant78be24dd33f69ce175d123ae7ee1f94027f26672e51e36995981b346c6bff5e4.lean/declarations/positive-total-not-fiberwise--d7155f6adb98a0226afa8cac.md) | 201 | `result-track:d7155f6adb98a0226afa8cac066b76c101218be40ec19f3c013f2ead1c288fee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
