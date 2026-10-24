# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sort.Variant16378a31080b8d857f55201b34a252764dc69b0dcb619da235b281803671ba37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "060770f42c850e226778e21c4be8d02d926ece05",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant16378a31080b8d857f55201b34a252764dc69b0dcb619da235b281803671ba37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant16378a31080b8d857f55201b34a252764dc69b0dcb619da235b281803671ba37.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant16378a31080b8d857f55201b34a252764dc69b0dcb619da235b281803671ba37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `060770f42c850e226778e21c4be8d02d926ece05`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant16378a31080b8d857f55201b34a252764dc69b0dcb619da235b281803671ba37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sort/Variant16378a31080b8d857f55201b34a252764dc69b0dcb619da235b281803671ba37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sort` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [monoEquivOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant16378a31080b8d857f55201b34a252764dc69b0dcb619da235b281803671ba37.lean/declarations/monoequivoffin--b0343ffd75fd2687a42fd161.md) | 25 | `declaration-track:b0343ffd75fd2687a42fd161cbd1abe62b0a1b2f5387996e43849181af4061e8` |
| 2 | `def` | [finSumEquivOfFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant16378a31080b8d857f55201b34a252764dc69b0dcb619da235b281803671ba37.lean/declarations/finsumequivoffinset--1063e959dc7528d9e7ff3220.md) | 35 | `declaration-track:1063e959dc7528d9e7ff32205e9eb769f717e3336a326b8b67694599a3a04fb9` |
| 3 | `theorem` | [finSumEquivOfFinset_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant16378a31080b8d857f55201b34a252764dc69b0dcb619da235b281803671ba37.lean/declarations/finsumequivoffinset-inl--1bd2a7278e1c6fdaddf576fd.md) | 43 | `result-track:1bd2a7278e1c6fdaddf576fd822bd799c40b198d564e03338c5b09ff68a89f5a` |
| 4 | `theorem` | [finSumEquivOfFinset_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant16378a31080b8d857f55201b34a252764dc69b0dcb619da235b281803671ba37.lean/declarations/finsumequivoffinset-inr--eb7603459ba0a32bb9305a71.md) | 48 | `result-track:eb7603459ba0a32bb9305a712e502112c6535562ad2c4ef290af4f985904ca74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
