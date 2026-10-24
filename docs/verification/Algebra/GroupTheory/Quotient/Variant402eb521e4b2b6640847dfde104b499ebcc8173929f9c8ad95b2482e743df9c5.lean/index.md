# Verification target: GRWTSK.Algebra.GroupTheory.Quotient.Variant402eb521e4b2b6640847dfde104b499ebcc8173929f9c8ad95b2482e743df9c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "186ce31606ef3e9f5bcb4217ef93369e651f97ef",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Quotient/Variant402eb521e4b2b6640847dfde104b499ebcc8173929f9c8ad95b2482e743df9c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant402eb521e4b2b6640847dfde104b499ebcc8173929f9c8ad95b2482e743df9c5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant402eb521e4b2b6640847dfde104b499ebcc8173929f9c8ad95b2482e743df9c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `186ce31606ef3e9f5bcb4217ef93369e651f97ef`.

Source path: `GRWTSK/Algebra/GroupTheory/Quotient/Variant402eb521e4b2b6640847dfde104b499ebcc8173929f9c8ad95b2482e743df9c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Quotient/Variant402eb521e4b2b6640847dfde104b499ebcc8173929f9c8ad95b2482e743df9c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.QuotientGroup` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zsmul_mem_zmultiples_iff_exists_sub_div](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant402eb521e4b2b6640847dfde104b499ebcc8173929f9c8ad95b2482e743df9c5.lean/declarations/zsmul-mem-zmultiples-iff-exists-sub-div--4469d81c265e2fe5432ac916.md) | 28 | `result-track:4469d81c265e2fe5432ac916316710ed3e227e59a4accdd14f57aa11c44fd12a` |
| 2 | `theorem` | [nsmul_mem_zmultiples_iff_exists_sub_div](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant402eb521e4b2b6640847dfde104b499ebcc8173929f9c8ad95b2482e743df9c5.lean/declarations/nsmul-mem-zmultiples-iff-exists-sub-div--0e40674282561cf47e5099a4.md) | 51 | `result-track:0e40674282561cf47e5099a4a5542ff741cbb485e94903529ad702647f6406ea` |
| 3 | `theorem` | [zmultiples_zsmul_eq_zsmul_iff](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant402eb521e4b2b6640847dfde104b499ebcc8173929f9c8ad95b2482e743df9c5.lean/declarations/zmultiples-zsmul-eq-zsmul-iff--5696ec8a3f07cd9524926749.md) | 63 | `result-track:5696ec8a3f07cd9524926749d3f254639d61e737050de9a5a946a9d78b636f83` |
| 4 | `theorem` | [zmultiples_nsmul_eq_nsmul_iff](../../../../../mathematics/Algebra/GroupTheory/Quotient/Variant402eb521e4b2b6640847dfde104b499ebcc8173929f9c8ad95b2482e743df9c5.lean/declarations/zmultiples-nsmul-eq-nsmul-iff--d2182f3949541692bd70a40c.md) | 76 | `result-track:d2182f3949541692bd70a40c9f94d903df5788e3f276cddcaa633bfd51cc2a98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
