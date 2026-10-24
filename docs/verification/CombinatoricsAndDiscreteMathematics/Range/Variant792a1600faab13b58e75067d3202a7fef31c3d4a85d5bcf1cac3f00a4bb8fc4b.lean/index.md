# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Range.Variant792a1600faab13b58e75067d3202a7fef31c3d4a85d5bcf1cac3f00a4bb8fc4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9afc713aea7ea11c9b0734545e9fa3b475ac33b4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variant792a1600faab13b58e75067d3202a7fef31c3d4a85d5bcf1cac3f00a4bb8fc4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant792a1600faab13b58e75067d3202a7fef31c3d4a85d5bcf1cac3f00a4bb8fc4b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant792a1600faab13b58e75067d3202a7fef31c3d4a85d5bcf1cac3f00a4bb8fc4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9afc713aea7ea11c9b0734545e9fa3b475ac33b4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variant792a1600faab13b58e75067d3202a7fef31c3d4a85d5bcf1cac3f00a4bb8fc4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Range/Variant792a1600faab13b58e75067d3202a7fef31c3d4a85d5bcf1cac3f00a4bb8fc4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.EquivFin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ULift` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [fintypeRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant792a1600faab13b58e75067d3202a7fef31c3d4a85d5bcf1cac3f00a4bb8fc4b.lean/declarations/fintyperange--870883d8648f9670169dfde6.md) | 39 | `declaration-track:870883d8648f9670169dfde67eac9b951ac3643dff9fef836ef65b3ebeb77520` |
| 2 | `instance` | [finite_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant792a1600faab13b58e75067d3202a7fef31c3d4a85d5bcf1cac3f00a4bb8fc4b.lean/declarations/finite-range--d7ea748f61da820748b103bf.md) | 60 | `declaration-track:d7ea748f61da820748b103bf02977147d1ffe0f07bd54975109ab58a76b7031c` |
| 3 | `instance` | [finite_replacement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant792a1600faab13b58e75067d3202a7fef31c3d4a85d5bcf1cac3f00a4bb8fc4b.lean/declarations/finite-replacement--292720b5a32f2d12c971ede4.md) | 65 | `declaration-track:292720b5a32f2d12c971ede420ed83965c97562808bf5935cf661c9072b1f584` |
| 4 | `theorem` | [finite_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant792a1600faab13b58e75067d3202a7fef31c3d4a85d5bcf1cac3f00a4bb8fc4b.lean/declarations/finite-range--dfb5454ad8bf7a26f17a0c8a.md) | 85 | `result-track:dfb5454ad8bf7a26f17a0c8abd3f3c877b141e6b545044fc22c2e2f59ed232c0` |
| 5 | `theorem` | [Finite.dependent_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variant792a1600faab13b58e75067d3202a7fef31c3d4a85d5bcf1cac3f00a4bb8fc4b.lean/declarations/finite-dependent-image--53d9969b9811f0820c5d2628.md) | 88 | `result-track:53d9969b9811f0820c5d26280668c4381d7d68300de85c5fb95f4de0507a862f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
