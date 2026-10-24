# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Change.Variant506f6808ef2875c9e212b1052a0952e2a5c867b0831987f6743f8a00e3f2fbcc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64f28f3d0c83af4d4c8997dcd0f79e35cc0594b6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Change/Variant506f6808ef2875c9e212b1052a0952e2a5c867b0831987f6743f8a00e3f2fbcc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Change/Variant506f6808ef2875c9e212b1052a0952e2a5c867b0831987f6743f8a00e3f2fbcc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Change/Variant506f6808ef2875c9e212b1052a0952e2a5c867b0831987f6743f8a00e3f2fbcc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64f28f3d0c83af4d4c8997dcd0f79e35cc0594b6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Change/Variant506f6808ef2875c9e212b1052a0952e2a5c867b0831987f6743f8a00e3f2fbcc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Change/Variant506f6808ef2875c9e212b1052a0952e2a5c867b0831987f6743f8a00e3f2fbcc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.Authorization` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.Index.Records` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RepresentationChange](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Change/Variant506f6808ef2875c9e212b1052a0952e2a5c867b0831987f6743f8a00e3f2fbcc.lean/declarations/representationchange--158ae3fc0d3a24c33afb032d.md) | 23 | `declaration-track:158ae3fc0d3a24c33afb032da8c66d1928105b4c39c7b699ca2249b4ae863f17` |
| 2 | `structure` | [CanonicalIndexPatch](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Change/Variant506f6808ef2875c9e212b1052a0952e2a5c867b0831987f6743f8a00e3f2fbcc.lean/declarations/canonicalindexpatch--6f5467d0cadba198826568d5.md) | 36 | `declaration-track:6f5467d0cadba198826568d5c9ef68aa3f176e10839450714e5b51a22ae9b251` |
| 3 | `def` | [CanonicalIndexPatch.AppliesTo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Change/Variant506f6808ef2875c9e212b1052a0952e2a5c867b0831987f6743f8a00e3f2fbcc.lean/declarations/canonicalindexpatch-appliesto--075731c5d0769341ed539a28.md) | 45 | `declaration-track:075731c5d0769341ed539a286e0d09cd243f61ba0b0614a1f0e443b9039f063a` |
| 4 | `theorem` | [CanonicalIndexPatch.appliesTo_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Change/Variant506f6808ef2875c9e212b1052a0952e2a5c867b0831987f6743f8a00e3f2fbcc.lean/declarations/canonicalindexpatch-appliesto-iff--7bea0a10f3424357e04cd3e3.md) | 50 | `result-track:7bea0a10f3424357e04cd3e3920a81a4f3835ff75df7516e78ea44398e0e8897` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
