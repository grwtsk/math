# Verification target: GRWTSK.NumberTheory.Moebius.MertensDyadicGeometricEnvelope

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74a87969887ecee95536db010bad2b0434389bbf",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74a87969887ecee95536db010bad2b0434389bbf`.

Source path: `GRWTSK/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ParityMertensDyadicReconstruction`](../../../../mathematics/NumberTheory/Moebius/ParityMertensDyadicReconstruction.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.Algebra.Field.GeomSum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dyadicMertensSquareRootEpsilonScale](../../../../mathematics/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/declarations/dyadicmertenssquarerootepsilonscale--8fdadae24945394fcc4092e2.md) | 44 | `declaration-track:8fdadae24945394fcc4092e2db8bda1481ed07d6aea72368eca1c014ce342e2a` |
| 2 | `theorem` | [dyadicMertensSquareRootEpsilonScale_nonneg](../../../../mathematics/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/declarations/dyadicmertenssquarerootepsilonscale-nonneg--36e4572001b8adfb7cbc8460.md) | 50 | `result-track:36e4572001b8adfb7cbc8460ec0a89aa22ede2493a6830c3660dbeaa627a64e4` |
| 3 | `theorem` | [dyadicMertensSquareRootEpsilonScale_sq](../../../../mathematics/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/declarations/dyadicmertenssquarerootepsilonscale-sq--91d430e370fe6b313fc26b7c.md) | 57 | `result-track:91d430e370fe6b313fc26b7c39e28425c9e578a67b4dc3a418573ff565a9a6d8` |
| 4 | `theorem` | [dyadicMertensSquareRootEpsilonScale_sq_le_target](../../../../mathematics/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/declarations/dyadicmertenssquarerootepsilonscale-sq-le-target--2564594106ef2868a8bad796.md) | 77 | `result-track:2564594106ef2868a8bad796b4e99fdcd446ad9137a138df9cd91f96b87bcdea` |
| 5 | `theorem` | [finiteGeometricSum_le_invOneSub](../../../../mathematics/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/declarations/finitegeometricsum-le-invonesub--28041054033f785f3a3525d1.md) | 92 | `result-track:28041054033f785f3a3525d1eefc7654d4a6a5bfa2335a9b4d0312986d81a035` |
| 6 | `theorem` | [ordinaryMertensDyadicTailMass_le_geometric](../../../../mathematics/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/declarations/ordinarymertensdyadictailmass-le-geometric--37643e69f4c85a559337a139.md) | 104 | `result-track:37643e69f4c85a559337a1397302225bb08a0ce77633051c65da1ff5702be0f3` |
| 7 | `def` | [DyadicOrdinaryMertensGeometricEnvelope](../../../../mathematics/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/declarations/dyadicordinarymertensgeometricenvelope--886b8952533e2b522ab20f57.md) | 134 | `declaration-track:886b8952533e2b522ab20f57cbf8608148f4552811e165981c8f19ab026e7ea6` |
| 8 | `theorem` | [sq_tail_le_dyadic_target_of_geometric](../../../../mathematics/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/declarations/sq-tail-le-dyadic-target-of-geometric--443f3b3bc393af6abf3817b7.md) | 148 | `result-track:443f3b3bc393af6abf3817b75a31ee3c9a693a20acb703ecd302ae3d48368081` |
| 9 | `theorem` | [dyadicOrdinaryMertensTailSquareRootEnergy_of_geometricEnvelope](../../../../mathematics/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/declarations/dyadicordinarymertenstailsquarerootenergy-of-geometricenvelope--0060d4e8692c0b159dc71dc8.md) | 193 | `result-track:0060d4e8692c0b159dc71dc85d6aa79d7568484963d1e82ac4cecabc8b653b89` |
| 10 | `theorem` | [parityMertensSquareRootEnergy_of_geometricEnvelope](../../../../mathematics/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/declarations/paritymertenssquarerootenergy-of-geometricenvelope--41ef09c16aee5025a6a0d2c9.md) | 233 | `result-track:41ef09c16aee5025a6a0d2c9c2a7e075b3a91885ca1b90e557f9321703fac5bd` |
| 11 | `theorem` | [naturalScaleCongruenceL1_of_geometricEnvelope_and_nonzero](../../../../mathematics/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/declarations/naturalscalecongruencel1-of-geometricenvelope-and-nonzero--63d05ff33315a034bb85a1ec.md) | 241 | `result-track:63d05ff33315a034bb85a1ec69c2327b6c6fb05b821cf40a8557d22c4a32b904` |
| 12 | `def` | [OrdinaryMertensSquareRootPlusEpsilonEnvelope](../../../../mathematics/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/declarations/ordinarymertenssquarerootplusepsilonenvelope--a7c7ab763656ca159a021648.md) | 251 | `declaration-track:a7c7ab763656ca159a0216481efaa356a37cd8233692feebd51802071dff75f2` |
| 13 | `structure` | [PointwiseMertensToDyadicGeometricAdapter](../../../../mathematics/NumberTheory/Moebius/MertensDyadicGeometricEnvelope.lean/declarations/pointwisemertenstodyadicgeometricadapter--5f5a6e94cfff8896a8e70b18.md) | 261 | `declaration-track:5f5a6e94cfff8896a8e70b18eb2b65b51a42f9027f9065d46fc85e6196d0d59c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
