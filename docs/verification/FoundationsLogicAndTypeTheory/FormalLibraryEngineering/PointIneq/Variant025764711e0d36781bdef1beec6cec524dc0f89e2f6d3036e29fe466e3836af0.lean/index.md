# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PointIneq.Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "486298d88e2b3fff2827ef76be81812157e95648",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `486298d88e2b3fff2827ef76be81812157e95648`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.IntervalAuto.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto.Bound` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Validity.Bounds` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Validity.DyadicBounds` — import line 14; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.BoundVerify` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [proveClosedExpressionBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0.lean/declarations/proveclosedexpressionbound--e13cf85a7f27db9bde2ab5b2.md) | 36 | `declaration-track:e13cf85a7f27db9bde2ab5b22ca353d1db43aec3671b79c2b3dc8461597b5137` |
| 2 | `def` | [intervalDecideCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0.lean/declarations/intervaldecidecore--3439f96fc28f458db0f2a25f.md) | 382 | `declaration-track:3439f96fc28f458db0f2a25f710baade473f72078674090826fa1e1739653b86` |
| 3 | `def` | [ratCeilAbs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0.lean/declarations/ratceilabs--91ea4c286e74d3f870b163c9.md) | 500 | `declaration-track:91ea4c286e74d3f870b163c94706a4f2bfccf1214291e1fcdcc16a6da37374c3` |
| 4 | `def` | [expReduceKMeta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0.lean/declarations/expreducekmeta--36a9ef4d600d7aa9f71c1f8d.md) | 506 | `declaration-track:36a9ef4d600d7aa9f71c1f8d10a4ba1758a892246b6cb63646c4f641fbfcd5a0` |
| 5 | `def` | [expDepthEstimate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0.lean/declarations/expdepthestimate--de397aa8d840a6353ba098ff.md) | 511 | `declaration-track:de397aa8d840a6353ba098fffcce7858f5d3f6e48cb65c0f08d3adcb9b3efb7c` |
| 6 | `def` | [estimateTranscendentalDepth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0.lean/declarations/estimatetranscendentaldepth--38a12c6c5c3e9f730a542e67.md) | 520 | `declaration-track:38a12c6c5c3e9f730a542e6793439904d0cb1a9ed07ce52294bc80168faf7eaa` |
| 7 | `def` | [flattenAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0.lean/declarations/flattenadd--a3ff1162b12ee6849bab49fe.md) | 581 | `declaration-track:a3ff1162b12ee6849bab49fe00bcef7a628723cf4c8ee1e35b63bd386594c122` |
| 8 | `def` | [rebuildSum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0.lean/declarations/rebuildsum--643b54ef07468172d232981a.md) | 590 | `declaration-track:643b54ef07468172d232981a00fb3c6087979014dbf2019cc30394e778b787b1` |
| 9 | `def` | [computeUpperBoundExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0.lean/declarations/computeupperboundexpr--cc5dc22a97736e8bece12ff4.md) | 600 | `declaration-track:cc5dc22a97736e8bece12ff4a9033a2cb367899b44c324a34d6aa6109f8a3758` |
| 10 | `def` | [trySumSplitting](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0.lean/declarations/trysumsplitting--d14656e3e5510df975afbe64.md) | 618 | `declaration-track:d14656e3e5510df975afbe6416cce5e3154a3c7bcce5806b051d9a70df68298d` |
| 11 | `def` | [parseCeilPlusOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0.lean/declarations/parseceilplusoffset--c5e51af4b92303528e74e7d7.md) | 680 | `declaration-track:c5e51af4b92303528e74e7d738aeee3809054a086f820a6806a772dd8627f069` |
| 12 | `def` | [tryCeilPreprocess](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0.lean/declarations/tryceilpreprocess--24714e32a19ce7934cea01e1.md) | 713 | `declaration-track:24714e32a19ce7934cea01e1aaa52e61bdbfae0a237b9c849cfa9b598b24194c` |
| 13 | `def` | [intervalDecideSingle](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0.lean/declarations/intervaldecidesingle--8f8746029b593f02c514868c.md) | 785 | `declaration-track:8f8746029b593f02c514868cc25479839891d3bf89d2ef69ae0a5a825ab278f0` |
| 14 | `def` | [intervalDecideWithConnectives](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0.lean/declarations/intervaldecidewithconnectives--b69291cc8cf5b078824b702f.md) | 855 | `declaration-track:b69291cc8cf5b078824b702f00fe39187489681ce59f63c159872aa199415075` |
| 15 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variant025764711e0d36781bdef1beec6cec524dc0f89e2f6d3036e29fe466e3836af0.lean/declarations/elab--b11fe8d03aab1e8fe7b0ce5f.md) | 885 | `declaration-track:b11fe8d03aab1e8fe7b0ce5fc32e9bb59244cb42f88578b75c8204138d87c58b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
