# Verification target: GRWTSK.Algebra.LinearAlgebra.QuantitativeGapSchur.Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6372b598e009d9b5e682d1b50f3bdb5a0895ab2c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/QuantitativeGapSchur/Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6372b598e009d9b5e682d1b50f3bdb5a0895ab2c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/QuantitativeGapSchur/Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/QuantitativeGapSchur/Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.QuantitativeGap` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.FeshbachHermitian` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [shear_inverse_square](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6.lean/declarations/shear-inverse-square--2e0efd3d9ce85a5efa317700.md) | 34 | `result-track:2e0efd3d9ce85a5efa3177000aab64060f4787ef595a033f20beaba29d70a237` |
| 2 | `theorem` | [completion_coercive](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6.lean/declarations/completion-coercive--6d259e00eb58c253086dbc64.md) | 57 | `result-track:6d259e00eb58c253086dbc6493fa53bbe2f1a8c1ca62a6e476b2529e0d8761b4` |
| 3 | `def` | [hermitianEnergy](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6.lean/declarations/hermitianenergy--d7015bbc1ea1bcd979e761eb.md) | 86 | `declaration-track:d7015bbc1ea1bcd979e761eb4ecad952887f033cb1c242c5a2e1225dbc8dbc80` |
| 4 | `theorem` | [hermitianEnergy_congruence](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6.lean/declarations/hermitianenergy-congruence--018299facef6e9d1654b09bd.md) | 91 | `result-track:018299facef6e9d1654b09bde700d9a9c4ee2ce2a2b1947a03c1717883a0187a` |
| 5 | `theorem` | [hermitianEnergy_one](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6.lean/declarations/hermitianenergy-one--3f8f68185fd168f68bb94f7c.md) | 99 | `result-track:3f8f68185fd168f68bb94f7cd18d2606d8683c2fb68d23120935052455f44c5b` |
| 6 | `def` | [normalizedCoupling](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6.lean/declarations/normalizedcoupling--76e2d2c1594b2a1fcaad4447.md) | 110 | `declaration-track:76e2d2c1594b2a1fcaad4447ac9e039fc693ddf0a9f3e8e29a752d6e689124d1` |
| 7 | `theorem` | [coupling_eq_normalized](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6.lean/declarations/coupling-eq-normalized--04c4848c9e22d8c9fa201d87.md) | 115 | `result-track:04c4848c9e22d8c9fa201d879951d013112f467290108d0b8d34165206e34fa4` |
| 8 | `theorem` | [normalized_margin](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6.lean/declarations/normalized-margin--735840625e64185642f3d376.md) | 125 | `result-track:735840625e64185642f3d37699aeb5cf62914f70aba1e0ab92daf71c396bbac0` |
| 9 | `theorem` | [schur_margin](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6.lean/declarations/schur-margin--5b469cab1383b76a9f0582b5.md) | 143 | `result-track:5b469cab1383b76a9f0582b5d515bd6a6e5ce5a6e4ea323c7dd6982fb1841460` |
| 10 | `theorem` | [feshbach_coercive](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6.lean/declarations/feshbach-coercive--16d88be970d18c595b8782ab.md) | 160 | `result-track:16d88be970d18c595b8782ab642e33ee9af701a9df9faf8aa675064d0cc229b5` |
| 11 | `theorem` | [normalized_feshbach_coercive](../../../../../mathematics/Algebra/LinearAlgebra/QuantitativeGapSchur/Variantb53266c80422ef2fae2f55e79517ee25451da3debac82667b527f50334c316e6.lean/declarations/normalized-feshbach-coercive--cb4170ccfd7385a4de7de45d.md) | 194 | `result-track:cb4170ccfd7385a4de7de45db3c64825b8a0b7ed4af2354f31067402979656c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
