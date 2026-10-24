# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PathClass.Variant93e322789b0debdd83cfbe0ebb90b9d0dc86279503dea76d5db5ebc46ca67410

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17bbda31f69712f41b876a16268ec5be61d9699b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant93e322789b0debdd83cfbe0ebb90b9d0dc86279503dea76d5db5ebc46ca67410.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant93e322789b0debdd83cfbe0ebb90b9d0dc86279503dea76d5db5ebc46ca67410.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant93e322789b0debdd83cfbe0ebb90b9d0dc86279503dea76d5db5ebc46ca67410.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17bbda31f69712f41b876a16268ec5be61d9699b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant93e322789b0debdd83cfbe0ebb90b9d0dc86279503dea76d5db5ebc46ca67410.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant93e322789b0debdd83cfbe0ebb90b9d0dc86279503dea76d5db5ebc46ca67410.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.Bit` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [EndpointClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant93e322789b0debdd83cfbe0ebb90b9d0dc86279503dea76d5db5ebc46ca67410.lean/declarations/endpointclass--8101995fca784318c998b00f.md) | 29 | `declaration-track:8101995fca784318c998b00fa69c0e1a12181a05a62da3873d795acfc1b0b877` |
| 2 | `def` | [ofEndpoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant93e322789b0debdd83cfbe0ebb90b9d0dc86279503dea76d5db5ebc46ca67410.lean/declarations/ofendpoints--5de408b46d72b72b9638f9c3.md) | 38 | `declaration-track:5de408b46d72b72b9638f9c3b2f54cb5ddd4fd0df90d1c8689f2d1c13126f38d` |
| 3 | `def` | [lastBit?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant93e322789b0debdd83cfbe0ebb90b9d0dc86279503dea76d5db5ebc46ca67410.lean/declarations/lastbit--ea4a5cf47c2370c70babbea7.md) | 46 | `declaration-track:ea4a5cf47c2370c70babbea7b2b64208e07fe43c2edca4eecd3a52cbbfe0c777` |
| 4 | `def` | [endpointClassOfBits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant93e322789b0debdd83cfbe0ebb90b9d0dc86279503dea76d5db5ebc46ca67410.lean/declarations/endpointclassofbits--ae04ba1c25d6f8205c96d56e.md) | 51 | `declaration-track:ae04ba1c25d6f8205c96d56eb64aaa0b6b151cb252405b441939ddb750d32559` |
| 5 | `theorem` | [lastBit?_cons_ne_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant93e322789b0debdd83cfbe0ebb90b9d0dc86279503dea76d5db5ebc46ca67410.lean/declarations/lastbit-cons-ne-none--89cabed3fb33c2db9710b118.md) | 55 | `result-track:89cabed3fb33c2db9710b118065d01627a15be66707ba7c5411220713daa357a` |
| 6 | `theorem` | [endpointClass_depends_only_on_endpoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant93e322789b0debdd83cfbe0ebb90b9d0dc86279503dea76d5db5ebc46ca67410.lean/declarations/endpointclass-depends-only-on-endpoints--024c398943c00ed0fb30406c.md) | 63 | `result-track:024c398943c00ed0fb30406ce775e414f83433fbefa1ecd12768ad75376a482a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
