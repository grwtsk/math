# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPrimitiveStep

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de72f7f4170050e3954062180617a677a7cd7f1b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de72f7f4170050e3954062180617a677a7cd7f1b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripQuarticPrimitive`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundedKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/declarations/boundedkernel--1a542216d3406c2c08d15664.md) | 25 | `declaration-track:1a542216d3406c2c08d15664117e3d9433fa3031a734193ecc18f426c304a8ee` |
| 2 | `def` | [integrand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/declarations/integrand--c31230bc72331338ac9a9a7a.md) | 34 | `declaration-track:c31230bc72331338ac9a9a7aa15651e758c84c63fad8633aa1c45e148bfd696d` |
| 3 | `def` | [tail](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/declarations/tail--9bf9e2f127d77175a60f0a68.md) | 35 | `declaration-track:9bf9e2f127d77175a60f0a686e232d4a4008650a39628c42c88474d71f2eb3fc` |
| 4 | `lemma` | [integrand_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/declarations/integrand-integrable--d93aa11108f6f3084df74856.md) | 37 | `result-track:d93aa11108f6f3084df74856e92838d42c94b7ec1d34a1726b2766448aa879fe` |
| 5 | `theorem` | [tail_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/declarations/tail-norm-le--16b27d2fc24b0e4fff7ce8b4.md) | 55 | `result-track:16b27d2fc24b0e4fff7ce8b44f0258e8c1696bf45b0a7960fc24209faa6a19e5` |
| 6 | `structure` | [CellPrimitive](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/declarations/cellprimitive--fa0b41da3a2456775b769020.md) | 79 | `declaration-track:fa0b41da3a2456775b769020869e9010bb519e3554c9e25c06307615dd54d9a8` |
| 7 | `lemma` | [cell_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/declarations/cell-identity--c1a7b8e5da61eff8d020eed7.md) | 94 | `result-track:c1a7b8e5da61eff8d020eed7925ed864ea004265312ae6ee0cb308cc0b87e95c` |
| 8 | `lemma` | [finite_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/declarations/finite-identity--b29f99800eb031f2cdd5d35c.md) | 138 | `result-track:b29f99800eb031f2cdd5d35c7b59dc9badfba717518abe89fbea664a345bc741` |
| 9 | `theorem` | [value_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/declarations/value-identity--049c4682fa50ef55d15d98d0.md) | 159 | `result-track:049c4682fa50ef55d15d98d002c9a38772e174d0314c959fba37696ea26625a6` |
| 10 | `theorem` | [integer_tail_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/declarations/integer-tail-identity--68f7301aa640b64ec59548c9.md) | 202 | `result-track:68f7301aa640b64ec59548c945a8fb968cc091a77bc7d1272825b77b9aba5841` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
