# Verification target: GRWTSK.Algebra.UniversalAlgebra.Abelian.Variantb2c9f155044234241c29bf036bd6f70aac8eca119422e626422d9ef5083ef3cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89bf6054a50ccded44dc607a80100f92869a5202",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Abelian/Variantb2c9f155044234241c29bf036bd6f70aac8eca119422e626422d9ef5083ef3cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Abelian/Variantb2c9f155044234241c29bf036bd6f70aac8eca119422e626422d9ef5083ef3cf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Abelian/Variantb2c9f155044234241c29bf036bd6f70aac8eca119422e626422d9ef5083ef3cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89bf6054a50ccded44dc607a80100f92869a5202`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Abelian/Variantb2c9f155044234241c29bf036bd6f70aac8eca119422e626422d9ef5083ef3cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Abelian/Variantb2c9f155044234241c29bf036bd6f70aac8eca119422e626422d9ef5083ef3cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.GroupCat.Abelian` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.GroupCat.FilteredColimits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CondensedAb](../../../../../mathematics/Algebra/UniversalAlgebra/Abelian/Variantb2c9f155044234241c29bf036bd6f70aac8eca119422e626422d9ef5083ef3cf.lean/declarations/condensedab--7f62e5964810141634c61f1b.md) | 33 | `declaration-track:7f62e5964810141634c61f1b1979c9919c8bc8212943cc289142e45caedaddcd` |
| 2 | `instance` | [CondensedAb.abelian](../../../../../mathematics/Algebra/UniversalAlgebra/Abelian/Variantb2c9f155044234241c29bf036bd6f70aac8eca119422e626422d9ef5083ef3cf.lean/declarations/condensedab-abelian--c01cf6e62acfd04b7c4c79bc.md) | 35 | `declaration-track:c01cf6e62acfd04b7c4c79bccdbc22b20198130a7ed74ef7b60a739cb694a66f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
