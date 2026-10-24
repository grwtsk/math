# Verification target: GRWTSK.Analysis.MeasureTheory.Traj.Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d74cf76d06abd4ac83e88e8a06b16bc1fc84a710",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d74cf76d06abd4ac83e88e8a06b16bc1fc84a710`.

Source path: `GRWTSK/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.ProjectiveFamilyContent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.FactorsThrough` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.ProbabilityMeasure` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.OuterMeasure.OfAddContent` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.IntegralCompProd` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.IonescuTulcea.PartialTraj` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.SetIntegral` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Iic_pi_eq](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/iic-pi-eq--5de9944283fc354a50edd09c.md) | 83 | `result-track:5de9944283fc354a50edd09cb9688553556e969f64487bc194b72969e554154b` |
| 2 | `lemma` | [cast_pi](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/cast-pi--cc8bcf5ce70ace0c4453af86.md) | 86 | `result-track:cc8bcf5ce70ace0c4453af86a5838fc599c701d09b2f78759aa8b935b1bd7ed3` |
| 3 | `lemma` | [measure_cast](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/measure-cast--4e872a4fb64ea38f388ff469.md) | 92 | `result-track:4e872a4fb64ea38f388ff46919bb61e5d9d13289618374df047226a476196489` |
| 4 | `lemma` | [heq_measurableSpace_Iic_pi](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/heq-measurablespace-iic-pi--721ee8b04f05f9426961fa37.md) | 97 | `result-track:721ee8b04f05f9426961fa37f3864f1733e4f3dba29c46750f27f86ab813c3e9` |
| 5 | `def` | [iterateInduction](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/iterateinduction--966dcfd6d49ba3f9db6e5d4b.md) | 108 | `declaration-track:966dcfd6d49ba3f9db6e5d4bd527da21fd2bfe0999c2cf5254ac2b48b210385a` |
| 6 | `lemma` | [frestrictLe_iterateInduction](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/frestrictle-iterateinduction--88f0fbd5bf2b53b94a055eb1.md) | 116 | `result-track:88f0fbd5bf2b53b94a055eb18a7125ce2cd32494d6a47385b5d9d02fe11d401f` |
| 7 | `theorem` | [isProjectiveLimit_nat_iff'](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/isprojectivelimit-nat-iff--da6a68f5df6374d56020e7a9.md) | 139 | `result-track:da6a68f5df6374d56020e7a969dc69522e89139325351b1c82f7077cc0a9aaa0` |
| 8 | `theorem` | [isProjectiveLimit_nat_iff](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/isprojectivelimit-nat-iff--53449c1ab55023c8a1fce703.md) | 149 | `result-track:53449c1ab55023c8a1fce703f3fa67448f7c23af56b41d0ee55693a2c516295f` |
| 9 | `def` | [inducedFamily](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/inducedfamily--5fbb798f4c104f6b9e957d73.md) | 159 | `declaration-track:5fbb798f4c104f6b9e957d73300461b05ff1355c0f304bce4b3bcef1aba4cada` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/instance--17c8672d449ed0a8b5d784ae.md) | 162 | `declaration-track:17c8672d449ed0a8b5d784ae96ae865cd829c23e2d042e1859e6b7e3ad25e688` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/instance--750177e20f405695ee75a4d8.md) | 165 | `declaration-track:750177e20f405695ee75a4d84367a58c0b9dcc69bdb36c328841204d920c50da` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/instance--9cd5f4e2e8099bc8d77bb124.md) | 168 | `declaration-track:9cd5f4e2e8099bc8d77bb1249138bd5443d239b9dca58ff94de3ed354c0adfc9` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/instance--197af167e2048bc84fdcee70.md) | 171 | `declaration-track:197af167e2048bc84fdcee70bd2d17c71ef15a6ed29c639bee877c48f4a6dc70` |
| 14 | `theorem` | [inducedFamily_Iic](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/inducedfamily-iic--79fac9c1c90c64a8c82eea3b.md) | 178 | `result-track:79fac9c1c90c64a8c82eea3bcf39e25a8a89d3b568b1da3e828f6831a663dad0` |
| 15 | `theorem` | [isProjectiveMeasureFamily_inducedFamily](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/isprojectivemeasurefamily-inducedfamily--ed149e8ad39e3db69f40ee86.md) | 186 | `result-track:ed149e8ad39e3db69f40ee86ab4a3705e3daa4f2162ed0dc490fbf692c85d89f` |
| 16 | `lemma` | [isProjectiveMeasureFamily_partialTraj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/isprojectivemeasurefamily-partialtraj--b25de091401c167535c13c11.md) | 211 | `result-track:b25de091401c167535c13c11dc0a2ce20928afd000892542d37e1c443b5d8eed` |
| 17 | `def` | [trajContent](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/trajcontent--2f5cc29807dddb06084daed5.md) | 219 | `declaration-track:2f5cc29807dddb06084daed58cafcff6ff1c90a6927f2be3546642d34174284b` |
| 18 | `theorem` | [trajContent_cylinder](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/trajcontent-cylinder--b89fa8adf752b5533a6ff806.md) | 226 | `result-track:b89fa8adf752b5533a6ff806670b19a1e29ba17e4e6593d3273e808c3d351af8` |
| 19 | `theorem` | [trajContent_eq_lmarginalPartialTraj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/trajcontent-eq-lmarginalpartialtraj--00b2ada94370a2ab1dd102ed.md) | 233 | `result-track:00b2ada94370a2ab1dd102eda07247dc769e2ab6ae15800ded42b065c6d43509` |
| 20 | `lemma` | [trajContent_ne_top](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/trajcontent-ne-top--de2bde614170b9f21559f51f.md) | 244 | `result-track:de2bde614170b9f21559f51fd952503ef0af6c11cb511ed332733d95420dc9a3` |
| 21 | `theorem` | [le_lmarginalPartialTraj_succ](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/le-lmarginalpartialtraj-succ--1a51c2678b60144a824bbb90.md) | 256 | `result-track:1a51c2678b60144a824bbb9083dd2240f00aead74dce356715ab050c5d066d9f` |
| 22 | `theorem` | [trajContent_tendsto_zero](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/trajcontent-tendsto-zero--76d7bebcd1d3fd4a0b4f78ee.md) | 335 | `result-track:76d7bebcd1d3fd4a0b4f78ee5bb1cd973ca0d2046fdcc3e6c93db94f33bf55a0` |
| 23 | `theorem` | [isSigmaSubadditive_trajContent](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/issigmasubadditive-trajcontent--37879734a7bd0f70c4537924.md) | 451 | `result-track:37879734a7bd0f70c4537924180ecb0886b46439c3eb1c9bdba7afc825690308` |
| 24 | `def` | [trajFun](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/trajfun--5a8be65594657f73114168ca.md) | 461 | `declaration-track:5a8be65594657f73114168ca558c8309a24617a73ecdf35e84a72824d80310f0` |
| 25 | `theorem` | [isProbabilityMeasure_trajFun](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/isprobabilitymeasure-trajfun--cae00318caf2be51d34fa38f.md) | 465 | `result-track:cae00318caf2be51d34fa38fb14db7941e6ae6ee099beb3a96b168aef9fadc4b` |
| 26 | `theorem` | [isProjectiveLimit_trajFun](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/isprojectivelimit-trajfun--f9a0bcaca3c9d9aba80cad3c.md) | 473 | `result-track:f9a0bcaca3c9d9aba80cad3cfab91c8769271f95283763eff4c886bfc70276ac` |
| 27 | `theorem` | [measurable_trajFun](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/measurable-trajfun--d40d2b5961e6be64dd2a214d.md) | 483 | `result-track:d40d2b5961e6be64dd2a214dd17ad8d03ed2b3e03855f4e4a3f5a6065f96c016` |
| 28 | `def` | [traj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/traj--08faf6b9fdbc4812f6f4df90.md) | 508 | `declaration-track:08faf6b9fdbc4812f6f4df906954c871c903a5129806f1de1157998b663c27be` |
| 29 | `lemma` | [traj_apply](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/traj-apply--fb9b110d6abfc5354eeb9184.md) | 516 | `result-track:fb9b110d6abfc5354eeb9184423fe6fa8e764bc05ac5b687fc70d4d7943a92d9` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/instance--e6a80f194b5bb1e813d07143.md) | 518 | `declaration-track:e6a80f194b5bb1e813d0714351eb31d3056fc13601162813560487c1a2695c0a` |
| 31 | `lemma` | [traj_map_frestrictLe](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/traj-map-frestrictle--b72ea613c214a1fb505879fa.md) | 520 | `result-track:b72ea613c214a1fb505879fa9b324156efbaf557eef4986a4f5203bb9657c52f` |
| 32 | `lemma` | [traj_map_frestrictLe_apply](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/traj-map-frestrictle-apply--a6dce60a7f11f00fcdf1fe84.md) | 525 | `result-track:a6dce60a7f11f00fcdf1fe846f78424d607699dc5e65057cfafadaeb316ed0c9` |
| 33 | `lemma` | [traj_map_frestrictLe_of_le](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/traj-map-frestrictle-of-le--53db1d341ac1159db1695c9d.md) | 529 | `result-track:53db1d341ac1159db1695c9d60b11081a7ba2a3a89229f93c90522a704495823` |
| 34 | `theorem` | [eq_traj'](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/eq-traj--35a4a6631af5f9aba87190e6.md) | 538 | `result-track:35a4a6631af5f9aba87190e6000498fe096f0dedd79cc891c5e9b12d6f1d653b` |
| 35 | `theorem` | [eq_traj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/eq-traj--a9eb9a4c718b96b4d27ced1b.md) | 549 | `result-track:a9eb9a4c718b96b4d27ced1b40e836f3a256dfe8d54d315dbe28fac6fc7e59dd` |
| 36 | `theorem` | [traj_comp_partialTraj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/traj-comp-partialtraj--d98ca216d24b6870e894b8db.md) | 558 | `result-track:d98ca216d24b6870e894b8db51c601c157bddfb41e634bf2d0c2bdddda5f944e` |
| 37 | `theorem` | [traj_eq_prod](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/traj-eq-prod--3615c6c13e2f8725cbd0c93c.md) | 566 | `result-track:3615c6c13e2f8725cbd0c93ce8db98b6bf238b131ebaed23fd892af28d9427e3` |
| 38 | `theorem` | [traj_map_updateFinset](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/traj-map-updatefinset--f9fb6e31d8b9e3aa3d41f40c.md) | 580 | `result-track:f9fb6e31d8b9e3aa3d41f40c298345c01f240d6a47dbb4c502b1c131ac221da5` |
| 39 | `theorem` | [integrable_traj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/integrable-traj--bc5b2351617a1c1b6a8d49d7.md) | 597 | `result-track:bc5b2351617a1c1b6a8d49d7a17999909fd0ac2518c024b62b060ac17e988329` |
| 40 | `theorem` | [aestronglyMeasurable_traj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/aestronglymeasurable-traj--e1f834133f91e8f6a4691b1c.md) | 607 | `result-track:e1f834133f91e8f6a4691b1c92028c87be8c470c0d5338361ad6a4f66b4f5da2` |
| 41 | `theorem` | [integral_traj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/integral-traj--1e3f418925d40f1f6db3fe26.md) | 617 | `result-track:1e3f418925d40f1f6db3fe26fb08adec47559cc73781af4f213d3db5fd232d03` |
| 42 | `lemma` | [partialTraj_compProd_traj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/partialtraj-compprod-traj--32741707bc23c254ddac78d3.md) | 625 | `result-track:32741707bc23c254ddac78d3925b26196b21f8a4430193aed13e2d89ca4f22d1` |
| 43 | `theorem` | [integral_traj_partialTraj'](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/integral-traj-partialtraj--00f1b73671c2c0baf84eda4a.md) | 639 | `result-track:00f1b73671c2c0baf84eda4a1fb9311cd6e584cdf6e9fcc87fc145f1d6a2c1e2` |
| 44 | `theorem` | [integral_traj_partialTraj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/integral-traj-partialtraj--aee611c8c719d47162a8e1b2.md) | 649 | `result-track:aee611c8c719d47162a8e1b24709a85362bcdb90344d70344f0a3493c0477834` |
| 45 | `theorem` | [setIntegral_traj_partialTraj'](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/setintegral-traj-partialtraj--e81525aea813ab29c003b9f6.md) | 656 | `result-track:e81525aea813ab29c003b9f69a4dea5fe241f90f2cea5723f7d1ebc65d8214f5` |
| 46 | `theorem` | [setIntegral_traj_partialTraj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/setintegral-traj-partialtraj--66dbf6b1d334fa90e53837b7.md) | 669 | `result-track:66dbf6b1d334fa90e53837b7f1d3e16c724a960dba6e3c88044a3bf0f8325cf6` |
| 47 | `theorem` | [condExp_traj](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/condexp-traj--61e6fd2db7a112da01a70536.md) | 682 | `result-track:61e6fd2db7a112da01a70536216cdedc42d385eaed969e9e779017a38698103e` |
| 48 | `theorem` | [condExp_traj'](../../../../../mathematics/Analysis/MeasureTheory/Traj/Variantc565dd9bdc17c21181cd5cbe41055aa2889210745bc463ff0596a01c580ccbcb.lean/declarations/condexp-traj--20ba9e74c121d4bfb0b68be6.md) | 701 | `result-track:20ba9e74c121d4bfb0b68be6d6f1ecf9d09c954269522c875c3f81feb94c66ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
