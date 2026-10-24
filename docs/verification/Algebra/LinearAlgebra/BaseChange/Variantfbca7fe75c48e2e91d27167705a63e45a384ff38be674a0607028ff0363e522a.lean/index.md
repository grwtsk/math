# Verification target: GRWTSK.Algebra.LinearAlgebra.BaseChange.Variantfbca7fe75c48e2e91d27167705a63e45a384ff38be674a0607028ff0363e522a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f0471e5c35b7072aedc670118cd6a3a93a19c2a",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantfbca7fe75c48e2e91d27167705a63e45a384ff38be674a0607028ff0363e522a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantfbca7fe75c48e2e91d27167705a63e45a384ff38be674a0607028ff0363e522a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantfbca7fe75c48e2e91d27167705a63e45a384ff38be674a0607028ff0363e522a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f0471e5c35b7072aedc670118cd6a3a93a19c2a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantfbca7fe75c48e2e91d27167705a63e45a384ff38be674a0607028ff0363e522a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BaseChange/Variantfbca7fe75c48e2e91d27167705a63e45a384ff38be674a0607028ff0363e522a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Subfield.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mem_subfield_of_mul_eq_one_of_mem_subfield_right](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantfbca7fe75c48e2e91d27167705a63e45a384ff38be674a0607028ff0363e522a.lean/declarations/mem-subfield-of-mul-eq-one-of-mem-subfield-right--0c08b883c86f3bda22db4eca.md) | 37 | `result-track:0c08b883c86f3bda22db4eca55443736c0b2a9af74a56bcecaa718d1676f0670` |
| 2 | `lemma` | [mem_subfield_of_mul_eq_one_of_mem_subfield_left](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Variantfbca7fe75c48e2e91d27167705a63e45a384ff38be674a0607028ff0363e522a.lean/declarations/mem-subfield-of-mul-eq-one-of-mem-subfield-left--8c9ad2f19e89ab1fcfdd4d99.md) | 59 | `result-track:8c9ad2f19e89ab1fcfdd4d99b7234de07b549a6ca1e3dcd64a9a576077cba313` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
