# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Int.Variantb39d2d35ab4115cbad97ed2b35d8c21ff3ce59a9754e21f750c01651c89b877c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e87f05b81186ba73ccaac5286d7d3bab0046469",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantb39d2d35ab4115cbad97ed2b35d8c21ff3ce59a9754e21f750c01651c89b877c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantb39d2d35ab4115cbad97ed2b35d8c21ff3ce59a9754e21f750c01651c89b877c.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantb39d2d35ab4115cbad97ed2b35d8c21ff3ce59a9754e21f750c01651c89b877c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e87f05b81186ba73ccaac5286d7d3bab0046469`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantb39d2d35ab4115cbad97ed2b35d8c21ff3ce59a9754e21f750c01651c89b877c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantb39d2d35ab4115cbad97ed2b35d8c21ff3ce59a9754e21f750c01651c89b877c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Ring.Lemmas` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nnnorm_coe_units](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantb39d2d35ab4115cbad97ed2b35d8c21ff3ce59a9754e21f750c01651c89b877c.lean/declarations/nnnorm-coe-units--b73b4abc6aeebadad1b10eda.md) | 22 | `result-track:b73b4abc6aeebadad1b10eda6777b6516ed7e4f8c6c2d803af7c432fca131826` |
| 2 | `theorem` | [norm_coe_units](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantb39d2d35ab4115cbad97ed2b35d8c21ff3ce59a9754e21f750c01651c89b877c.lean/declarations/norm-coe-units--b6121f687d59c71f94ce4445.md) | 26 | `result-track:b6121f687d59c71f94ce4445935de027b58507735f4d0d1b7dd4a8b8febd113f` |
| 3 | `theorem` | [nnnorm_natCast](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantb39d2d35ab4115cbad97ed2b35d8c21ff3ce59a9754e21f750c01651c89b877c.lean/declarations/nnnorm-natcast--00eb8325acd21f4cab3a68b2.md) | 30 | `result-track:00eb8325acd21f4cab3a68b2b77c3c6efe5b04bff411046cbc063b9f48a3d098` |
| 4 | `lemma` | [enorm_natCast](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantb39d2d35ab4115cbad97ed2b35d8c21ff3ce59a9754e21f750c01651c89b877c.lean/declarations/enorm-natcast--6f58e04c45cb1e365f2c0be4.md) | 33 | `result-track:6f58e04c45cb1e365f2c0be45338a3d16a5cb2a8e8274d774079a30101fc90f6` |
| 5 | `theorem` | [toNat_add_toNat_neg_eq_nnnorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantb39d2d35ab4115cbad97ed2b35d8c21ff3ce59a9754e21f750c01651c89b877c.lean/declarations/tonat-add-tonat-neg-eq-nnnorm--e6d4fefa1b2e30d275847825.md) | 36 | `result-track:e6d4fefa1b2e30d27584782524f2c2875fabc8f420973037c5d33bd60492ee0f` |
| 6 | `theorem` | [toNat_add_toNat_neg_eq_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Int/Variantb39d2d35ab4115cbad97ed2b35d8c21ff3ce59a9754e21f750c01651c89b877c.lean/declarations/tonat-add-tonat-neg-eq-norm--221b172cb5f85d50bb7e5a38.md) | 40 | `result-track:221b172cb5f85d50bb7e5a38102e2958790a2e13b48cb28838dd4fd0d671b606` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
