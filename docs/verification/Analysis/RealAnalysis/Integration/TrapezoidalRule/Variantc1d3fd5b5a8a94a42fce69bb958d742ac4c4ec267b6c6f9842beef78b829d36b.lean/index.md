# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.TrapezoidalRule.Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ade5edfecdaede77825cfc313a5a58d8ae303a92",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ade5edfecdaede77825cfc313a5a58d8ae303a92`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trapezoidal_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean/declarations/trapezoidal-integral--432df85716419dfcc5e95011.md) | 41 | `declaration-track:432df85716419dfcc5e9501103e68d86c10a2e0bc4912202971ddaa54da7a56b` |
| 2 | `def` | [trapezoidal_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean/declarations/trapezoidal-error--8fc59cf718f54bd412a0d4f7.md) | 45 | `declaration-track:8fc59cf718f54bd412a0d4f75d471eee7fcde73c720d89259b8e6282695a67fb` |
| 3 | `theorem` | [trapezoidal_integral_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean/declarations/trapezoidal-integral-symm--b53d71fe7fde510b3eccde3b.md) | 50 | `result-track:b53d71fe7fde510b3eccde3b9924ab37fca3eddabb80640cd16c8fe625b83a1f` |
| 4 | `theorem` | [trapezoidal_error_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean/declarations/trapezoidal-error-symm--787a491805b23fd0e1479f49.md) | 63 | `result-track:787a491805b23fd0e1479f4974189f0246cb1f85c35be5b555fd982577fc8c54` |
| 5 | `theorem` | [trapezoidal_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean/declarations/trapezoidal-integral-eq--1f1e93298983a01f535294df.md) | 70 | `result-track:1f1e93298983a01f535294df68451c66ec5aace61aebc50f137e484fb1574c7c` |
| 6 | `theorem` | [trapezoidal_error_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean/declarations/trapezoidal-error-eq--a4ded6bee15f15c396a0a5ec.md) | 75 | `result-track:a4ded6bee15f15c396a0a5ec42775e32e4d9d4c20035c8d9d24c0e4536ca0fa0` |
| 7 | `theorem` | [trapezoidal_integral_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean/declarations/trapezoidal-integral-one--2d01af2067259114e60a0607.md) | 80 | `result-track:2d01af2067259114e60a06079cb885f2273318dd7dadefd5b85f19df95ce76be` |
| 8 | `theorem` | [sum_trapezoidal_integral_adjacent_intervals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean/declarations/sum-trapezoidal-integral-adjacent-intervals--6d2584e55836f6d83f9bc661.md) | 87 | `result-track:6d2584e55836f6d83f9bc661812c6c036591f07cea18267c34998da81941f42c` |
| 9 | `theorem` | [trapezoidal_integral_ext](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean/declarations/trapezoidal-integral-ext--836a4a2ce32ff569de79ac5e.md) | 98 | `result-track:836a4a2ce32ff569de79ac5e387fcd9a769b966d9883b6036321a9fac0e0bb24` |
| 10 | `theorem` | [sum_trapezoidal_error_adjacent_intervals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean/declarations/sum-trapezoidal-error-adjacent-intervals--0d50e59939015d870fae55fa.md) | 108 | `result-track:0d50e59939015d870fae55faf0916484e2a2f15171902b12ec956fd2b7f2a00e` |
| 11 | `lemma` | [trapezoidal_error_le_of_lt'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean/declarations/trapezoidal-error-le-of-lt--9ede33827a1a23098da9f5dd.md) | 127 | `result-track:9ede33827a1a23098da9f5dd68b564f301260ff41e92608e97e1a840cc552554` |
| 12 | `lemma` | [trapezoidal_error_le_of_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean/declarations/trapezoidal-error-le-of-lt--6159d9c464f9a9cc8c1a0dca.md) | 184 | `result-track:6159d9c464f9a9cc8c1a0dcaf0a80633ad3062cc8cc164ddb0185fce038e4127` |
| 13 | `theorem` | [trapezoidal_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean/declarations/trapezoidal-error-le--242be12582346ee28b31ddce.md) | 233 | `result-track:242be12582346ee28b31ddced8463bd098d3cc6aceb2f98736ea4242cb0cc105` |
| 14 | `theorem` | [trapezoidal_error_le_of_c2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TrapezoidalRule/Variantc1d3fd5b5a8a94a42fce69bb958d742ac4c4ec267b6c6f9842beef78b829d36b.lean/declarations/trapezoidal-error-le-of-c2--5cc0bc786bd0ae3f199c9223.md) | 253 | `result-track:5cc0bc786bd0ae3f199c92230a83cb0038fb452225cf456ad3d1d315ca3d86be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
