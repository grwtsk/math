# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Perm.Variantf450a6492890d91f16b0504a1ef83b4eae62687816cfd099004cf063999bfaff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45a60f08a7e24f181413414bc6769d260752b044",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantf450a6492890d91f16b0504a1ef83b4eae62687816cfd099004cf063999bfaff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantf450a6492890d91f16b0504a1ef83b4eae62687816cfd099004cf063999bfaff.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantf450a6492890d91f16b0504a1ef83b4eae62687816cfd099004cf063999bfaff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45a60f08a7e24f181413414bc6769d260752b044`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantf450a6492890d91f16b0504a1ef83b4eae62687816cfd099004cf063999bfaff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantf450a6492890d91f16b0504a1ef83b4eae62687816cfd099004cf063999bfaff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.TakeDrop` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.List.Perm` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [set_set_perm'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantf450a6492890d91f16b0504a1ef83b4eae62687816cfd099004cf063999bfaff.lean/declarations/set-set-perm--faa649d848d1cbdbb12d81e1.md) | 24 | `result-track:faa649d848d1cbdbb12d81e13479643b67a0a2280b841cf0194215a6814bbda4` |
| 2 | `theorem` | [set_set_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantf450a6492890d91f16b0504a1ef83b4eae62687816cfd099004cf063999bfaff.lean/declarations/set-set-perm--8296c748b6a37d934deba5cc.md) | 46 | `result-track:8296c748b6a37d934deba5cc54a836caf7104eca22b43da7db34e7fc3a3c6ced` |
| 3 | `theorem` | [take_of_getElem?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantf450a6492890d91f16b0504a1ef83b4eae62687816cfd099004cf063999bfaff.lean/declarations/take-of-getelem--79127ccc2a3d057643c8f6a0.md) | 68 | `result-track:79127ccc2a3d057643c8f6a076f4fa0d9ed0d840eab9886fb324cc49bb240cdd` |
| 4 | `theorem` | [drop_of_getElem?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantf450a6492890d91f16b0504a1ef83b4eae62687816cfd099004cf063999bfaff.lean/declarations/drop-of-getelem--d36245fa397e21225d0538de.md) | 75 | `result-track:d36245fa397e21225d0538de48095fcf1339d1968d12d8c62f55967f2c6dadd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
