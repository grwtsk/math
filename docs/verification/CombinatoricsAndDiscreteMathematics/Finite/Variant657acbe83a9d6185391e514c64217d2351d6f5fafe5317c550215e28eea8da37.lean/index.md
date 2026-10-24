# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variant657acbe83a9d6185391e514c64217d2351d6f5fafe5317c550215e28eea8da37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dec8754b043293f0173bf8e0ca386b57c135318",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant657acbe83a9d6185391e514c64217d2351d6f5fafe5317c550215e28eea8da37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant657acbe83a9d6185391e514c64217d2351d6f5fafe5317c550215e28eea8da37.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant657acbe83a9d6185391e514c64217d2351d6f5fafe5317c550215e28eea8da37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dec8754b043293f0173bf8e0ca386b57c135318`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant657acbe83a9d6185391e514c64217d2351d6f5fafe5317c550215e28eea8da37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finite/Variant657acbe83a9d6185391e514c64217d2351d6f5fafe5317c550215e28eea8da37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hall_cond_of_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant657acbe83a9d6185391e514c64217d2351d6f5fafe5317c550215e28eea8da37.lean/declarations/hall-cond-of-erase--30074adc9627c68c67b69876.md) | 49 | `result-track:30074adc9627c68c67b6987620ba396d75347106f7f495965a46dc88401d0807` |
| 2 | `theorem` | [hall_hard_inductive_step_A](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant657acbe83a9d6185391e514c64217d2351d6f5fafe5317c550215e28eea8da37.lean/declarations/hall-hard-inductive-step-a--2864f45c6c9f0dfeaf5d0cd9.md) | 76 | `result-track:2864f45c6c9f0dfeaf5d0cd973ddf50e2eecd617df4bd9e9d4b687e069b52694` |
| 3 | `theorem` | [hall_cond_of_restrict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant657acbe83a9d6185391e514c64217d2351d6f5fafe5317c550215e28eea8da37.lean/declarations/hall-cond-of-restrict--d7e620b7f8d3c146c3cdbef0.md) | 122 | `result-track:d7e620b7f8d3c146c3cdbef06c23abf771999a72124a48b4c6c74a6714b42763` |
| 4 | `theorem` | [hall_cond_of_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant657acbe83a9d6185391e514c64217d2351d6f5fafe5317c550215e28eea8da37.lean/declarations/hall-cond-of-compl--1effe2fa129fbd433852f88d.md) | 132 | `result-track:1effe2fa129fbd433852f88d65c075a9af98b6c4d73a0bc055f23c7b3f92a928` |
| 5 | `theorem` | [hall_hard_inductive_step_B](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant657acbe83a9d6185391e514c64217d2351d6f5fafe5317c550215e28eea8da37.lean/declarations/hall-hard-inductive-step-b--812f49d2a3aae07dc6e11cfc.md) | 161 | `result-track:812f49d2a3aae07dc6e11cfc928fb82ef200510ddd54704b3506528ed494429e` |
| 6 | `theorem` | [hall_hard_inductive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant657acbe83a9d6185391e514c64217d2351d6f5fafe5317c550215e28eea8da37.lean/declarations/hall-hard-inductive--598f633d65f0d985d8dc3fb7.md) | 219 | `result-track:598f633d65f0d985d8dc3fb73997eb56d7df5aa59a24c4b1f841e998a90b0a85` |
| 7 | `theorem` | [Finset.all_card_le_biUnion_card_iff_existsInjective'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant657acbe83a9d6185391e514c64217d2351d6f5fafe5317c550215e28eea8da37.lean/declarations/finset-all-card-le-biunion-card-iff-existsinjective--b22573705411ace15507c36f.md) | 249 | `result-track:b22573705411ace15507c36fecc33fe6c62b690812e9d6d6f01443faa74eaa5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
