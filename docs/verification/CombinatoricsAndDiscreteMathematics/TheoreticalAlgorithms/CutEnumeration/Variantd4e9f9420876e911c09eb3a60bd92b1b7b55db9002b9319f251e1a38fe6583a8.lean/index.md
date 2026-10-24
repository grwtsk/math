# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CutEnumeration.Variantd4e9f9420876e911c09eb3a60bd92b1b7b55db9002b9319f251e1a38fe6583a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d23cff121752a8e095bceda63fb1497252db56dc",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CutEnumeration/Variantd4e9f9420876e911c09eb3a60bd92b1b7b55db9002b9319f251e1a38fe6583a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CutEnumeration/Variantd4e9f9420876e911c09eb3a60bd92b1b7b55db9002b9319f251e1a38fe6583a8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CutEnumeration/Variantd4e9f9420876e911c09eb3a60bd92b1b7b55db9002b9319f251e1a38fe6583a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d23cff121752a8e095bceda63fb1497252db56dc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CutEnumeration/Variantd4e9f9420876e911c09eb3a60bd92b1b7b55db9002b9319f251e1a38fe6583a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CutEnumeration/Variantd4e9f9420876e911c09eb3a60bd92b1b7b55db9002b9319f251e1a38fe6583a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.WP0.PrimeHorizon` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CutEnumeration](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CutEnumeration/Variantd4e9f9420876e911c09eb3a60bd92b1b7b55db9002b9319f251e1a38fe6583a8.lean/declarations/cutenumeration--42831f0ec0141197783b55de.md) | 20 | `declaration-track:42831f0ec0141197783b55de6e75b130990c364386f6376c41eeedbec62e2590` |
| 2 | `def` | [CutEnumeration.prefixCut](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CutEnumeration/Variantd4e9f9420876e911c09eb3a60bd92b1b7b55db9002b9319f251e1a38fe6583a8.lean/declarations/cutenumeration-prefixcut--87b77dffacbcf877b3925a07.md) | 31 | `declaration-track:87b77dffacbcf877b3925a07381101fbbb12b483ee2194a7fe5e8ecd57e9ef05` |
| 3 | `theorem` | [CutEnumeration.prefixCut_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CutEnumeration/Variantd4e9f9420876e911c09eb3a60bd92b1b7b55db9002b9319f251e1a38fe6583a8.lean/declarations/cutenumeration-prefixcut-zero--064e15843aab2afc28379006.md) | 40 | `result-track:064e15843aab2afc283790061f3fdfba0635e3522435773105614c6fb7984e7f` |
| 4 | `theorem` | [CutEnumeration.prefixCut_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CutEnumeration/Variantd4e9f9420876e911c09eb3a60bd92b1b7b55db9002b9319f251e1a38fe6583a8.lean/declarations/cutenumeration-prefixcut-length--922dede735db3d5e0fc981f5.md) | 48 | `result-track:922dede735db3d5e0fc981f5e70cbb0def3a5c68d31e00310e60fb373099bf10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
