# Verification target: GRWTSK.NumberTheory.QuadraticReciprocity.Variant60c58104190062297683ae84553a86c91041845694678ffe146aef094540d472

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d09b570d395c7945e9c5d303f9c6524d6b498ee8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/QuadraticReciprocity/Variant60c58104190062297683ae84553a86c91041845694678ffe146aef094540d472.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant60c58104190062297683ae84553a86c91041845694678ffe146aef094540d472.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant60c58104190062297683ae84553a86c91041845694678ffe146aef094540d472.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d09b570d395c7945e9c5d303f9c6524d6b498ee8`.

Source path: `GRWTSK/NumberTheory/QuadraticReciprocity/Variant60c58104190062297683ae84553a86c91041845694678ffe146aef094540d472.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/QuadraticReciprocity/Variant60c58104190062297683ae84553a86c91041845694678ffe146aef094540d472.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.GaussSum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [at_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant60c58104190062297683ae84553a86c91041845694678ffe146aef094540d472.lean/declarations/at-two--1014e420498a60aec5895105.md) | 56 | `result-track:1014e420498a60aec58951056ff337b9fdeaf1eb13e11b4c51751e8145c033d4` |
| 2 | `theorem` | [at_neg_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant60c58104190062297683ae84553a86c91041845694678ffe146aef094540d472.lean/declarations/at-neg-two--34337769ccb15850ed670a04.md) | 61 | `result-track:34337769ccb15850ed670a04272ac96a7ed5b3e2f85d6661c5718ec47c108456` |
| 3 | `theorem` | [exists_sq_eq_two_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant60c58104190062297683ae84553a86c91041845694678ffe146aef094540d472.lean/declarations/exists-sq-eq-two-iff--088b6baa9f42df0d8e08d714.md) | 70 | `result-track:088b6baa9f42df0d8e08d714e0ca3bf88e85d56f47ddee7d037e7f345f57cf4d` |
| 4 | `theorem` | [exists_sq_eq_neg_two_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant60c58104190062297683ae84553a86c91041845694678ffe146aef094540d472.lean/declarations/exists-sq-eq-neg-two-iff--867deb2163819519890434ab.md) | 76 | `result-track:867deb2163819519890434aba6b14d4b4546fc6394c54d84260f9c78c943610e` |
| 5 | `theorem` | [quadratic_reciprocity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant60c58104190062297683ae84553a86c91041845694678ffe146aef094540d472.lean/declarations/quadratic-reciprocity--1f8af2363611a37095dd76f0.md) | 103 | `result-track:1f8af2363611a37095dd76f08716e8dd272f6c66c51bb6519d93df3b09b71630` |
| 6 | `theorem` | [quadratic_reciprocity'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant60c58104190062297683ae84553a86c91041845694678ffe146aef094540d472.lean/declarations/quadratic-reciprocity--f10a9c2bfced96c79352236f.md) | 119 | `result-track:f10a9c2bfced96c79352236faa29da48d6d0488609b1253a4b482c9254647618` |
| 7 | `theorem` | [quadratic_reciprocity_one_mod_four](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant60c58104190062297683ae84553a86c91041845694678ffe146aef094540d472.lean/declarations/quadratic-reciprocity-one-mod-four--2e15e55c89d005b9766f2724.md) | 130 | `result-track:2e15e55c89d005b9766f27242edb7df287ae30c363d240953d0b3e72b68b4adb` |
| 8 | `theorem` | [quadratic_reciprocity_three_mod_four](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant60c58104190062297683ae84553a86c91041845694678ffe146aef094540d472.lean/declarations/quadratic-reciprocity-three-mod-four--f053d97adf3a20c1ed6b56c6.md) | 137 | `result-track:f053d97adf3a20c1ed6b56c6b005f5086cfbbb3a3af95029ee158b4a5fb486d4` |
| 9 | `theorem` | [exists_sq_eq_prime_iff_of_mod_four_eq_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant60c58104190062297683ae84553a86c91041845694678ffe146aef094540d472.lean/declarations/exists-sq-eq-prime-iff-of-mod-four-eq-one--db13aff866481475e0ccd0d9.md) | 151 | `result-track:db13aff866481475e0ccd0d90f8f497a86de715e653745038321d36b169a7e27` |
| 10 | `theorem` | [exists_sq_eq_prime_iff_of_mod_four_eq_three](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant60c58104190062297683ae84553a86c91041845694678ffe146aef094540d472.lean/declarations/exists-sq-eq-prime-iff-of-mod-four-eq-three--d00fbe29dbd739e026a9675b.md) | 160 | `result-track:d00fbe29dbd739e026a9675be7811cc6672c2d9b9fb45379f9373b44c6beaa5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
