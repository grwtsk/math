# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Imo2021Q1.Varianta82a6da1216d9fe3e81d9f64037ccba85b10700073d608b8b611d68fe6a861e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9022ba87ab388bf5f4af0bfa36279e75d6ca87b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Varianta82a6da1216d9fe3e81d9f64037ccba85b10700073d608b8b611d68fe6a861e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Varianta82a6da1216d9fe3e81d9f64037ccba85b10700073d608b8b611d68fe6a861e7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Varianta82a6da1216d9fe3e81d9f64037ccba85b10700073d608b8b611d68fe6a861e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9022ba87ab388bf5f4af0bfa36279e75d6ca87b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Varianta82a6da1216d9fe3e81d9f64037ccba85b10700073d608b8b611d68fe6a861e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Varianta82a6da1216d9fe3e81d9f64037ccba85b10700073d608b8b611d68fe6a861e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Finset.Nat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_numbers_in_interval](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Varianta82a6da1216d9fe3e81d9f64037ccba85b10700073d608b8b611d68fe6a861e7.lean/declarations/exists-numbers-in-interval--ec270b850f90fe82dc0a2765.md) | 54 | `result-track:ec270b850f90fe82dc0a27658534b342df2ea21af827f7930d082da6f8d8d0e6` |
| 2 | `lemma` | [exists_triplet_summing_to_squares](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Varianta82a6da1216d9fe3e81d9f64037ccba85b10700073d608b8b611d68fe6a861e7.lean/declarations/exists-triplet-summing-to-squares--67cb395450f24a354e7cb12c.md) | 71 | `result-track:67cb395450f24a354e7cb12c1b3b8557db8e1d39789bc4a892cdc4a677cef051` |
| 3 | `lemma` | [exists_finset_3_le_card_with_pairs_summing_to_squares](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Varianta82a6da1216d9fe3e81d9f64037ccba85b10700073d608b8b611d68fe6a861e7.lean/declarations/exists-finset-3-le-card-with-pairs-summing-to-squares--4c4d5783bd92e106dcd5ed68.md) | 85 | `result-track:4c4d5783bd92e106dcd5ed68843afd8fc7398e1901a8093089e3fa9873ae0ce1` |
| 4 | `theorem` | [imo2021_q1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Imo2021Q1/Varianta82a6da1216d9fe3e81d9f64037ccba85b10700073d608b8b611d68fe6a861e7.lean/declarations/imo2021-q1--5b7d73a1463f79ebeeede9b6.md) | 113 | `result-track:5b7d73a1463f79ebeeede9b644d977582b0b65be815104da43a25437c18bbf8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
