# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitFullFrequencyL2Reduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1ccaa4993b87f4561c29feeb50392beaece4c04",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1ccaa4993b87f4561c29feeb50392beaece4c04`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitFrequencyL2Reduction`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Analysis.Fourier.FiniteAbelian.Orthogonality` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_sq_regularRepresentatives_le_univ](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/declarations/sum-sq-regularrepresentatives-le-univ--f1b5c7b907d8ff52417fbff8.md) | 45 | `result-track:f1b5c7b907d8ff52417fbff8ff37362bcc1aeac2c750889fdf07868a9b86d223` |
| 2 | `theorem` | [sqrt_sum_sq_regularRepresentatives_le_univ](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/declarations/sqrt-sum-sq-regularrepresentatives-le-univ--9d04884243e80929008eb70a.md) | 54 | `result-track:9d04884243e80929008eb70a2a7cce3ba1b2e8979c3215f7d081b7f6413a9fbb` |
| 3 | `def` | [twoNonunitRegularShiftParityFullFrequencyL2Majorant](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/declarations/twononunitregularshiftparityfullfrequencyl2majorant--ce90e6e7fdb7393d90cd159d.md) | 65 | `declaration-track:ce90e6e7fdb7393d90cd159d5f1433aed3d9b6de4fbf845c2d2260f776d20ee3` |
| 4 | `theorem` | [regularShiftParityFrequencyL2Majorant_le_fullFrequency](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/declarations/regularshiftparityfrequencyl2majorant-le-fullfrequency--aa0badf66b0a3a69208b7baf.md) | 81 | `result-track:aa0badf66b0a3a69208b7bafcf7711be6bdb96a55671a1702b807783367e8cad` |
| 5 | `def` | [twoNonunitRegularShiftParityFullFrequencyL2EndpointMajorant](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/declarations/twononunitregularshiftparityfullfrequencyl2endpointmajorant--f5dd2cd92288ca43609858a3.md) | 103 | `declaration-track:f5dd2cd92288ca43609858a3982ed72531fe8a105e994cd9d983517148637803` |
| 6 | `theorem` | [regularShiftParityFrequencyL2EndpointMajorant_le_fullFrequency](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/declarations/regularshiftparityfrequencyl2endpointmajorant-le-fullfrequency--93bd7b82376500377a5bddb9.md) | 115 | `result-track:93bd7b82376500377a5bddb942ac1236d46080b49833098a80dafc08c7ca8583` |
| 7 | `def` | [DyadicNaturalScaleRegularShiftParityFullFrequencyL2Budget](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/declarations/dyadicnaturalscaleregularshiftparityfullfrequencyl2budget--0e33f0d1d53a360853271eef.md) | 135 | `declaration-track:0e33f0d1d53a360853271eef3dfbf403031f8d4d1ff2b45f407c20b60044a606` |
| 8 | `theorem` | [regularShiftParityFrequencyL2Budget_of_fullFrequency](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/declarations/regularshiftparityfrequencyl2budget-of-fullfrequency--5e48ffebc08b521d2e2f0e0e.md) | 144 | `result-track:5e48ffebc08b521d2e2f0e0e62d27742e0631b86b59271867852019c5383baee` |
| 9 | `def` | [regularFullFrequencyL2ToCanonicalFrequencyL2Adapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/declarations/regularfullfrequencyl2tocanonicalfrequencyl2adapter--edf4cce8803afb653466d178.md) | 156 | `declaration-track:edf4cce8803afb653466d17883e1f5033bd77140cbaa78b202bfb75fc4d5aa42` |
| 10 | `theorem` | [naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_regularFullFrequencyL2](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/declarations/naturalscalecongruencel1-of-two-pointwisemertens-twounit-regularfullfreq--e452daac772f967ac649e858.md) | 163 | `result-track:e452daac772f967ac649e8583171175dea3df04daf2e6285dfce4206b7775fd7` |
| 11 | `def` | [stdAddCharResidueFourier](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/declarations/stdaddcharresiduefourier--38c2ce5035f40de346eb9598.md) | 176 | `declaration-track:38c2ce5035f40de346eb9598aebbf1475c4d4d0031ecb89ef58b7bb08567f964` |
| 12 | `def` | [StdAddCharSquareModulusParseval](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/declarations/stdaddcharsquaremodulusparseval--6a2dfd44d16468f7aa517ae8.md) | 188 | `declaration-track:6a2dfd44d16468f7aa517ae8a4bcf902bed82c1ccfec23f7394047e879345440` |
| 13 | `structure` | [StdAddCharSquareModulusParsevalSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/declarations/stdaddcharsquaremodulusparsevalsourcedata--ad0233e7c28bbd57b2f198cb.md) | 197 | `declaration-track:ad0233e7c28bbd57b2f198cb80dd98487c2729c27db59275ca7afe3c9af83641` |
| 14 | `def` | [StdAddCharSquareModulusParsevalSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/declarations/stdaddcharsquaremodulusparsevalsource--cdc53fe5a7de9b8b79fb1ba5.md) | 208 | `declaration-track:cdc53fe5a7de9b8b79fb1ba5fdab5b8da02f630e0a6e9c7021b2c0dccdf7915b` |
| 15 | `structure` | [ToStdAddCharSquareModulusParsevalAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/declarations/tostdaddcharsquaremodulusparsevaladapter--bdbc86d7c22b9c2cfe870203.md) | 221 | `declaration-track:bdbc86d7c22b9c2cfe8702034ce17dcb71c5cc0802dcd0adc3a6f4078798bbbc` |
| 16 | `abbrev` | [StdAddCharSquareModulusParsevalAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitFullFrequencyL2Reduction.lean/declarations/stdaddcharsquaremodulusparsevaladapter--ae19cf0bbfb9a7ce8ee2c1d3.md) | 226 | `declaration-track:ae19cf0bbfb9a7ce8ee2c1d3f03b1667f9646356b211b28096ac61c906015ba5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
