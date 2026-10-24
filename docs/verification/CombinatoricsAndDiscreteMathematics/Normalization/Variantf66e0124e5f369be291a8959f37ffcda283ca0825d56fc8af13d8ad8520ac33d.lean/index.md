# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Normalization.Variantf66e0124e5f369be291a8959f37ffcda283ca0825d56fc8af13d8ad8520ac33d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b045f2d39be538622d72c8d4cb772779bcc900fe",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Normalization/Variantf66e0124e5f369be291a8959f37ffcda283ca0825d56fc8af13d8ad8520ac33d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Normalization/Variantf66e0124e5f369be291a8959f37ffcda283ca0825d56fc8af13d8ad8520ac33d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Normalization/Variantf66e0124e5f369be291a8959f37ffcda283ca0825d56fc8af13d8ad8520ac33d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b045f2d39be538622d72c8d4cb772779bcc900fe`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Normalization/Variantf66e0124e5f369be291a8959f37ffcda283ca0825d56fc8af13d8ad8520ac33d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Normalization/Variantf66e0124e5f369be291a8959f37ffcda283ca0825d56fc8af13d8ad8520ac33d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Restriction` — import line 22; external provider; requires a separately pinned dependency.
- `FormalResearch.TypeTheory.PureTypeSystem.Components` — import line 23; external provider; requires a separately pinned dependency.
- `FormalResearch.TypeTheory.PureTypeSystem.Signed` — import line 24; external provider; requires a separately pinned dependency.
- `FormalResearch.TypeTheory.PureTypeSystem.OneChild` — import line 25; external provider; requires a separately pinned dependency.
- `FormalResearch.TypeTheory.PureTypeSystem.ObservationCandidates` — import line 26; external provider; requires a separately pinned dependency.
- `FormalResearch.TypeTheory.PureTypeSystem.Diagonal` — import line 27; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RelationalExclusion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Normalization/Variantf66e0124e5f369be291a8959f37ffcda283ca0825d56fc8af13d8ad8520ac33d.lean/declarations/relationalexclusion--ec919336d179d9295ee40337.md) | 42 | `declaration-track:ec919336d179d9295ee403370895a7f2d33611927fa5d33c89d70f1abccc38e5` |
| 2 | `theorem` | [interfaces_of_exclusion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Normalization/Variantf66e0124e5f369be291a8959f37ffcda283ca0825d56fc8af13d8ad8520ac33d.lean/declarations/interfaces-of-exclusion--0d097981387991802350fc8f.md) | 51 | `result-track:0d097981387991802350fc8fcf04747bf397423bb9530b2f9e8265ec291b73e8` |
| 3 | `theorem` | [finite_normalization_of_exclusion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Normalization/Variantf66e0124e5f369be291a8959f37ffcda283ca0825d56fc8af13d8ad8520ac33d.lean/declarations/finite-normalization-of-exclusion--ce67784bd9b196f487f28023.md) | 65 | `result-track:ce67784bd9b196f487f28023e376ff6100ce2d871941fcc22ea072dae06523fb` |
| 4 | `theorem` | [normalization_of_finite_exclusion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Normalization/Variantf66e0124e5f369be291a8959f37ffcda283ca0825d56fc8af13d8ad8520ac33d.lean/declarations/normalization-of-finite-exclusion--f7fa7d3def760304a414ac46.md) | 80 | `result-track:f7fa7d3def760304a414ac465ad2de3d9acaa938ce0c12f593ccf54833a2f4b6` |
| 5 | `theorem` | [relational_exclusion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Normalization/Variantf66e0124e5f369be291a8959f37ffcda283ca0825d56fc8af13d8ad8520ac33d.lean/declarations/relational-exclusion--0a095240565fa59f2ec0062b.md) | 98 | `result-track:0a095240565fa59f2ec0062b11c6cba224817661dbfd3aa79a253bc521c1df39` |
| 6 | `theorem` | [weak_implies_strong](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Normalization/Variantf66e0124e5f369be291a8959f37ffcda283ca0825d56fc8af13d8ad8520ac33d.lean/declarations/weak-implies-strong--9abdc5c35ce7ae17c58229b8.md) | 113 | `result-track:9abdc5c35ce7ae17c58229b872c8178c7ddfd6dee53bca0e10c204a407cb5c2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
