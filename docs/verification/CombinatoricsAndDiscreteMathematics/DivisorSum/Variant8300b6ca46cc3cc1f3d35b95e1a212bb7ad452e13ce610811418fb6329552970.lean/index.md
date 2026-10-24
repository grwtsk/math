# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DivisorSum.Variant8300b6ca46cc3cc1f3d35b95e1a212bb7ad452e13ce610811418fb6329552970

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3601cbd227fcc663339d52ebac04da6552e7a747",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorSum/Variant8300b6ca46cc3cc1f3d35b95e1a212bb7ad452e13ce610811418fb6329552970.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorSum/Variant8300b6ca46cc3cc1f3d35b95e1a212bb7ad452e13ce610811418fb6329552970.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorSum/Variant8300b6ca46cc3cc1f3d35b95e1a212bb7ad452e13ce610811418fb6329552970.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3601cbd227fcc663339d52ebac04da6552e7a747`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DivisorSum/Variant8300b6ca46cc3cc1f3d35b95e1a212bb7ad452e13ce610811418fb6329552970.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DivisorSum/Variant8300b6ca46cc3cc1f3d35b95e1a212bb7ad452e13ce610811418fb6329552970.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.MultiplicativeFunction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatDivisors` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorSum/Variant8300b6ca46cc3cc1f3d35b95e1a212bb7ad452e13ce610811418fb6329552970.lean/declarations/divisorsum--5d2e879ddd6d51df08f8afb3.md) | 16 | `declaration-track:5d2e879ddd6d51df08f8afb328adb5ca5a00610c18c92d0352b67b29fec8e199` |
| 2 | `theorem` | [divisorSum_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorSum/Variant8300b6ca46cc3cc1f3d35b95e1a212bb7ad452e13ce610811418fb6329552970.lean/declarations/divisorsum-one--97be39ad4d48adb3efc4ec10.md) | 21 | `result-track:97be39ad4d48adb3efc4ec107a5ccb0ac83bd47ce1729e00059268d5f949a24a` |
| 3 | `theorem` | [divisorSum_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DivisorSum/Variant8300b6ca46cc3cc1f3d35b95e1a212bb7ad452e13ce610811418fb6329552970.lean/declarations/divisorsum-congr--81efa7fc78578d3e7b58a08e.md) | 27 | `result-track:81efa7fc78578d3e7b58a08ebd356a48f1a9568895fec495acb4b58ad88e9f02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
