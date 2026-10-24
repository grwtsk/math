# Verification target: GRWTSK.NumberTheory.Primes.Checks.GoldbachFourierControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "524791f3efe4529b89c71c481ebcc73f58e23521",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachFourierControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFourierControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFourierControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `524791f3efe4529b89c71c481ebcc73f58e23521`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/GoldbachFourierControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/GoldbachFourierControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachFiniteFourier`](../../../../../mathematics/NumberTheory/Primes/GoldbachFiniteFourier.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [four_mass_positive](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFourierControls.lean/declarations/four-mass-positive--670d7a4b7a8c92f824eadd7a.md) | 24 | `result-track:670d7a4b7a8c92f824eadd7aa34f37c5cdddf80e73ca4af4ffbf0514eb80b9ba` |
| 2 | `theorem` | [eleven_mass_zero](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFourierControls.lean/declarations/eleven-mass-zero--ac67f3c031d13766ed0ce663.md) | 29 | `result-track:ac67f3c031d13766ed0ce663aad37cdac1a2e17fbe95ce081d0f159f76c4bf7b` |
| 3 | `theorem` | [composite_weight_zero](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFourierControls.lean/declarations/composite-weight-zero--79bde2750216ab6dde0210e5.md) | 42 | `result-track:79bde2750216ab6dde0210e5e16e4779a9df89de86aca247e1e333b2381de619` |
| 4 | `theorem` | [four_projector_exact](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFourierControls.lean/declarations/four-projector-exact--57c47636d8392d433a794d73.md) | 47 | `result-track:57c47636d8392d433a794d73c65e87933528311bfd582251f34bdc522f035724` |
| 5 | `theorem` | [modular_wrap_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFourierControls.lean/declarations/modular-wrap-control--6de19f922f6466e0fe4928e2.md) | 53 | `result-track:6de19f922f6466e0fe4928e2d16d550825b4d448139331e8c6c366d42d46aac9` |
| 6 | `theorem` | [wrong_additive_target_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFourierControls.lean/declarations/wrong-additive-target-control--a90841c971b2dcfcea1b0c35.md) | 61 | `result-track:a90841c971b2dcfcea1b0c35bf5f1076f6e084ae9bc72bc300c089d6629a0e79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
