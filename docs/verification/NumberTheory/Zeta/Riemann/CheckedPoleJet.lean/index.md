# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CheckedPoleJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64a511b0d114f6f7d8aa83cfba33256c23053d80",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64a511b0d114f6f7d8aa83cfba33256c23053d80`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.CheckedIntegerPower`](../../../../../mathematics/Analysis/ErrorBounds/CheckedIntegerPower.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalJetStateFold`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Packet](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/packet--33e01aa158bf80369defad21.md) | 27 | `declaration-track:33e01aa158bf80369defad21ff2fcde9b04999a2b675e13b3aee7811c40edab2` |
| 2 | `abbrev` | [Accum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/accum--a7eeafe8fd7d90127e544cc5.md) | 30 | `declaration-track:a7eeafe8fd7d90127e544cc51460f94fd736e5cd9e4814a64eb76ce447d13a4e` |
| 3 | `def` | [initial](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/initial--ed898533edd09cbceeed9daf.md) | 32 | `declaration-track:ed898533edd09cbceeed9daf4fcf251926894608b50948a093dd1421e4a1887e` |
| 4 | `def` | [advance](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/advance--5ffc7cc31a6de76311e88018.md) | 37 | `declaration-track:5ffc7cc31a6de76311e8801834f5b8dd930b67f84df2386c47c29850fde78a9d` |
| 5 | `def` | [referenceStep](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/referencestep--3057b4921ada1158154ff240.md) | 42 | `declaration-track:3057b4921ada1158154ff240692479c464bbd7ea51ed1b3c8dc4a21f0d92888e` |
| 6 | `def` | [referenceState](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/referencestate--121de7d83402862f174c1c80.md) | 45 | `declaration-track:121de7d83402862f174c1c805e5d999f21ee0f3be40a533998bdc24121e95a54` |
| 7 | `theorem` | [reference_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/reference-zero--b0fd9c068f256d40806432dc.md) | 49 | `result-track:b0fd9c068f256d40806432dc454d17c9574e95b6bce2ab26eadbde81e6a7e6d6` |
| 8 | `theorem` | [reference_succ](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/reference-succ--435c3df020638f8763ec964d.md) | 52 | `result-track:435c3df020638f8763ec964db4566e855849c6699bfb2d828133814fd20e5446` |
| 9 | `theorem` | [run_reference](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/run-reference--03182f12bae9b68fa639351f.md) | 56 | `result-track:03182f12bae9b68fa639351f5da9c85603d24698737549630d14cbdded5c1755` |
| 10 | `def` | [scan](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/scan--9bddbec53dbf12a685c20df1.md) | 63 | `declaration-track:9bddbec53dbf12a685c20df1c7aa90160a66de01d0cbafa1a4861a00befb2486` |
| 11 | `theorem` | [scan_refines](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/scan-refines--20a022687df9bbc59bdc4bb7.md) | 75 | `result-track:20a022687df9bbc59bdc4bb7f0ac22d19a11639644fb6d655d89332227a5aa95` |
| 12 | `theorem` | [scan_shape](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/scan-shape--7a65cb322bcf74414f1311ed.md) | 99 | `result-track:7a65cb322bcf74414f1311ed8bc4dbb3f625d97910e80ab4d3d59e0ab24c81b5` |
| 13 | `theorem` | [scan_complete](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/scan-complete--1dfca8ea64d193642c6f657a.md) | 125 | `result-track:1dfca8ea64d193642c6f657ab5c2a0897214018ae3ae528bc68272051e871364` |
| 14 | `def` | [finish](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/finish--5e0601207f18cf989b973f91.md) | 148 | `declaration-track:5e0601207f18cf989b973f91cf6d51562915a50803bffce32b536b715dfe1979` |
| 15 | `theorem` | [finish_reference](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/finish-reference--a047537d960c6300c0f0c7fd.md) | 157 | `result-track:a047537d960c6300c0f0c7fd014a2c11eda642a79a20c4e0c1c91aa6fd7678bc` |
| 16 | `def` | [finite](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/finite--039a4a4a13fa18cc3b7b69e8.md) | 164 | `declaration-track:039a4a4a13fa18cc3b7b69e870f6e7de8b3ab7287e9be3dc92f080b95d15b152` |
| 17 | `theorem` | [finite_refines](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/finite-refines--9c7cb23f7f410301d78b5696.md) | 169 | `result-track:9c7cb23f7f410301d78b569635fecc2c5d3502be32174f66463ef99912345074` |
| 18 | `theorem` | [finite_shape](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/finite-shape--d83f692b4a6a7d5ba91e94dc.md) | 182 | `result-track:d83f692b4a6a7d5ba91e94dc7e2e50bd3f145adb4758fc1199aafa430d75d9a7` |
| 19 | `theorem` | [exists_finite_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/exists-finite-iff--9fb9e9672ce3127260771474.md) | 191 | `result-track:9fb9e9672ce3127260771474391b26b92b716e80172981d59e6f19fbc58d0973` |
| 20 | `def` | [fromFinite](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/fromfinite--88ff3a4e0da7251ac6962042.md) | 206 | `declaration-track:88ff3a4e0da7251ac6962042fc49e1d7eafda5f4c41b28ffb58b5f1238f730d2` |
| 21 | `theorem` | [fromFinite_reference](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/fromfinite-reference--1c6ae08f2383844bb30ae350.md) | 216 | `result-track:1c6ae08f2383844bb30ae3506dc2fae08ca60d53b197cda12c54b3fff9acc974` |
| 22 | `def` | [evaluate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/evaluate--09e49817d93eec6de6861267.md) | 224 | `declaration-track:09e49817d93eec6de6861267f9fa831d5821edbf48f0f0ae79b20ddedc8bb4f0` |
| 23 | `theorem` | [evaluate_refines](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/evaluate-refines--ac0dd9aac8f8fdfecfdf550f.md) | 228 | `result-track:ac0dd9aac8f8fdfecfdf550f0c8f32cdf49e9b95f3766d324ef5a4f1bc4f245b` |
| 24 | `def` | [checkPatch](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/checkpatch--4870227594eca030bdd2e0c3.md) | 241 | `declaration-track:4870227594eca030bdd2e0c34f91a1f26cd399a4dca4831d128f0ffe1a522532` |
| 25 | `theorem` | [checkPatch_refines](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/checkpatch-refines--840a789f75a98bfdd202b240.md) | 247 | `result-track:840a789f75a98bfdd202b240fff0f61bdd7345f847aa522747a659871c46d1ff` |
| 26 | `theorem` | [exists_patch_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/exists-patch-iff--238607d57b88d72282f4da87.md) | 263 | `result-track:238607d57b88d72282f4da87ff17a7a01d0902d4199b1a2a952b994062663b9e` |
| 27 | `theorem` | [checkPatch_jet_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/declarations/checkpatch-jet-sound--2b61fa21906668e0ecaa797e.md) | 276 | `result-track:2b61fa21906668e0ecaa797efab69f6b842d2af29eb02852bdfb03f509e74c2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
