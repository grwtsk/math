# Verification target: GRWTSK.Algebra.GroupTheory.ClosureSwap.Variantc985c74c871116fe5ea12af6dca510fde62016c603679af8cf1f193c9e6767ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8304b756211edeb0885b98b3e664a6fb3021b11",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ClosureSwap/Variantc985c74c871116fe5ea12af6dca510fde62016c603679af8cf1f193c9e6767ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variantc985c74c871116fe5ea12af6dca510fde62016c603679af8cf1f193c9e6767ac.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variantc985c74c871116fe5ea12af6dca510fde62016c603679af8cf1f193c9e6767ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8304b756211edeb0885b98b3e664a6fb3021b11`.

Source path: `GRWTSK/Algebra/GroupTheory/ClosureSwap/Variantc985c74c871116fe5ea12af6dca510fde62016c603679af8cf1f193c9e6767ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ClosureSwap/Variantc985c74c871116fe5ea12af6dca510fde62016c603679af8cf1f193c9e6767ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Ker` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.FixedPoints` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Support` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finite_compl_fixedBy_closure_iff](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variantc985c74c871116fe5ea12af6dca510fde62016c603679af8cf1f193c9e6767ac.lean/declarations/finite-compl-fixedby-closure-iff--5aace25f55500eb735e3e616.md) | 33 | `result-track:5aace25f55500eb735e3e616d2f105449a487d88cbaac860f13e9975cdef915f` |
| 2 | `theorem` | [exists_smul_notMem_of_subset_orbit_closure](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variantc985c74c871116fe5ea12af6dca510fde62016c603679af8cf1f193c9e6767ac.lean/declarations/exists-smul-notmem-of-subset-orbit-closure--cb76da86470c9e21a8c95c84.md) | 42 | `result-track:cb76da86470c9e21a8c95c84e101a0ac0c5f48f12a0ea9f4036ae9cd9faf1965` |
| 3 | `theorem` | [finite_compl_fixedBy_swap](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variantc985c74c871116fe5ea12af6dca510fde62016c603679af8cf1f193c9e6767ac.lean/declarations/finite-compl-fixedby-swap--4b1aa39e30d18983cad76541.md) | 60 | `result-track:4b1aa39e30d18983cad76541a92843dba49c45c823b24a4d86b446513f8810b2` |
| 4 | `theorem` | [Equiv.Perm.IsSwap.finite_compl_fixedBy](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variantc985c74c871116fe5ea12af6dca510fde62016c603679af8cf1f193c9e6767ac.lean/declarations/equiv-perm-isswap-finite-compl-fixedby--2303f650883ed0c527ca2831.md) | 64 | `result-track:2303f650883ed0c527ca2831870d7ca28efdd967050bf4aca4164aade3558edd` |
| 5 | `theorem` | [SubmonoidClass.swap_mem_trans](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variantc985c74c871116fe5ea12af6dca510fde62016c603679af8cf1f193c9e6767ac.lean/declarations/submonoidclass-swap-mem-trans--fb4f74fb84c9ade2fb06c705.md) | 70 | `result-track:fb4f74fb84c9ade2fb06c7055b0cce0cdebd0010be7d3396e38bb39e0b8d50d9` |
| 6 | `theorem` | [swap_mem_closure_isSwap](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variantc985c74c871116fe5ea12af6dca510fde62016c603679af8cf1f193c9e6767ac.lean/declarations/swap-mem-closure-isswap--46014b6a56757d5b2799372a.md) | 82 | `result-track:46014b6a56757d5b2799372aa097e868bec57a0d1c1fdabfdb0d7d1289d47df6` |
| 7 | `theorem` | [mem_closure_isSwap](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variantc985c74c871116fe5ea12af6dca510fde62016c603679af8cf1f193c9e6767ac.lean/declarations/mem-closure-isswap--ddf25059928cb17a8ee3b1c6.md) | 100 | `result-track:ddf25059928cb17a8ee3b1c6e05610bf4ee48343813599766e7611d82ab2b12a` |
| 8 | `theorem` | [mem_closure_isSwap'](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variantc985c74c871116fe5ea12af6dca510fde62016c603679af8cf1f193c9e6767ac.lean/declarations/mem-closure-isswap--66b3df5caa4fb7a78588b297.md) | 125 | `result-track:66b3df5caa4fb7a78588b297b953e43b8bb2e9ee1edf700ee13b915e0238ddd5` |
| 9 | `theorem` | [closure_of_isSwap_of_isPretransitive](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variantc985c74c871116fe5ea12af6dca510fde62016c603679af8cf1f193c9e6767ac.lean/declarations/closure-of-isswap-of-ispretransitive--833e048b60fe77c59b85062f.md) | 135 | `result-track:833e048b60fe77c59b85062f66fdb076162b392178efde5edf83eee8d6ac15da` |
| 10 | `theorem` | [surjective_of_isSwap_of_isPretransitive](../../../../../mathematics/Algebra/GroupTheory/ClosureSwap/Variantc985c74c871116fe5ea12af6dca510fde62016c603679af8cf1f193c9e6767ac.lean/declarations/surjective-of-isswap-of-ispretransitive--c93b409ab7de1ee81bd0e07e.md) | 140 | `result-track:c93b409ab7de1ee81bd0e07ee91e42a97ba30c63ea0428fef5764a3b0a9d451e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
