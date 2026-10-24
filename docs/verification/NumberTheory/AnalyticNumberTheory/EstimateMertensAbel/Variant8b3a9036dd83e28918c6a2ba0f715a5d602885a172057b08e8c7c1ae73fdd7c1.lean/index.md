# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateMertensAbel.Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e5478b884c6c54c4fa9fe555b47d28ba95530aa",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e5478b884c6c54c4fa9fe555b47d28ba95530aa`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realMoebius](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/declarations/realmoebius--d2bb0a803894d8cc03ec55da.md) | 36 | `declaration-track:d2bb0a803894d8cc03ec55dadfc76cc0b266b68e898892ac41adf4fcfd157414` |
| 2 | `theorem` | [realMoebius_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/declarations/realmoebius-zero--d6a1b29d154b1bc9ed4763ea.md) | 40 | `result-track:d6a1b29d154b1bc9ed4763ead1a3dd33cef7068149a00b1e52109412de1d1c05` |
| 3 | `def` | [mertens](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/declarations/mertens--8f1807c50279b39f1842d3d3.md) | 45 | `declaration-track:8f1807c50279b39f1842d3d3b77986a65a7f231a136cc40253360f4c2bf9a384` |
| 4 | `def` | [mertensNat](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/declarations/mertensnat--64a882355855a4292dcae5ef.md) | 49 | `declaration-track:64a882355855a4292dcae5ef5b5156493abc0d2e1223bb50c30b3600861f0527` |
| 5 | `theorem` | [mertens_natCast](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/declarations/mertens-natcast--a1a8631560a94c1fbb67820c.md) | 53 | `result-track:a1a8631560a94c1fbb67820ca92e7766f872cbe73b2e00043c64858fffc84cc6` |
| 6 | `theorem` | [mobius_abel](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/declarations/mobius-abel--f52d298f63562a3ffe23e25f.md) | 58 | `result-track:f52d298f63562a3ffe23e25fc39b8cc17f7beeacde1abcd258da9c50671aeac0` |
| 7 | `theorem` | [mobius_abel_commuted](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/declarations/mobius-abel-commuted--11f9df37fea54031358f922d.md) | 76 | `result-track:11f9df37fea54031358f922d3feeff6e539ed621d2ac4934109304018d09abda` |
| 8 | `def` | [sourceLower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/declarations/sourcelower--b6c82c7f65446b0bbee01400.md) | 107 | `declaration-track:b6c82c7f65446b0bbee0140018e6ce938cdfe585458a600ddd240f69adf9f95d` |
| 9 | `def` | [sourceUpper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/declarations/sourceupper--cfa2219fa2ebebf69887084d.md) | 110 | `declaration-track:cfa2219fa2ebebf69887084d0b3b1815bce16d039bbcfef95f46df74ab39a569` |
| 10 | `def` | [mertensKernelIntegral](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/declarations/mertenskernelintegral--ab9097d8e8d16ae61f23b443.md) | 113 | `declaration-track:ab9097d8e8d16ae61f23b443f630fb0d5785bdb6ac967a5ebb0c037347101a5b` |
| 11 | `theorem` | [source_window_abel](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/declarations/source-window-abel--a0b4acdc8fa8520dcf36e365.md) | 118 | `result-track:a0b4acdc8fa8520dcf36e365bd34f31f1d65f18859a13437f7fb3d6ccf53d3e5` |
| 12 | `theorem` | [source_window_abel_of_upper_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/declarations/source-window-abel-of-upper-zero--5e6719be8056b851f305aca0.md) | 159 | `result-track:5e6719be8056b851f305aca019aedacd28a717a816644b3068b505128adcc483` |
| 13 | `def` | [SourceMobiusKernelContract](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/declarations/sourcemobiuskernelcontract--1e414f808e5dc6a609140f43.md) | 181 | `declaration-track:1e414f808e5dc6a609140f43ff691ab9abb1361e1672abadb037334afbf5fffc` |
| 14 | `theorem` | [abel_identity_of_source_kernel_contract](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/declarations/abel-identity-of-source-kernel-contract--ad30d537ec7da07f65e004d0.md) | 198 | `result-track:ad30d537ec7da07f65e004d0ecd6176a56f4ed2fc1a567c19f737092567ca14c` |
| 15 | `def` | [MertensAbelCheckpoint](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/declarations/mertensabelcheckpoint--b151ad10d24742be936fd985.md) | 212 | `declaration-track:b151ad10d24742be936fd985ffb497ffc6a065b8e198abb26fb18eeb275097f1` |
| 16 | `theorem` | [mertens_abel_checkpoint](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant8b3a9036dd83e28918c6a2ba0f715a5d602885a172057b08e8c7c1ae73fdd7c1.lean/declarations/mertens-abel-checkpoint--bc272af961b797b64d2fe554.md) | 222 | `result-track:bc272af961b797b64d2fe55476ed4da94d8302214e1d6d4bd5cb7560fcec65a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
