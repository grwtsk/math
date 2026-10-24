# Verification target: GRWTSK.Algebra.LinearAlgebra.Exact.Variant9c6434559f402b5dbc4919cb93b6c9c506bee812e9daa2508cbb5d4fd46d0e70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f1220a2482bf3f8450ee4225ae4fabc767526c1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Exact/Variant9c6434559f402b5dbc4919cb93b6c9c506bee812e9daa2508cbb5d4fd46d0e70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9c6434559f402b5dbc4919cb93b6c9c506bee812e9daa2508cbb5d4fd46d0e70.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9c6434559f402b5dbc4919cb93b6c9c506bee812e9daa2508cbb5d4fd46d0e70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f1220a2482bf3f8450ee4225ae4fabc767526c1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Exact/Variant9c6434559f402b5dbc4919cb93b6c9c506bee812e9daa2508cbb5d4fd46d0e70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Exact/Variant9c6434559f402b5dbc4919cb93b6c9c506bee812e9daa2508cbb5d4fd46d0e70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LinearIndependent.linearIndependent_of_exact_of_retraction](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9c6434559f402b5dbc4919cb93b6c9c506bee812e9daa2508cbb5d4fd46d0e70.lean/declarations/linearindependent-linearindependent-of-exact-of-retraction--e2a5069a50cce16c96bdfa12.md) | 36 | `result-track:e2a5069a50cce16c96bdfa12c4fc9da2e5caad03f068d19563e4003962f8d135` |
| 2 | `lemma` | [top_le_span_of_aux](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9c6434559f402b5dbc4919cb93b6c9c506bee812e9daa2508cbb5d4fd46d0e70.lean/declarations/top-le-span-of-aux--999115c21440f5361d42434e.md) | 56 | `result-track:999115c21440f5361d42434eb60e39da133d1c97c1c1405da97bf3b977c10954` |
| 3 | `lemma` | [Submodule.top_le_span_of_exact_of_retraction](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9c6434559f402b5dbc4919cb93b6c9c506bee812e9daa2508cbb5d4fd46d0e70.lean/declarations/submodule-top-le-span-of-exact-of-retraction--2211638d6a6df69b21f2fb26.md) | 80 | `result-track:2211638d6a6df69b21f2fb26fcf915ffc1136113e8a87d52cd0768c8c33c0ff4` |
| 4 | `def` | [Basis.ofSplitExact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variant9c6434559f402b5dbc4919cb93b6c9c506bee812e9daa2508cbb5d4fd46d0e70.lean/declarations/basis-ofsplitexact--d3fe3a13250f41a2c0f539a8.md) | 95 | `declaration-track:d3fe3a13250f41a2c0f539a840e379b740433651d3420b50293867b610fbeae6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
