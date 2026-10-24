# Verification target: GRWTSK.Algebra.Complex.Variantfaf76640948b29f388f62b7477513c7318491ee142c03fd57440c4d606cfd9e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8153cbdc4e18c6a16871bfa2e5595ded3f226793",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Complex/Variantfaf76640948b29f388f62b7477513c7318491ee142c03fd57440c4d606cfd9e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Complex/Variantfaf76640948b29f388f62b7477513c7318491ee142c03fd57440c4d606cfd9e6.lean/index.md) · [Full source](../../../../mathematics/Algebra/Complex/Variantfaf76640948b29f388f62b7477513c7318491ee142c03fd57440c4d606cfd9e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8153cbdc4e18c6a16871bfa2e5595ded3f226793`.

Source path: `GRWTSK/Algebra/Complex/Variantfaf76640948b29f388f62b7477513c7318491ee142c03fd57440c4d606cfd9e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Complex/Variantfaf76640948b29f388f62b7477513c7318491ee142c03fd57440c4d606cfd9e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Trace.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Algebra.leftMulMatrix_complex](../../../../mathematics/Algebra/Complex/Variantfaf76640948b29f388f62b7477513c7318491ee142c03fd57440c4d606cfd9e6.lean/declarations/algebra-leftmulmatrix-complex--852ada585b438a8596c50bab.md) | 15 | `result-track:852ada585b438a8596c50bab969f684b87f20ae8c549ee74cdbbc4388f5c4f17` |
| 2 | `theorem` | [Algebra.trace_complex_apply](../../../../mathematics/Algebra/Complex/Variantfaf76640948b29f388f62b7477513c7318491ee142c03fd57440c4d606cfd9e6.lean/declarations/algebra-trace-complex-apply--705eb1969ffa72ebe67d28e1.md) | 28 | `result-track:705eb1969ffa72ebe67d28e1248cc8b03c04f79807e9a70f484dae04c39fc5f3` |
| 3 | `theorem` | [Algebra.norm_complex_apply](../../../../mathematics/Algebra/Complex/Variantfaf76640948b29f388f62b7477513c7318491ee142c03fd57440c4d606cfd9e6.lean/declarations/algebra-norm-complex-apply--4562c160a46435a43fa2d0ff.md) | 33 | `result-track:4562c160a46435a43fa2d0ff00faa2c5cb1ab875cf094b3e0d7056bf219e593c` |
| 4 | `theorem` | [Algebra.norm_complex_eq](../../../../mathematics/Algebra/Complex/Variantfaf76640948b29f388f62b7477513c7318491ee142c03fd57440c4d606cfd9e6.lean/declarations/algebra-norm-complex-eq--b2042698cfdbebcbdb8db84e.md) | 38 | `result-track:b2042698cfdbebcbdb8db84ebd831bd751f70c1e22662b3056c96daa2976f4db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
