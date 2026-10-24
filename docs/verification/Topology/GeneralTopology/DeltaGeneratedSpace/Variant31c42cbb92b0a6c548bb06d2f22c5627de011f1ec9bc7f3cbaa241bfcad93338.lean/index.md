# Verification target: GRWTSK.Topology.GeneralTopology.DeltaGeneratedSpace.Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a10a350e7e184ef78d37f44d48b4c5d06b028722",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a10a350e7e184ef78d37f44d48b4c5d06b028722`.

Source path: `GRWTSK/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TopologicalSpace.deltaGenerated](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/topologicalspace-deltagenerated--20c9e0f0cd0e0ba79df88118.md) | 40 | `declaration-track:20c9e0f0cd0e0ba79df88118dcaf74c754c693b030364304f0af3e1515fc3073` |
| 2 | `lemma` | [deltaGenerated_eq_coinduced](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/deltagenerated-eq-coinduced--f3677d42d91216b4a7d7afb9.md) | 44 | `result-track:f3677d42d91216b4a7d7afb921fcdd6f99becf472aa126562e00ec232854fee9` |
| 3 | `lemma` | [deltaGenerated_le](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/deltagenerated-le--66f3e64e8e7215e21fdb1fbf.md) | 49 | `result-track:66f3e64e8e7215e21fdb1fbf338896fe46476998a3d37100c0005705a709529b` |
| 4 | `lemma` | [isOpen_deltaGenerated_iff](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/isopen-deltagenerated-iff--bfe7c62036fcd0f8dc226d28.md) | 54 | `result-track:bfe7c62036fcd0f8dc226d283bb859cadd8ea1d2729d2f29fd776adcea940b6a` |
| 5 | `lemma` | [continuous_euclidean_to_deltaGenerated](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/continuous-euclidean-to-deltagenerated--551b1f0d23b256ebee7f0c60.md) | 61 | `result-track:551b1f0d23b256ebee7f0c60aaca94723411716743d0f7a51a0c73c36773d23d` |
| 6 | `lemma` | [deltaGenerated_deltaGenerated_eq](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/deltagenerated-deltagenerated-eq--85b3a16d2b87ac7d701d2ccd.md) | 69 | `result-track:85b3a16d2b87ac7d701d2ccdc142b5854ddac3ceeab15b5987ded676968a37e8` |
| 7 | `class` | [DeltaGeneratedSpace](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/deltageneratedspace--61b6e885212438a360f76da3.md) | 80 | `declaration-track:61b6e885212438a360f76da36e3be02ace1e0443022f398fca312ee772b6721b` |
| 8 | `lemma` | [eq_deltaGenerated](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/eq-deltagenerated--657f8402e42c4c2a4908f540.md) | 83 | `result-track:657f8402e42c4c2a4908f540a62525853f3e1e9339fbe54500b23eec6285cee7` |
| 9 | `lemma` | [DeltaGeneratedSpace.isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/deltageneratedspace-isopen-iff--9153c01cdf972e28562deb45.md) | 88 | `result-track:9153c01cdf972e28562deb451a019a5e1dc914ada1399d2175f21cfce20879aa` |
| 10 | `lemma` | [DeltaGeneratedSpace.continuous_iff](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/deltageneratedspace-continuous-iff--53ccee981c96743c81e5142c.md) | 94 | `result-track:53ccee981c96743c81e5142cca490ab58112929b74973ba0f99b7b868b0d100f` |
| 11 | `lemma` | [continuous_to_deltaGenerated](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/continuous-to-deltagenerated--5cbae52fdb4deb2d5f7dcd80.md) | 102 | `result-track:5cbae52fdb4deb2d5f7dcd807797ef0b4a7bde70a7221fddb08c2d4f34d49794` |
| 12 | `lemma` | [deltaGeneratedSpace_deltaGenerated](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/deltageneratedspace-deltagenerated--489c008a369e4b99453bc54f.md) | 107 | `result-track:489c008a369e4b99453bc54f907015de9fade62bc5a228b5afb456b2d7b70195` |
| 13 | `lemma` | [deltaGenerated_mono](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/deltagenerated-mono--2e4a8b2435317285ce75ea2f.md) | 111 | `result-track:2e4a8b2435317285ce75ea2f8a529d27f10abe96e82423bb382e36777fa4eb9d` |
| 14 | `def` | [of](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/of--8eb6fd092b6f919ee0806555.md) | 120 | `declaration-track:8eb6fd092b6f919ee0806555e5ee87043b579a38c136c8f8389be45d8cf72de3` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/instance--8912680ed3e5aecec4ddf613.md) | 122 | `declaration-track:8912680ed3e5aecec4ddf6137b98fa7c9cef1e7a823e43ff7e4889aa2130f52f` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/instance--c83501f9308630781fca317e.md) | 124 | `declaration-track:c83501f9308630781fca317e03b7382ca38308da91c7cb93a71692250dc67628` |
| 17 | `def` | [counit](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/counit--7654a3f52916bbcc2251d280.md) | 128 | `declaration-track:7654a3f52916bbcc2251d280ef184156775406e7189f8f504bd8b07a0d5e0bfc` |
| 18 | `lemma` | [continuous_counit](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/continuous-counit--602e01b9cb823b9c8625d2aa.md) | 130 | `result-track:602e01b9cb823b9c8625d2aa161a511f4d7fe68363370005a063614a094d00f6` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/instance--446b6009ec9f56ab0b95ff45.md) | 134 | `declaration-track:446b6009ec9f56ab0b95ff4540f9e33af1d068aa74adbbc4c0398fa92e1e3ace` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/instance--7edadea2f16f1e3e789d170d.md) | 139 | `declaration-track:7edadea2f16f1e3e789d170d9e57f3009e92e5bd2224239cef26cc3fc3d4645c` |
| 21 | `lemma` | [DeltaGeneratedSpace.coinduced](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/deltageneratedspace-coinduced--161c90f77f973ee1edf61019.md) | 147 | `result-track:161c90f77f973ee1edf61019c77eb4dd82b64b90d01918d2c0a68fe03a03a3d1` |
| 22 | `lemma` | [DeltaGeneratedSpace.iSup](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/deltageneratedspace-isup--99067681c5a732046fc4f582.md) | 153 | `result-track:99067681c5a732046fc4f5820d49d2955430ae810dd9838b1cc7b1864f63400b` |
| 23 | `lemma` | [DeltaGeneratedSpace.sup](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/deltageneratedspace-sup--d3bf28838eda294214992bab.md) | 159 | `result-track:d3bf28838eda294214992bab33e88f16433bd6be19395f71511873f5b30f9df7` |
| 24 | `lemma` | [Topology.IsQuotientMap.deltaGeneratedSpace](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/topology-isquotientmap-deltageneratedspace--217b69d763fc4ed60154c621.md) | 166 | `result-track:217b69d763fc4ed60154c6217bc4ab87ce9f85d05207650b9569b76ebdb8dba9` |
| 25 | `instance` | [Quot.deltaGeneratedSpace](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/quot-deltageneratedspace--114c040ed6f62b52d702d139.md) | 171 | `declaration-track:114c040ed6f62b52d702d139ddc29a0d327eadfb0b8ec98ebf8df2ef33b96e66` |
| 26 | `instance` | [Quotient.deltaGeneratedSpace](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/quotient-deltageneratedspace--02c800fa78ae2f537708a007.md) | 176 | `declaration-track:02c800fa78ae2f537708a0070e91bd4cd8c9d86e7039eaf87fa5a3f7a87915ba` |
| 27 | `instance` | [Sum.deltaGeneratedSpace](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/sum-deltageneratedspace--1c184c2f93cd3bb68a78ce55.md) | 181 | `declaration-track:1c184c2f93cd3bb68a78ce55ef5049a65f4da459a9f424d5c52556071f34da5a` |
| 28 | `instance` | [Sigma.deltaGeneratedSpace](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variant31c42cbb92b0a6c548bb06d2f22c5627de011f1ec9bc7f3cbaa241bfcad93338.lean/declarations/sigma-deltageneratedspace--b198fdfdd07e11bf38f5f3f0.md) | 186 | `declaration-track:b198fdfdd07e11bf38f5f3f09c2f5df38e6876c4524d2fa6762ace02673df8c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
