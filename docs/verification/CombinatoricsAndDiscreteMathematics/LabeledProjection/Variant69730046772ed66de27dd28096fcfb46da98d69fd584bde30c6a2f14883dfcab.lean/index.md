# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.LabeledProjection.Variant69730046772ed66de27dd28096fcfb46da98d69fd584bde30c6a2f14883dfcab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25d85c9872a305c73b9d68a2da84850ae8f38d72",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant69730046772ed66de27dd28096fcfb46da98d69fd584bde30c6a2f14883dfcab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant69730046772ed66de27dd28096fcfb46da98d69fd584bde30c6a2f14883dfcab.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant69730046772ed66de27dd28096fcfb46da98d69fd584bde30c6a2f14883dfcab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25d85c9872a305c73b9d68a2da84850ae8f38d72`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant69730046772ed66de27dd28096fcfb46da98d69fd584bde30c6a2f14883dfcab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant69730046772ed66de27dd28096fcfb46da98d69fd584bde30c6a2f14883dfcab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.DerivedLabel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LabelNormalizedProjectionCode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant69730046772ed66de27dd28096fcfb46da98d69fd584bde30c6a2f14883dfcab.lean/declarations/labelnormalizedprojectioncode--6df1e7c6cb6cc4b86f2f0c36.md) | 29 | `declaration-track:6df1e7c6cb6cc4b86f2f0c36e5fd56118e6faeac01074b15bf3ddf9bf6a4fcf9` |
| 2 | `def` | [labeledProjectionCode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant69730046772ed66de27dd28096fcfb46da98d69fd584bde30c6a2f14883dfcab.lean/declarations/labeledprojectioncode--c68fb56a9e1d2f173378d35c.md) | 34 | `declaration-track:c68fb56a9e1d2f173378d35c12ecc10af5bbbf0c98821efbd0173d722d95ef63` |
| 3 | `theorem` | [labeledProjectionCode_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant69730046772ed66de27dd28096fcfb46da98d69fd584bde30c6a2f14883dfcab.lean/declarations/labeledprojectioncode-injective--26b6199fd1e7c20fbad52339.md) | 41 | `result-track:26b6199fd1e7c20fbad523398ad1470f68baf824502b0e37247b03e1d50d0dff` |
| 4 | `def` | [liftProjectionOrbit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant69730046772ed66de27dd28096fcfb46da98d69fd584bde30c6a2f14883dfcab.lean/declarations/liftprojectionorbit--6c7685b36a70245730c215e0.md) | 50 | `declaration-track:6c7685b36a70245730c215e06cb1054298b4e32e545ed779202e698f32a04a5e` |
| 5 | `theorem` | [liftProjectionOrbit_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant69730046772ed66de27dd28096fcfb46da98d69fd584bde30c6a2f14883dfcab.lean/declarations/liftprojectionorbit-mem--02321969c3e6e288e632711c.md) | 62 | `result-track:02321969c3e6e288e632711c82b07111801f31615137377ac1e2d5114a1b614d` |
| 6 | `theorem` | [liftProjectionOrbit_minimal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant69730046772ed66de27dd28096fcfb46da98d69fd584bde30c6a2f14883dfcab.lean/declarations/liftprojectionorbit-minimal--0f60d61ba42b04398d8f8610.md) | 74 | `result-track:0f60d61ba42b04398d8f8610bea6239737287096e453c7a27e846668d2b393ad` |
| 7 | `theorem` | [liftProjectionOrbit_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LabeledProjection/Variant69730046772ed66de27dd28096fcfb46da98d69fd584bde30c6a2f14883dfcab.lean/declarations/liftprojectionorbit-unique--0edd840ac05633e3ee9b569e.md) | 90 | `result-track:0edd840ac05633e3ee9b569e1521ec588da119bc356b38fc71a67e03170cf0f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
