# Verification target: GRWTSK.Algebra.LinearAlgebra.Average.Varianta072eda675f5f0ed7c02a01b2c66c0a8144f543f3d870283a9137393c316d13f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c4aa2857c9424063cd65ca3e0515e3571d78c53",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Average/Varianta072eda675f5f0ed7c02a01b2c66c0a8144f543f3d870283a9137393c316d13f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Average/Varianta072eda675f5f0ed7c02a01b2c66c0a8144f543f3d870283a9137393c316d13f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Average/Varianta072eda675f5f0ed7c02a01b2c66c0a8144f543f3d870283a9137393c316d13f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c4aa2857c9424063cd65ca3e0515e3571d78c53`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Average/Varianta072eda675f5f0ed7c02a01b2c66c0a8144f543f3d870283a9137393c316d13f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Average/Varianta072eda675f5f0ed7c02a01b2c66c0a8144f543f3d870283a9137393c316d13f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.BirkhoffSum.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [birkhoffAverage](../../../../../mathematics/Algebra/LinearAlgebra/Average/Varianta072eda675f5f0ed7c02a01b2c66c0a8144f543f3d870283a9137393c316d13f.lean/declarations/birkhoffaverage--f280881576c5f02670e5533a.md) | 42 | `declaration-track:f280881576c5f02670e5533ae1f8d40fc3651363712c0bbb5622e81042664871` |
| 2 | `theorem` | [birkhoffAverage_zero](../../../../../mathematics/Algebra/LinearAlgebra/Average/Varianta072eda675f5f0ed7c02a01b2c66c0a8144f543f3d870283a9137393c316d13f.lean/declarations/birkhoffaverage-zero--d10234d6e4b682b1ffe8e48d.md) | 44 | `result-track:d10234d6e4b682b1ffe8e48dda60d7f2574227257ff40fe40696680cca579db8` |
| 3 | `theorem` | [birkhoffAverage_zero'](../../../../../mathematics/Algebra/LinearAlgebra/Average/Varianta072eda675f5f0ed7c02a01b2c66c0a8144f543f3d870283a9137393c316d13f.lean/declarations/birkhoffaverage-zero--7fcc97298590802adc309605.md) | 47 | `result-track:7fcc97298590802adc309605a28d51772abe15761181bd449441c717ceef8160` |
| 4 | `theorem` | [birkhoffAverage_one](../../../../../mathematics/Algebra/LinearAlgebra/Average/Varianta072eda675f5f0ed7c02a01b2c66c0a8144f543f3d870283a9137393c316d13f.lean/declarations/birkhoffaverage-one--dc5c3bdeb0a9ceff63c8601e.md) | 50 | `result-track:dc5c3bdeb0a9ceff63c8601e0b67448f68357ae5c766d5cf37441f59e920a924` |
| 5 | `theorem` | [birkhoffAverage_one'](../../../../../mathematics/Algebra/LinearAlgebra/Average/Varianta072eda675f5f0ed7c02a01b2c66c0a8144f543f3d870283a9137393c316d13f.lean/declarations/birkhoffaverage-one--50c52f44eed31c97ff5b26e6.md) | 54 | `result-track:50c52f44eed31c97ff5b26e6686c08376f1320cd414a80a1132401772d357702` |
| 6 | `theorem` | [map_birkhoffAverage](../../../../../mathematics/Algebra/LinearAlgebra/Average/Varianta072eda675f5f0ed7c02a01b2c66c0a8144f543f3d870283a9137393c316d13f.lean/declarations/map-birkhoffaverage--f385d6a898d6e32da74edd93.md) | 57 | `result-track:f385d6a898d6e32da74edd93bfc6ba1a19cb25fcc4a9a94ee49e9b0b92156d40` |
| 7 | `theorem` | [birkhoffAverage_congr_ring](../../../../../mathematics/Algebra/LinearAlgebra/Average/Varianta072eda675f5f0ed7c02a01b2c66c0a8144f543f3d870283a9137393c316d13f.lean/declarations/birkhoffaverage-congr-ring--924322dfb2eced7bab3009a9.md) | 63 | `result-track:924322dfb2eced7bab3009a9f369868d865efaf7561f3f78f3de7a8f9f3474d5` |
| 8 | `theorem` | [birkhoffAverage_congr_ring'](../../../../../mathematics/Algebra/LinearAlgebra/Average/Varianta072eda675f5f0ed7c02a01b2c66c0a8144f543f3d870283a9137393c316d13f.lean/declarations/birkhoffaverage-congr-ring--fe7924eedc0d40abddf07b17.md) | 68 | `result-track:fe7924eedc0d40abddf07b1724a5b812860529a3b16705e2959a05702213df7d` |
| 9 | `theorem` | [Function.IsFixedPt.birkhoffAverage_eq](../../../../../mathematics/Algebra/LinearAlgebra/Average/Varianta072eda675f5f0ed7c02a01b2c66c0a8144f543f3d870283a9137393c316d13f.lean/declarations/function-isfixedpt-birkhoffaverage-eq--0b195410aac59f3152aa4db0.md) | 72 | `result-track:0b195410aac59f3152aa4db01b25a57ebf884872aac881596e898ddcd63ff45c` |
| 10 | `theorem` | [birkhoffAverage_apply_sub_birkhoffAverage](../../../../../mathematics/Algebra/LinearAlgebra/Average/Varianta072eda675f5f0ed7c02a01b2c66c0a8144f543f3d870283a9137393c316d13f.lean/declarations/birkhoffaverage-apply-sub-birkhoffaverage--8d1e7b317c79813d216fe4ea.md) | 82 | `result-track:8d1e7b317c79813d216fe4eadffc829de0ecb07bd740295365567b5f1c42402a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
