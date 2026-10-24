# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PositiveCapacity.Variant8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90c19ba5020612adeba72d27574e7146758423fc",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90c19ba5020612adeba72d27574e7146758423fc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.OperatorOrder` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeCutDefectCapacity](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b.lean/declarations/primecutdefectcapacity--22ee862d7cc37b964bdef5e1.md) | 14 | `declaration-track:22ee862d7cc37b964bdef5e194f149de508f7d7c3c2fde76ac6cc2ef331ef104` |
| 2 | `def` | [PrimeCutDefectCapacity.baseline](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b.lean/declarations/primecutdefectcapacity-baseline--73ca64d36ad55df6ff6ef750.md) | 36 | `declaration-track:73ca64d36ad55df6ff6ef750f7770f92fcca7fcbe08c9c854c85b9cc497c658f` |
| 3 | `def` | [PrimeCutDefectCapacity.reducedDefect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b.lean/declarations/primecutdefectcapacity-reduceddefect--1d3d724f089631528466f1df.md) | 45 | `declaration-track:1d3d724f089631528466f1df779494dbfc26b9187c3e1f2004049231a770c204` |
| 4 | `def` | [PrimeCutDefectCapacity.increment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b.lean/declarations/primecutdefectcapacity-increment--c2b9f9111cdb78a5fcf383b6.md) | 55 | `declaration-track:c2b9f9111cdb78a5fcf383b66790805927d67a3774de612f8268ce4549333811` |
| 5 | `theorem` | [reducedDefect_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b.lean/declarations/reduceddefect-empty--d4467fd62a9ef1f28445dbf7.md) | 67 | `result-track:d4467fd62a9ef1f28445dbf7270b4742cc919573e3c6591dd7bb27545f8487e0` |
| 6 | `theorem` | [reducedDefect_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b.lean/declarations/reduceddefect-nonnegative--15db90302a19fda07f5225ec.md) | 77 | `result-track:15db90302a19fda07f5225eca5c71f16e6ecd0ef7a0821508bca0079815ace7e` |
| 7 | `theorem` | [increment_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b.lean/declarations/increment-nonnegative--9deaedda88081e5b1680bec4.md) | 88 | `result-track:9deaedda88081e5b1680bec4cf36f093cb26ca031c6bb238c00597f445ffcd70` |
| 8 | `theorem` | [increment_selfAdjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant8fb03204736aa1474b2c2d5d5b043d95e61db80702382e0ecb3b115d998c882b.lean/declarations/increment-selfadjoint--143ee6003d603e4d5625c417.md) | 101 | `result-track:143ee6003d603e4d5625c417a5d0d5125983b36e2f630ba9bc706de3d1dcd77a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
