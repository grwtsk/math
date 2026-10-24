# Verification target: GRWTSK.Algebra.Invariant.Variantd7f8b8f368c1fbe93f4c10a103b163aa31c03b4f0082614c7a69b01264167827

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5f597b7b0206068942c9520a64e3d271c2d5c03",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Invariant/Variantd7f8b8f368c1fbe93f4c10a103b163aa31c03b4f0082614c7a69b01264167827.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Invariant/Variantd7f8b8f368c1fbe93f4c10a103b163aa31c03b4f0082614c7a69b01264167827.lean/index.md) · [Full source](../../../../mathematics/Algebra/Invariant/Variantd7f8b8f368c1fbe93f4c10a103b163aa31c03b4f0082614c7a69b01264167827.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5f597b7b0206068942c9520a64e3d271c2d5c03`.

Source path: `GRWTSK/Algebra/Invariant/Variantd7f8b8f368c1fbe93f4c10a103b163aa31c03b4f0082614c7a69b01264167827.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Invariant/Variantd7f8b8f368c1fbe93f4c10a103b163aa31c03b4f0082614c7a69b01264167827.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.GroupAction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Subring.Pointwise` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsInvariantSubring](../../../../mathematics/Algebra/Invariant/Variantd7f8b8f368c1fbe93f4c10a103b163aa31c03b4f0082614c7a69b01264167827.lean/declarations/isinvariantsubring--b771f725a9235597b73064e0.md) | 33 | `declaration-track:b771f725a9235597b73064e0a9a63a62fc25c3ab9e8dda4dee87495913665d2f` |
| 2 | `instance` | [IsInvariantSubring.toMulSemiringAction](../../../../mathematics/Algebra/Invariant/Variantd7f8b8f368c1fbe93f4c10a103b163aa31c03b4f0082614c7a69b01264167827.lean/declarations/isinvariantsubring-tomulsemiringaction--162c259208300d0edccc1d6e.md) | 37 | `declaration-track:162c259208300d0edccc1d6ea211e13bca1f7417a690a708c7428b21c7833f93` |
| 3 | `def` | [IsInvariantSubring.subtypeHom](../../../../mathematics/Algebra/Invariant/Variantd7f8b8f368c1fbe93f4c10a103b163aa31c03b4f0082614c7a69b01264167827.lean/declarations/isinvariantsubring-subtypehom--721b542736c3462f7621e480.md) | 59 | `declaration-track:721b542736c3462f7621e48039f4f3eb82ff391333f48d2ebe10f601d0133d1f` |
| 4 | `theorem` | [IsInvariantSubring.coe_subtypeHom](../../../../mathematics/Algebra/Invariant/Variantd7f8b8f368c1fbe93f4c10a103b163aa31c03b4f0082614c7a69b01264167827.lean/declarations/isinvariantsubring-coe-subtypehom--b5127b99720b880331bf5623.md) | 65 | `result-track:b5127b99720b880331bf56238c53c3fe24d5f654c7d39777753280337450d366` |
| 5 | `theorem` | [IsInvariantSubring.coe_subtypeHom'](../../../../mathematics/Algebra/Invariant/Variantd7f8b8f368c1fbe93f4c10a103b163aa31c03b4f0082614c7a69b01264167827.lean/declarations/isinvariantsubring-coe-subtypehom--9ee992646378a9f3929edd32.md) | 71 | `result-track:9ee992646378a9f3929edd320e6a7c3f5568ab262d1017b700ab76f9300107f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
