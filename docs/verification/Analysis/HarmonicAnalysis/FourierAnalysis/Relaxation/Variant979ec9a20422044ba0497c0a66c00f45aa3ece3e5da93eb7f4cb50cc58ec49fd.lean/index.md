# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Relaxation.Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e78c4092dec075731ac434e60661ffedd1310e3c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e78c4092dec075731ac434e60661ffedd1310e3c`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.WalshFourier.Analysis` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RelaxationParameter](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean/declarations/relaxationparameter--9215bf52f97f12ddb604de4d.md) | 8 | `declaration-track:9215bf52f97f12ddb604de4de1032575f05ff8915b2b400bfc5a12f8228c1344` |
| 2 | `def` | [laplacianEigenvalue](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean/declarations/laplacianeigenvalue--03d35e4967e8a0a15cfd99dc.md) | 15 | `declaration-track:03d35e4967e8a0a15cfd99dc36cfab7c67de26e50e1b0b767db76825c3c6e6e4` |
| 3 | `theorem` | [laplacianEigenvalue_walshCharacter](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean/declarations/laplacianeigenvalue-walshcharacter--c0fba2e9c37c215a5214b152.md) | 20 | `result-track:c0fba2e9c37c215a5214b152df4a99d197914f8119c365d574db4687bf8fef00` |
| 4 | `def` | [relaxationMultiplierNumerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean/declarations/relaxationmultipliernumerator--a4a078e87687295b721a847f.md) | 28 | `declaration-track:a4a078e87687295b721a847f11440f5f85849146e70ccf016317fef7d60ab8cb` |
| 5 | `def` | [relaxationMultiplier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean/declarations/relaxationmultiplier--3d6aa0cbe2419accc1907f60.md) | 35 | `declaration-track:3d6aa0cbe2419accc1907f60cd1c35316d4999701825723aefaf1b2689d4532c` |
| 6 | `def` | [relaxationProjectionNumerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean/declarations/relaxationprojectionnumerator--dfff8d93064d535bc68f790e.md) | 46 | `declaration-track:dfff8d93064d535bc68f790eaef5f29e528290bab769c8cb811dbc68f7f8f38b` |
| 7 | `theorem` | [relaxationProjectionNumerator_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean/declarations/relaxationprojectionnumerator-eq--87ad1ed58c923720f2fb22ed.md) | 54 | `result-track:87ad1ed58c923720f2fb22edc49e964cedb086e8f4aba97cf63466859a595017` |
| 8 | `def` | [contractionInterval](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean/declarations/contractioninterval--9fd28a59dce6533f53ca0a9c.md) | 65 | `declaration-track:9fd28a59dce6533f53ca0a9cfd2f036d9cd10d8e8cd1fe43c47c59578130d801` |
| 9 | `def` | [markovTransitionInterval](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean/declarations/markovtransitioninterval--cc7176122e468eee177a690e.md) | 69 | `declaration-track:cc7176122e468eee177a690ef2c32ac94ce331b396b1f9c9d86f75b645879317` |
| 10 | `theorem` | [contractionInterval_iff_markovTransitionInterval](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean/declarations/contractioninterval-iff-markovtransitioninterval--8a12708e8ea02b2da94386c1.md) | 73 | `result-track:8a12708e8ea02b2da94386c1e5d8c57979548e9894ae6a95a9f564d8af07db08` |
| 11 | `def` | [markovStayNumerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean/declarations/markovstaynumerator--dc0d75415d567040629d798c.md) | 81 | `declaration-track:dc0d75415d567040629d798cadf1b84c3a1cc46e0974900ca169ed5a1311b1b4` |
| 12 | `def` | [markovEdgeNumerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean/declarations/markovedgenumerator--a88d0e1ce8a2e64800e5b888.md) | 87 | `declaration-track:a88d0e1ce8a2e64800e5b8886ecc0c5a3b139e84d833ca5f15e4c5cb397c30af` |
| 13 | `theorem` | [markov_rowMass_numerator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean/declarations/markov-rowmass-numerator--2d5f4b53f49c5d8affe0f71c.md) | 96 | `result-track:2d5f4b53f49c5d8affe0f71c7f4b8c18628f6686f855c5e8cc694e72d76c1ab4` |
| 14 | `structure` | [FiniteRelaxationOperator](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean/declarations/finiterelaxationoperator--b3f244ce11f4bd0847c1df1f.md) | 112 | `declaration-track:b3f244ce11f4bd0847c1df1f7e2d56d3cc635adeffb21a5936e1914b4756a460` |
| 15 | `theorem` | [FiniteRelaxationOperator.markovTransition](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean/declarations/finiterelaxationoperator-markovtransition--133b37343c1b59b78a06afd1.md) | 118 | `result-track:133b37343c1b59b78a06afd1c0ef8de9d9b1af4f4ec8d1364f4a1d5402c73d9d` |
| 16 | `theorem` | [FiniteRelaxationOperator.markovRowMass](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean/declarations/finiterelaxationoperator-markovrowmass--5906bff2ce8b0f86b514ae4a.md) | 124 | `result-track:5906bff2ce8b0f86b514ae4ae1708bdba40a186bb8b1bd58db00a7d358b1a436` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
