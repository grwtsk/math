# Verification target: GRWTSK.Algebra.GroupTheory.Frattini.Variantbae1c030bfc0677316da661e1f2d451c8428c6f859f4a11b6ab17755a9ad83eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aba68a884f6c4c5dc080a33daa32a4dced65f520",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Frattini/Variantbae1c030bfc0677316da661e1f2d451c8428c6f859f4a11b6ab17755a9ad83eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variantbae1c030bfc0677316da661e1f2d451c8428c6f859f4a11b6ab17755a9ad83eb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variantbae1c030bfc0677316da661e1f2d451c8428c6f859f4a11b6ab17755a9ad83eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aba68a884f6c4c5dc080a33daa32a4dced65f520`.

Source path: `GRWTSK/Algebra/GroupTheory/Frattini/Variantbae1c030bfc0677316da661e1f2d451c8428c6f859f4a11b6ab17755a9ad83eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Frattini/Variantbae1c030bfc0677316da661e1f2d451c8428c6f859f4a11b6ab17755a9ad83eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [frattini](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variantbae1c030bfc0677316da661e1f2d451c8428c6f859f4a11b6ab17755a9ad83eb.lean/declarations/frattini--bb8f302d758ca15bdee2bc28.md) | 24 | `declaration-track:bb8f302d758ca15bdee2bc28ad69aed5b51d26bb341bdf96a09df7c5e35b770b` |
| 2 | `lemma` | [frattini_le_coatom](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variantbae1c030bfc0677316da661e1f2d451c8428c6f859f4a11b6ab17755a9ad83eb.lean/declarations/frattini-le-coatom--77a857cd7cc6af84fcde36c8.md) | 29 | `result-track:77a857cd7cc6af84fcde36c8c074dad4caafe3d5da1592e50ec3a4a077f95392` |
| 3 | `lemma` | [frattini_le_comap_frattini_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variantbae1c030bfc0677316da661e1f2d451c8428c6f859f4a11b6ab17755a9ad83eb.lean/declarations/frattini-le-comap-frattini-of-surjective--f5dcf426bcce6a9766a11dc4.md) | 34 | `result-track:f5dcf426bcce6a9766a11dc4f3432e8baee58b920d9335579f547b2953468b11` |
| 4 | `instance` | [frattini_characteristic](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variantbae1c030bfc0677316da661e1f2d451c8428c6f859f4a11b6ab17755a9ad83eb.lean/declarations/frattini-characteristic--f15965127dc4998f83c4cc2c.md) | 42 | `declaration-track:f15965127dc4998f83c4cc2c048e7d0e237def5e1050e1b6b4cef4cb300d2139` |
| 5 | `theorem` | [frattini_nongenerating](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variantbae1c030bfc0677316da661e1f2d451c8428c6f859f4a11b6ab17755a9ad83eb.lean/declarations/frattini-nongenerating--c4c1a2595adb00dec691bbaf.md) | 53 | `result-track:c4c1a2595adb00dec691bbaff407463fc934cd6dc753e4fa6b340f44bd22e672` |
| 6 | `theorem` | [frattini_nilpotent](../../../../../mathematics/Algebra/GroupTheory/Frattini/Variantbae1c030bfc0677316da661e1f2d451c8428c6f859f4a11b6ab17755a9ad83eb.lean/declarations/frattini-nilpotent--9f33a06cacf9fc950d3f4488.md) | 58 | `result-track:9f33a06cacf9fc950d3f44881fbc1e498761b32c6f239b11b457a75e7297c7a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
