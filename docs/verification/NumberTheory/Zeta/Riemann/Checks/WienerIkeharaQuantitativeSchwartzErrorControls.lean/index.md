# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.WienerIkeharaQuantitativeSchwartzErrorControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "272d642cb2b4cb07f7b5d6b46c98ab767ffa1735",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQuantitativeSchwartzErrorControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQuantitativeSchwartzErrorControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQuantitativeSchwartzErrorControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `272d642cb2b4cb07f7b5d6b46c98ab767ffa1735`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQuantitativeSchwartzErrorControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQuantitativeSchwartzErrorControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaQuantitativeSchwartzError`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [wienerSchwartz_control_continuous](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQuantitativeSchwartzErrorControls.lean/declarations/wienerschwartz-control-continuous--9c960371a6e190341402fd37.md) | 22 | `result-track:9c960371a6e190341402fd3710f913e622f519c7e6dfbb992368288004b1a4be` |
| 2 | `theorem` | [wienerSchwartz_control_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQuantitativeSchwartzErrorControls.lean/declarations/wienerschwartz-control-zero--59c1a88eb176e20695a69892.md) | 27 | `result-track:59c1a88eb176e20695a69892ee65927bb4659e7e81f5ad03edb0d43aec811d90` |
| 3 | `theorem` | [wienerSchwartz_actual_Fourier_decay](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQuantitativeSchwartzErrorControls.lean/declarations/wienerschwartz-actual-fourier-decay--fd661b5666337fad07ac2cce.md) | 33 | `result-track:fd661b5666337fad07ac2ccebc712ab79eb9fbcc8f44a9c228e30c6bf3294128` |
| 4 | `theorem` | [wienerSchwartz_decay_at_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQuantitativeSchwartzErrorControls.lean/declarations/wienerschwartz-decay-at-zero--2264c4aad79bdef4748a3e93.md) | 41 | `result-track:2264c4aad79bdef4748a3e936ca4ba553282725a14d4b11a28a4dcd1b5cea230` |
| 5 | `theorem` | [wienerSchwartz_actual_Lambda_arithmetic_uniform](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQuantitativeSchwartzErrorControls.lean/declarations/wienerschwartz-actual-lambda-arithmetic-uniform--d1cf22663ff0fbacf4a8df7e.md) | 49 | `result-track:d1cf22663ff0fbacf4a8df7e49b36e6fbd2bed58fdca1e9cba460c2c2825ef0e` |
| 6 | `theorem` | [wienerSchwartz_actual_pole_tail_uniform](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQuantitativeSchwartzErrorControls.lean/declarations/wienerschwartz-actual-pole-tail-uniform--634151c0ca7a2cf9885bfc68.md) | 58 | `result-track:634151c0ca7a2cf9885bfc6824b7c23a64ab3228102cdd2733bb94387d5a71a7` |
| 7 | `theorem` | [wienerSchwartz_actual_twopi_mass](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQuantitativeSchwartzErrorControls.lean/declarations/wienerschwartz-actual-twopi-mass--5c0cd4ce110f1bcd6335f0eb.md) | 66 | `result-track:5c0cd4ce110f1bcd6335f0eb17f1ea294259771052e9cdda93b061b4b668a225` |
| 8 | `theorem` | [wienerSchwartz_actual_remainder_uniform](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQuantitativeSchwartzErrorControls.lean/declarations/wienerschwartz-actual-remainder-uniform--3cb45c10f92c24b4590165e5.md) | 73 | `result-track:3cb45c10f92c24b4590165e5dec514b04ee3fd02c86f219070538dcb5de68cf8` |
| 9 | `theorem` | [wienerSchwartz_actual_uniform_error_family](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQuantitativeSchwartzErrorControls.lean/declarations/wienerschwartz-actual-uniform-error-family--b88058931bd7d4d51cbcf489.md) | 83 | `result-track:b88058931bd7d4d51cbcf48962bf169028ae6578f872dcc753ca120845077421` |
| 10 | `theorem` | [wienerSchwartz_actual_truncation_error](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQuantitativeSchwartzErrorControls.lean/declarations/wienerschwartz-actual-truncation-error--4d319e9a3a4cd25f32b4ae9b.md) | 96 | `result-track:4d319e9a3a4cd25f32b4ae9b0f9a4226cd263c237d63746e08950719a68eccf4` |
| 11 | `def` | [wienerSchwartzQuantitative_nextObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQuantitativeSchwartzErrorControls.lean/declarations/wienerschwartzquantitative-nextobligations--2ab1d96519c3b033a7495c84.md) | 107 | `declaration-track:2ab1d96519c3b033a7495c84e6d3bc85701e5ddb59a65f0b2f7de33db85a15d2` |
| 12 | `def` | [wienerSchwartzQuantitative_prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQuantitativeSchwartzErrorControls.lean/declarations/wienerschwartzquantitative-prohibitedpromotions--de24e3ad055330b11f394a5f.md) | 115 | `declaration-track:de24e3ad055330b11f394a5f01906ebbe065767173a9be66ec2df8083400eda0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
