# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Arctan.Variant4c795c5195e3dafe4f93d7a6324e4f05db964e4520053aa9e904b3516ce812be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9157f1c3abd10b112782ff098e68b0dc3a0587ba",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variant4c795c5195e3dafe4f93d7a6324e4f05db964e4520053aa9e904b3516ce812be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant4c795c5195e3dafe4f93d7a6324e4f05db964e4520053aa9e904b3516ce812be.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant4c795c5195e3dafe4f93d7a6324e4f05db964e4520053aa9e904b3516ce812be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9157f1c3abd10b112782ff098e68b0dc3a0587ba`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Arctan/Variant4c795c5195e3dafe4f93d7a6324e4f05db964e4520053aa9e904b3516ce812be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Arctan/Variant4c795c5195e3dafe4f93d7a6324e4f05db964e4520053aa9e904b3516ce812be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Interval.Set.Group` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [arctan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant4c795c5195e3dafe4f93d7a6324e4f05db964e4520053aa9e904b3516ce812be.lean/declarations/arctan--74f068db4faa13e60b522d36.md) | 37 | `declaration-track:74f068db4faa13e60b522d3651b1257f9be85485ab95396102edf99fec011746` |
| 2 | `theorem` | [tan_arctan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant4c795c5195e3dafe4f93d7a6324e4f05db964e4520053aa9e904b3516ce812be.lean/declarations/tan-arctan--9bc6639b4553c2389dc84389.md) | 39 | `result-track:9bc6639b4553c2389dc843890e3cbd0d98b3c1b6cfa0955c118f3105782ecb0c` |
| 3 | `lemma` | [cos_ne_zero_of_arctan_bounds](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant4c795c5195e3dafe4f93d7a6324e4f05db964e4520053aa9e904b3516ce812be.lean/declarations/cos-ne-zero-of-arctan-bounds--2ebbf870631c5734c8fff696.md) | 63 | `result-track:2ebbf870631c5734c8fff696073c214b740caf4014abd449e9ee8496cdc443c1` |
| 4 | `theorem` | [arctan_tan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant4c795c5195e3dafe4f93d7a6324e4f05db964e4520053aa9e904b3516ce812be.lean/declarations/arctan-tan--4602832812934c548fd545ed.md) | 77 | `result-track:4602832812934c548fd545ede22f5449cad9efa4d3361cd3ff9cf9edd41feebd` |
| 5 | `theorem` | [ofReal_arctan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant4c795c5195e3dafe4f93d7a6324e4f05db964e4520053aa9e904b3516ce812be.lean/declarations/ofreal-arctan--2b82c9aad8ff9b1b9e11ca42.md) | 93 | `result-track:2b82c9aad8ff9b1b9e11ca42d0d12a1a1c891415469ed740c772ac1ecfd2f5e1` |
| 6 | `lemma` | [arg_one_add_mem_Ioo](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant4c795c5195e3dafe4f93d7a6324e4f05db964e4520053aa9e904b3516ce812be.lean/declarations/arg-one-add-mem-ioo--9d2d931b268d84d528f247df.md) | 102 | `result-track:9d2d931b268d84d528f247df55f5a70d577ba8c4f62bb9d70aef9427be5f7703` |
| 7 | `lemma` | [hasSum_arctan_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant4c795c5195e3dafe4f93d7a6324e4f05db964e4520053aa9e904b3516ce812be.lean/declarations/hassum-arctan-aux--57d56ad58d3384ecc7114e5a.md) | 108 | `result-track:57d56ad58d3384ecc7114e5aa9c795cbf8e3598cdff8302a4038be2924f37294` |
| 8 | `theorem` | [hasSum_arctan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant4c795c5195e3dafe4f93d7a6324e4f05db964e4520053aa9e904b3516ce812be.lean/declarations/hassum-arctan--c13808ec44932004ee301c29.md) | 129 | `result-track:c13808ec44932004ee301c29efe52bda7387484d27e5da48449cabb6113f7690` |
| 9 | `theorem` | [Real.hasSum_arctan](../../../../../mathematics/Analysis/AsymptoticAnalysis/Arctan/Variant4c795c5195e3dafe4f93d7a6324e4f05db964e4520053aa9e904b3516ce812be.lean/declarations/real-hassum-arctan--3764f9d2b733f72d0998cc9f.md) | 151 | `result-track:3764f9d2b733f72d0998cc9f2f955c520a87c872368db818f81f99a8af5bcecc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
