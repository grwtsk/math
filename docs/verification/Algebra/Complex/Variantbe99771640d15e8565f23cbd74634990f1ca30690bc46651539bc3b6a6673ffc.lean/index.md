# Verification target: GRWTSK.Algebra.Complex.Variantbe99771640d15e8565f23cbd74634990f1ca30690bc46651539bc3b6a6673ffc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "044c092cf0985c99dc005cf0993ddf9ed818d129",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Complex/Variantbe99771640d15e8565f23cbd74634990f1ca30690bc46651539bc3b6a6673ffc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Complex/Variantbe99771640d15e8565f23cbd74634990f1ca30690bc46651539bc3b6a6673ffc.lean/index.md) · [Full source](../../../../mathematics/Algebra/Complex/Variantbe99771640d15e8565f23cbd74634990f1ca30690bc46651539bc3b6a6673ffc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `044c092cf0985c99dc005cf0993ddf9ed818d129`.

Source path: `GRWTSK/Algebra/Complex/Variantbe99771640d15e8565f23cbd74634990f1ca30690bc46651539bc3b6a6673ffc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Complex/Variantbe99771640d15e8565f23cbd74634990f1ca30690bc46651539bc3b6a6673ffc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Module` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Trace.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Algebra.leftMulMatrix_complex](../../../../mathematics/Algebra/Complex/Variantbe99771640d15e8565f23cbd74634990f1ca30690bc46651539bc3b6a6673ffc.lean/declarations/algebra-leftmulmatrix-complex--8d1288d55e22af3c0c697208.md) | 23 | `result-track:8d1288d55e22af3c0c697208f97b433b3e0f4bdc776d9c53b0306430b1ce2375` |
| 2 | `theorem` | [Algebra.trace_complex_apply](../../../../mathematics/Algebra/Complex/Variantbe99771640d15e8565f23cbd74634990f1ca30690bc46651539bc3b6a6673ffc.lean/declarations/algebra-trace-complex-apply--909e2425182b09007c8b04ce.md) | 36 | `result-track:909e2425182b09007c8b04ce87b8dd5dff86ab9fa8e195bd0baaf1e5e937a81d` |
| 3 | `theorem` | [Algebra.norm_complex_apply](../../../../mathematics/Algebra/Complex/Variantbe99771640d15e8565f23cbd74634990f1ca30690bc46651539bc3b6a6673ffc.lean/declarations/algebra-norm-complex-apply--f6d66cc639793d19ae7fff23.md) | 41 | `result-track:f6d66cc639793d19ae7fff23201ea3c1e752d1af75bb23ffbecda4b88e6ae16d` |
| 4 | `theorem` | [Algebra.norm_complex_eq](../../../../mathematics/Algebra/Complex/Variantbe99771640d15e8565f23cbd74634990f1ca30690bc46651539bc3b6a6673ffc.lean/declarations/algebra-norm-complex-eq--1910267a724344a5e30b0a5d.md) | 46 | `result-track:1910267a724344a5e30b0a5d88f9e9ab924f4b9b6160b60027fef618096bee7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
