# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ShapleyAttribution.Variantc8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8194d2de0c21e5ed4a6e552f6d336b399bb9cf5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variantc8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variantc8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variantc8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8194d2de0c21e5ed4a6e552f6d336b399bb9cf5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variantc8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variantc8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.MobiusInteraction` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shapleyWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variantc8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46.lean/declarations/shapleyweight--8bd9e42ddc8004d5a0a8bb7f.md) | 17 | `declaration-track:8bd9e42ddc8004d5a0a8bb7fa5419539776e6c9cc0c853c7d8eece622ec622ac` |
| 2 | `def` | [shapleyDefect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variantc8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46.lean/declarations/shapleydefect--52427c8f644d71412ab3f460.md) | 28 | `declaration-track:52427c8f644d71412ab3f46096edd3c02324639a94c087e8bea2df1d8688d1c1` |
| 3 | `structure` | [ShapleyWeightCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variantc8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46.lean/declarations/shapleyweightcertificate--518895979acd9b8879cea1ef.md) | 41 | `declaration-track:518895979acd9b8879cea1ef7d7583042c751b9baa28fac7b187afa8d101f93d` |
| 4 | `theorem` | [shapleyDefect_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variantc8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46.lean/declarations/shapleydefect-nonnegative--c391e7191d80612234c57d73.md) | 53 | `result-track:c391e7191d80612234c57d7365cba716597417816b9c80e07398a3c505791f75` |
| 5 | `structure` | [ShapleyEfficiencyCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variantc8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46.lean/declarations/shapleyefficiencycertificate--b791d3188ab38339f7045a02.md) | 77 | `declaration-track:b791d3188ab38339f7045a025d95e4c958e1513df664f86a1ec5f251e12e7629` |
| 6 | `theorem` | [shapley_efficiency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ShapleyAttribution/Variantc8a6740c05d36bd15f76f3178b0dcf11d7b95c739fbde1c0775c75dd8037ef46.lean/declarations/shapley-efficiency--3971775b5974721856be079e.md) | 91 | `result-track:3971775b5974721856be079e9d3af4382899c7f3145c7c9bf2f06a45b0dcbee5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
