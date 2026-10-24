# Verification target: GRWTSK.Analysis.Complex.Checks.RationalTentControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3395b59bded3799da5f3b0cf802ba96d161c55cf",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/Checks/RationalTentControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentControls.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3395b59bded3799da5f3b0cf802ba96d161c55cf`.

Source path: `GRWTSK/Analysis/Complex/Checks/RationalTentControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/Checks/RationalTentControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.CanonicalRationalTentEvaluation`](../../../../../mathematics/NumberTheory/Chebyshev/CanonicalRationalTentEvaluation.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quotient_conjugates_denominator](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentControls.lean/declarations/quotient-conjugates-denominator--a26bde4817f6431790eec41f.md) | 15 | `result-track:a26bde4817f6431790eec41fab2f478e569b085fcabc01fe97e81eae77db9442` |
| 2 | `theorem` | [zero_quotient_not_guarded](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentControls.lean/declarations/zero-quotient-not-guarded--a58193052855c8b6cfabea4a.md) | 19 | `result-track:a58193052855c8b6cfabea4a73dbcff722c10a3b68d27943898cebf0ea9086b9` |
| 3 | `theorem` | [negative_lower_cannot_pass_square_alone](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentControls.lean/declarations/negative-lower-cannot-pass-square-alone--251c5a52bdbae2493428d95f.md) | 23 | `result-track:251c5a52bdbae2493428d95f17711399c5498e64a52304b4bc3f88640037ef2f` |
| 4 | `theorem` | [center_zero_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentControls.lean/declarations/center-zero-rejected--93c78254fcd22fc1ced88d33.md) | 26 | `result-track:93c78254fcd22fc1ced88d33983e9e4c74558e5941ebaf2ba48df7b11e7e5785` |
| 5 | `theorem` | [center_minus_one_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentControls.lean/declarations/center-minus-one-rejected--c7669d719bca437eff6c629a.md) | 34 | `result-track:c7669d719bca437eff6c629ac5dd3d845ce77edf5c146db8595d7742c7ace261` |
| 6 | `theorem` | [negative_coordinate_error_rejected](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentControls.lean/declarations/negative-coordinate-error-rejected--34d6018291bd447ede3e7842.md) | 42 | `result-track:34d6018291bd447ede3e78424a166427c531770684c048fa91c9c57832d8bdd0` |
| 7 | `theorem` | [middle_error_has_two_copies](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentControls.lean/declarations/middle-error-has-two-copies--0df9787eed17a87182abff29.md) | 47 | `result-track:0df9787eed17a87182abff29ceba5fe4eaaaa0d0c3686a4566dd495ea71fe34a` |
| 8 | `theorem` | [multiplicity_scales_whole_error](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentControls.lean/declarations/multiplicity-scales-whole-error--a7427dced87323bd89013bca.md) | 50 | `result-track:a7427dced87323bd89013bca772342c91488966e7cf090ca6bbee31bc9aa4bb3` |
| 9 | `theorem` | [final_rounding_is_not_free](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentControls.lean/declarations/final-rounding-is-not-free--6febb96f369865f27365f277.md) | 53 | `result-track:6febb96f369865f27365f277cedf8595931879ef49ab2606bc50e78c732acf32` |
| 10 | `theorem` | [signed_division_control](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentControls.lean/declarations/signed-division-control--be1e88250a9cdecfafcf7259.md) | 56 | `result-track:be1e88250a9cdecfafcf7259fd9879cf1ae178ad9b4087601d0a170fad700524` |
| 11 | `theorem` | [repeated_key_not_injective](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentControls.lean/declarations/repeated-key-not-injective--9a319ecebc5d58c9b70bf73b.md) | 61 | `result-track:9a319ecebc5d58c9b70bf73b32e49954df1982665ead57ec559454195f72b4a5` |
| 12 | `theorem` | [tolerance_equality_not_strict_prime_margin](../../../../../mathematics/Analysis/ComplexAnalysis/Checks/RationalTentControls.lean/declarations/tolerance-equality-not-strict-prime-margin--d030471461c81a5fa7528cc8.md) | 66 | `result-track:d030471461c81a5fa7528cc852a46002815ff29df5a7d0ede1580db15906ea4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
