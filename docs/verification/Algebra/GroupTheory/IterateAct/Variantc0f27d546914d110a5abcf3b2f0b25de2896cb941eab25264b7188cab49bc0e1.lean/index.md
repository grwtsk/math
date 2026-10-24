# Verification target: GRWTSK.Algebra.GroupTheory.IterateAct.Variantc0f27d546914d110a5abcf3b2f0b25de2896cb941eab25264b7188cab49bc0e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "912fcd1b2bd0ff9842ed5e429ad535423988ebda",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/IterateAct/Variantc0f27d546914d110a5abcf3b2f0b25de2896cb941eab25264b7188cab49bc0e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantc0f27d546914d110a5abcf3b2f0b25de2896cb941eab25264b7188cab49bc0e1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantc0f27d546914d110a5abcf3b2f0b25de2896cb941eab25264b7188cab49bc0e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `912fcd1b2bd0ff9842ed5e429ad535423988ebda`.

Source path: `GRWTSK/Algebra/GroupTheory/IterateAct/Variantc0f27d546914d110a5abcf3b2f0b25de2896cb941eab25264b7188cab49bc0e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/IterateAct/Variantc0f27d546914d110a5abcf3b2f0b25de2896cb941eab25264b7188cab49bc0e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IterateAddAct](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantc0f27d546914d110a5abcf3b2f0b25de2896cb941eab25264b7188cab49bc0e1.lean/declarations/iterateaddact--8b46d5e2c6d7f6a2a9c73ff3.md) | 20 | `declaration-track:8b46d5e2c6d7f6a2a9c73ff33ae1e014c7a2d064d65c530147f6e6b8fae8b02c` |
| 2 | `structure` | [IterateMulAct](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantc0f27d546914d110a5abcf3b2f0b25de2896cb941eab25264b7188cab49bc0e1.lean/declarations/iteratemulact--d164df401245dfca6a2b5485.md) | 26 | `declaration-track:d164df401245dfca6a2b54858122de9a5d4e9d57a17dd2a18b90e624c1365856` |
| 3 | `instance` | [instCountable](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantc0f27d546914d110a5abcf3b2f0b25de2896cb941eab25264b7188cab49bc0e1.lean/declarations/instcountable--95fa2e23068e44a5aa45e05d.md) | 35 | `declaration-track:95fa2e23068e44a5aa45e05d4a6b79f3b999ca039419320cf349069c841ac0f3` |
| 4 | `instance` | [instCommMonoid](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantc0f27d546914d110a5abcf3b2f0b25de2896cb941eab25264b7188cab49bc0e1.lean/declarations/instcommmonoid--e86460314c040e3b776d0d2c.md) | 39 | `declaration-track:e86460314c040e3b776d0d2c1a19375162c5a7022f84e4aa6b3e8a7c2af02c2e` |
| 5 | `instance` | [instMulAction](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantc0f27d546914d110a5abcf3b2f0b25de2896cb941eab25264b7188cab49bc0e1.lean/declarations/instmulaction--24be5f3b14648d364bbfe017.md) | 51 | `declaration-track:24be5f3b14648d364bbfe01775c5823100559907c21e3c98e1a9ef233ea0ddfa` |
| 6 | `theorem` | [mk_smul](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantc0f27d546914d110a5abcf3b2f0b25de2896cb941eab25264b7188cab49bc0e1.lean/declarations/mk-smul--24f32b94049873f9c0a50301.md) | 57 | `result-track:24f32b94049873f9c0a503014296be3933499dd3ddd897deed54d3c6214095df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
