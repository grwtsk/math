# Verification target: GRWTSK.Algebra.GroupTheory.Lemmas.Variant310afce129b4a3a8a97c31c14ce21c931b6574111f4522d4247e5ad7ce322abb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ca8af1b4756c0b95d0511ea1842e5e67d751ae0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant310afce129b4a3a8a97c31c14ce21c931b6574111f4522d4247e5ad7ce322abb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant310afce129b4a3a8a97c31c14ce21c931b6574111f4522d4247e5ad7ce322abb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant310afce129b4a3a8a97c31c14ce21c931b6574111f4522d4247e5ad7ce322abb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ca8af1b4756c0b95d0511ea1842e5e67d751ae0`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Variant310afce129b4a3a8a97c31c14ce21c931b6574111f4522d4247e5ad7ce322abb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Variant310afce129b4a3a8a97c31c14ce21c931b6574111f4522d4247e5ad7ce322abb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.ZPowers.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Centralizer` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [range_zpowersHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant310afce129b4a3a8a97c31c14ce21c931b6574111f4522d4247e5ad7ce322abb.lean/declarations/range-zpowershom--7f0e19737b9e3740e9e8abd0.md) | 33 | `result-track:7f0e19737b9e3740e9e8abd0f337789a1af98380956dfee76eec5aa716d0fcca` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant310afce129b4a3a8a97c31c14ce21c931b6574111f4522d4247e5ad7ce322abb.lean/declarations/instance--d652d3f070397082aeaaa573.md) | 36 | `declaration-track:d652d3f070397082aeaaa573bad87700e9bdcd691ca7f0982a71463673933038` |
| 3 | `theorem` | [range_zmultiplesHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant310afce129b4a3a8a97c31c14ce21c931b6574111f4522d4247e5ad7ce322abb.lean/declarations/range-zmultipleshom--e6b42e0c802bcf8e1234b582.md) | 43 | `result-track:e6b42e0c802bcf8e1234b582659ba0e130da4c9b5e69b388c9fcbd6e8b93919a` |
| 4 | `theorem` | [intCast_mul_mem_zmultiples](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant310afce129b4a3a8a97c31c14ce21c931b6574111f4522d4247e5ad7ce322abb.lean/declarations/intcast-mul-mem-zmultiples--ac42e3a66a696a4d93e25384.md) | 51 | `result-track:ac42e3a66a696a4d93e25384cc9429a141b8d936a1d1960213e7eca17136d378` |
| 5 | `theorem` | [intCast_mem_zmultiples_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant310afce129b4a3a8a97c31c14ce21c931b6574111f4522d4247e5ad7ce322abb.lean/declarations/intcast-mem-zmultiples-one--c7c9340ae3c8632fee19dd8e.md) | 55 | `result-track:c7c9340ae3c8632fee19dd8e1a112a5dbdb640bf032cd500a1f00777e32a2af9` |
| 6 | `lemma` | [Int.range_castAddHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant310afce129b4a3a8a97c31c14ce21c931b6574111f4522d4247e5ad7ce322abb.lean/declarations/int-range-castaddhom--76e9df0f77da4cbeb2a6cd22.md) | 62 | `result-track:76e9df0f77da4cbeb2a6cd22b2d2d8a32694ba68b2702daf5238bfdbefcd602c` |
| 7 | `theorem` | [centralizer_closure](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant310afce129b4a3a8a97c31c14ce21c931b6574111f4522d4247e5ad7ce322abb.lean/declarations/centralizer-closure--18a3693d3e38a21f639aa249.md) | 72 | `result-track:18a3693d3e38a21f639aa249317cb91f0dcfabfc1c6c6b3d658d4c871ce947f0` |
| 8 | `theorem` | [center_eq_iInf](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant310afce129b4a3a8a97c31c14ce21c931b6574111f4522d4247e5ad7ce322abb.lean/declarations/center-eq-iinf--cfcbfbdfcfff8945d8f8fb07.md) | 81 | `result-track:cfcbfbdfcfff8945d8f8fb072bea21513ccc612eb9f12050d8b8a7202f726fa2` |
| 9 | `theorem` | [center_eq_infi'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant310afce129b4a3a8a97c31c14ce21c931b6574111f4522d4247e5ad7ce322abb.lean/declarations/center-eq-infi--db0211bb69bd3cd59918b351.md) | 86 | `result-track:db0211bb69bd3cd59918b351775c8e178b350a6645593bbfde3d134687b66bf9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
