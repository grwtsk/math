# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.CanonicalPrimeMarginControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "664571a36189d3970cc6bbe6ebe930018229b4da",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/CanonicalPrimeMarginControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalPrimeMarginControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalPrimeMarginControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `664571a36189d3970cc6bbe6ebe930018229b4da`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/CanonicalPrimeMarginControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/CanonicalPrimeMarginControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCoverage`](../../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCoverage.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [omitted_scale_false_positive](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalPrimeMarginControls.lean/declarations/omitted-scale-false-positive--85377696c245e91d4b3c16fb.md) | 24 | `result-track:85377696c245e91d4b3c16fbadbefd98c86b9b45ccc58c8e4c5f27992546830b` |
| 2 | `theorem` | [proper_power_mass_not_prime_margin](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalPrimeMarginControls.lean/declarations/proper-power-mass-not-prime-margin--b492eee69b82bc1ec6c47941.md) | 28 | `result-track:b492eee69b82bc1ec6c47941871450538016c58b64798c1967ae99751cd989c7` |
| 3 | `theorem` | [signed_correction_false_positive](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalPrimeMarginControls.lean/declarations/signed-correction-false-positive--57f552af8751a51b2c315348.md) | 32 | `result-track:57f552af8751a51b2c3153487bc479459c3b7e60aa5dcc8e563191d0d4f56f25` |
| 4 | `theorem` | [prefix_is_not_lower_enclosure](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalPrimeMarginControls.lean/declarations/prefix-is-not-lower-enclosure--7836c3bb755de83c4debcef4.md) | 36 | `result-track:7836c3bb755de83c4debcef49bc8945dd40fda56b9d9f2ce4aeb4a90ab7d1c7c` |
| 5 | `theorem` | [omitted_evaluation_error_false_positive](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalPrimeMarginControls.lean/declarations/omitted-evaluation-error-false-positive--19cf1e2c9d2e100a5b479fd7.md) | 40 | `result-track:19cf1e2c9d2e100a5b479fd77ce1af28ef40af51da55c871eb156d7e6533bc3d` |
| 6 | `theorem` | [zero_margin_is_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalPrimeMarginControls.lean/declarations/zero-margin-is-rejected--2967995dd2dc239ec4baf51f.md) | 44 | `result-track:2967995dd2dc239ec4baf51fc08fccf42f09cfafbf4469d90bc0306f03e35559` |
| 7 | `theorem` | [same_cardinality_wrong_inventory](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalPrimeMarginControls.lean/declarations/same-cardinality-wrong-inventory--8d12b8addd39917ce4d31faf.md) | 47 | `result-track:8d12b8addd39917ce4d31faf90637328e98e7b0404209d522c1a2d0da45ae995` |
| 8 | `theorem` | [multiplicity_cannot_be_cardinality](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalPrimeMarginControls.lean/declarations/multiplicity-cannot-be-cardinality--280683317e981969b907e4c2.md) | 57 | `result-track:280683317e981969b907e4c20dc42f17e0f06089eb6400bf028b1c6ccca6abee` |
| 9 | `theorem` | [empty_prefix_keeps_budget](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalPrimeMarginControls.lean/declarations/empty-prefix-keeps-budget--8410b7a97d9b09fb0871f29f.md) | 61 | `result-track:8410b7a97d9b09fb0871f29ff67c69b7711efcd53731b6b2b88e03b9993cd578` |
| 10 | `theorem` | [first_square_stage_separate](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalPrimeMarginControls.lean/declarations/first-square-stage-separate--bea9bb695b1f6646166a3839.md) | 65 | `result-track:bea9bb695b1f6646166a38391e01a4b2a9e15358736631431c34a41d6626065b` |
| 11 | `theorem` | [fixed_threshold_preserves_domain](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalPrimeMarginControls.lean/declarations/fixed-threshold-preserves-domain--8637283ae177fdd238de113c.md) | 73 | `result-track:8637283ae177fdd238de113cb1395df0dddcd8c846cc4d0076a96fa730d9a63d` |
| 12 | `theorem` | [finite_samples_not_universal](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CanonicalPrimeMarginControls.lean/declarations/finite-samples-not-universal--f0e7343fc8ed77168e9d1034.md) | 77 | `result-track:f0e7343fc8ed77168e9d1034852a4bf175f40b22368ce21798d8970212553efe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
