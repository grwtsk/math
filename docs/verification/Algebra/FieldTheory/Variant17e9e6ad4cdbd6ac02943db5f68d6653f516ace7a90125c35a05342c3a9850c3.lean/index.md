# Verification target: GRWTSK.Algebra.Field.Variant17e9e6ad4cdbd6ac02943db5f68d6653f516ace7a90125c35a05342c3a9850c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb14e51fb90676c914675402e5ea1eefdef2b771",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variant17e9e6ad4cdbd6ac02943db5f68d6653f516ace7a90125c35a05342c3a9850c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FieldTheory/Variant17e9e6ad4cdbd6ac02943db5f68d6653f516ace7a90125c35a05342c3a9850c3.lean/index.md) · [Full source](../../../../mathematics/Algebra/FieldTheory/Variant17e9e6ad4cdbd6ac02943db5f68d6653f516ace7a90125c35a05342c3a9850c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb14e51fb90676c914675402e5ea1eefdef2b771`.

Source path: `GRWTSK/Algebra/Field/Variant17e9e6ad4cdbd6ac02943db5f68d6653f516ace7a90125c35a05342c3a9850c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variant17e9e6ad4cdbd6ac02943db5f68d6653f516ace7a90125c35a05342c3a9850c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/FieldTheory/Variant17e9e6ad4cdbd6ac02943db5f68d6653f516ace7a90125c35a05342c3a9850c3.lean/declarations/instance--d1f5892b8b8dd82fdd13ab10.md) | 28 | `declaration-track:d1f5892b8b8dd82fdd13ab109d45740416c6682eac4d8ebd8f6d3d6d8852a3a6` |
| 2 | `theorem` | [mod_eq](../../../../mathematics/Algebra/FieldTheory/Variant17e9e6ad4cdbd6ac02943db5f68d6653f516ace7a90125c35a05342c3a9850c3.lean/declarations/mod-eq--73dd5183b04903d3b134f02c.md) | 41 | `result-track:73dd5183b04903d3b134f02c4cb25a4ababd74daa159b2b709f0db3265ea4c61` |
| 3 | `theorem` | [gcd_eq](../../../../mathematics/Algebra/FieldTheory/Variant17e9e6ad4cdbd6ac02943db5f68d6653f516ace7a90125c35a05342c3a9850c3.lean/declarations/gcd-eq--ffa196510f0ae87ea4d4e937.md) | 44 | `result-track:ffa196510f0ae87ea4d4e93716f70bca67592f330c7ee032f7733283ad43eea3` |
| 4 | `theorem` | [gcd_zero_eq](../../../../mathematics/Algebra/FieldTheory/Variant17e9e6ad4cdbd6ac02943db5f68d6653f516ace7a90125c35a05342c3a9850c3.lean/declarations/gcd-zero-eq--0f59298001abf2b91ab47674.md) | 49 | `result-track:0f59298001abf2b91ab47674adb26d1882d6eeaf8a947344e94fc130a9024140` |
| 5 | `theorem` | [gcd_eq_of_ne](../../../../mathematics/Algebra/FieldTheory/Variant17e9e6ad4cdbd6ac02943db5f68d6653f516ace7a90125c35a05342c3a9850c3.lean/declarations/gcd-eq-of-ne--557a751d9a3b70cd0b87f406.md) | 53 | `result-track:557a751d9a3b70cd0b87f4063906bf56b90e65bf6e0e144c655a5cf89c98ea3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
