# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.ReflectedStripControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d9700880105146273ed098162392ecf81d08f50",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/ReflectedStripControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ReflectedStripControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ReflectedStripControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d9700880105146273ed098162392ecf81d08f50`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/ReflectedStripControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/ReflectedStripControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ReflectedStripBudget`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedStripBudget.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reflected_interval](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ReflectedStripControls.lean/declarations/reflected-interval--58cd804d20364cdad59c2ee5.md) | 21 | `result-track:58cd804d20364cdad59c2ee5cfa3d4b485186c6c3a924e222a620a449160666e` |
| 2 | `theorem` | [gamma_disk_endpoints](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ReflectedStripControls.lean/declarations/gamma-disk-endpoints--a8b081fd5641e609a86a98e9.md) | 26 | `result-track:a8b081fd5641e609a86a98e9e66df6dc7c5e98b92092412aa73305bda49baf75` |
| 3 | `theorem` | [cauchy_radii](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ReflectedStripControls.lean/declarations/cauchy-radii--01e639d23dd9fb8b3890be59.md) | 30 | `result-track:01e639d23dd9fb8b3890be5918c12c3d5ae96079bce0c122fab2968329437e68` |
| 4 | `theorem` | [height_budget_even](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ReflectedStripControls.lean/declarations/height-budget-even--cb112b5df24dbab8d0b9e829.md) | 34 | `result-track:cb112b5df24dbab8d0b9e829725fddcd672eb60fb78bdf4886436be7f8a5daef` |
| 5 | `theorem` | [anchor_floor_positive](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ReflectedStripControls.lean/declarations/anchor-floor-positive--62108b5e127d58fa41dc70fe.md) | 38 | `result-track:62108b5e127d58fa41dc70fe1972a7dbcb0205e6d7cd38bb518bef3e6e15c5de` |
| 6 | `theorem` | [zero_height_excluded](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ReflectedStripControls.lean/declarations/zero-height-excluded--949830925f5c9f24cf8f029e.md) | 43 | `result-track:949830925f5c9f24cf8f029e6948f37e5af957805f311004f6eee259b9a5d043` |
| 7 | `theorem` | [gamma_zero_excluded](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ReflectedStripControls.lean/declarations/gamma-zero-excluded--851df77b92849325b84859a4.md) | 46 | `result-track:851df77b92849325b84859a43b5db0aaed5c3815c4b4e7bd7784141828d609b1` |
| 8 | `theorem` | [height_budget_increment](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ReflectedStripControls.lean/declarations/height-budget-increment--8b469e148952e004d7fe6154.md) | 49 | `result-track:8b469e148952e004d7fe615489122d5b24b6fee361beb7de63170350a67e47dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
