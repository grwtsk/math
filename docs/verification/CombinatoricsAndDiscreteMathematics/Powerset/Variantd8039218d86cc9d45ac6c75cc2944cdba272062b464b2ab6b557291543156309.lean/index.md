# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Powerset.Variantd8039218d86cc9d45ac6c75cc2944cdba272062b464b2ab6b557291543156309

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad0fee6f978324c0dc26b28c0455653048b21947",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantd8039218d86cc9d45ac6c75cc2944cdba272062b464b2ab6b557291543156309.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantd8039218d86cc9d45ac6c75cc2944cdba272062b464b2ab6b557291543156309.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantd8039218d86cc9d45ac6c75cc2944cdba272062b464b2ab6b557291543156309.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad0fee6f978324c0dc26b28c0455653048b21947`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantd8039218d86cc9d45ac6c75cc2944cdba272062b464b2ab6b557291543156309.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Powerset/Variantd8039218d86cc9d45ac6c75cc2944cdba272062b464b2ab6b557291543156309.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Finset.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantd8039218d86cc9d45ac6c75cc2944cdba272062b464b2ab6b557291543156309.lean/declarations/finset-fintype--7510044be9fa2a4f302fc4cf.md) | 20 | `declaration-track:7510044be9fa2a4f302fc4cf7424784d199f71c78fc46fc230751944533f32fe` |
| 2 | `theorem` | [Fintype.card_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantd8039218d86cc9d45ac6c75cc2944cdba272062b464b2ab6b557291543156309.lean/declarations/fintype-card-finset--e38f2b13f4ba14b7e5db467e.md) | 25 | `result-track:e38f2b13f4ba14b7e5db467ed578fe91a4382be7b59a1de0eb0b1abf75efffab` |
| 3 | `theorem` | [Finset.powerset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantd8039218d86cc9d45ac6c75cc2944cdba272062b464b2ab6b557291543156309.lean/declarations/finset-powerset-univ--75130c99f3d538a4ce8e0c7e.md) | 30 | `result-track:75130c99f3d538a4ce8e0c7e02a152082a2f8d2b3bef1a333a4477fbac58cc95` |
| 4 | `theorem` | [Finset.powerset_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantd8039218d86cc9d45ac6c75cc2944cdba272062b464b2ab6b557291543156309.lean/declarations/finset-powerset-eq-univ--de72f99e0ac5240a96cd57ea.md) | 35 | `result-track:de72f99e0ac5240a96cd57eaadfa384d447933dbbb30923976bc8ef822c05f08` |
| 5 | `theorem` | [Finset.mem_powerset_len_univ_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantd8039218d86cc9d45ac6c75cc2944cdba272062b464b2ab6b557291543156309.lean/declarations/finset-mem-powerset-len-univ-iff--2bac435736bfe2595b6ae728.md) | 40 | `result-track:2bac435736bfe2595b6ae72859b4e7c131f5a97b2fc0428decfb9c0cbb02ad49` |
| 6 | `theorem` | [Finset.univ_filter_card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantd8039218d86cc9d45ac6c75cc2944cdba272062b464b2ab6b557291543156309.lean/declarations/finset-univ-filter-card-eq--7f714154ba8f8b09d2b064c4.md) | 46 | `result-track:7f714154ba8f8b09d2b064c4a52c59a99456218df241f746bade5a3e89923874` |
| 7 | `theorem` | [Fintype.card_finset_len](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantd8039218d86cc9d45ac6c75cc2944cdba272062b464b2ab6b557291543156309.lean/declarations/fintype-card-finset-len--19196986723aa23bab9d80dc.md) | 53 | `result-track:19196986723aa23bab9d80dc94fdcddf68cba4ed67e9f851ed9c0ad65291cc57` |
| 8 | `instance` | [Set.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantd8039218d86cc9d45ac6c75cc2944cdba272062b464b2ab6b557291543156309.lean/declarations/set-fintype--f039a5180e35d79e60fccc49.md) | 58 | `declaration-track:f039a5180e35d79e60fccc4977ac580ee16e51d25d9cfa03a2fcea0152494249` |
| 9 | `instance` | [Set.finite'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantd8039218d86cc9d45ac6c75cc2944cdba272062b464b2ab6b557291543156309.lean/declarations/set-finite--97204d8cfbc5499d6b75973a.md) | 68 | `declaration-track:97204d8cfbc5499d6b75973a8a0631b51b4c3291ca0d386671e6bd913b282780` |
| 10 | `theorem` | [Fintype.card_set](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantd8039218d86cc9d45ac6c75cc2944cdba272062b464b2ab6b557291543156309.lean/declarations/fintype-card-set--81bd3cf1fbb8892064d0a3e6.md) | 74 | `result-track:81bd3cf1fbb8892064d0a3e60153d6b826c5e7230da68a5cf1e1a38d3d67d973` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
