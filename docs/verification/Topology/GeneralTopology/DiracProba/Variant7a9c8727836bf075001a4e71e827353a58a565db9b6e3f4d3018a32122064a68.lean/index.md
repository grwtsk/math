# Verification target: GRWTSK.Topology.GeneralTopology.DiracProba.Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45d512a1a20b2bd016de2c132e19daa96d384fd1",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45d512a1a20b2bd016de2c132e19daa96d384fd1`.

Source path: `GRWTSK/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation.CompletelyRegular` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.ProbabilityMeasure` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [CompletelyRegularSpace.exists_BCNN](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/declarations/completelyregularspace-exists-bcnn--fa3295725c2a1e2da51e0c23.md) | 36 | `result-track:fa3295725c2a1e2da51e0c238d534c3d49da9e2aabf24585634d639ed2034ace` |
| 2 | `def` | [diracProba](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/declarations/diracproba--b08604276b63ffba9a413306.md) | 56 | `declaration-track:b08604276b63ffba9a413306b153c8f3134fc8382b307d051ddd7fe2f5fa50f6` |
| 3 | `lemma` | [injective_diracProba](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/declarations/injective-diracproba--9f4be8712b2c9b4f007f79ce.md) | 60 | `result-track:9f4be8712b2c9b4f007f79ceba49b05cddfa28544e13c65cae9801de28177420` |
| 4 | `lemma` | [diracProba_toMeasure_apply'](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/declarations/diracproba-tomeasure-apply--d1a7668463bd269b9de0094c.md) | 66 | `result-track:d1a7668463bd269b9de0094c2d242a673da80f519c764769de408405eca24c02` |
| 5 | `lemma` | [diracProba_toMeasure_apply_of_mem](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/declarations/diracproba-tomeasure-apply-of-mem--d15956631acb0c7cc8c92ddb.md) | 69 | `result-track:d15956631acb0c7cc8c92ddb7f03698e0c54725b3919250df113dc39242dc1b9` |
| 6 | `lemma` | [diracProba_toMeasure_apply](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/declarations/diracproba-tomeasure-apply--26ae7f20359dae65027b2aa9.md) | 72 | `result-track:26ae7f20359dae65027b2aa95c503ba6971f96717382084e12c5b4cdba7d86c1` |
| 7 | `lemma` | [continuous_diracProba](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/declarations/continuous-diracproba--d8415b22a673605c8c68322b.md) | 78 | `result-track:d8415b22a673605c8c68322bdbb2098621051087fd744864e55ced7fb98d00ea` |
| 8 | `lemma` | [injective_diracProba_of_T0](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/declarations/injective-diracproba-of-t0--26938ec47ff7898b8420a287.md) | 88 | `result-track:26938ec47ff7898b8420a287ea33b33c9532efac6030d9e3bfd2299fd6af2b62` |
| 9 | `lemma` | [not_tendsto_diracProba_of_not_tendsto](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/declarations/not-tendsto-diracproba-of-not-tendsto--a300b41a8dbd06d12793e76d.md) | 94 | `result-track:a300b41a8dbd06d12793e76ddf3dbb6db3fde015e5e8d6540ae3810750c47fa3` |
| 10 | `lemma` | [tendsto_diracProba_iff_tendsto](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/declarations/tendsto-diracproba-iff-tendsto--e0687b10f2a74739e783c1c3.md) | 118 | `result-track:e0687b10f2a74739e783c1c3d4c7b645a2baf7138b521a227108de2eec579bf7` |
| 11 | `def` | [diracProbaInverse](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/declarations/diracprobainverse--6912d146b8e1bc9eefdefde7.md) | 130 | `declaration-track:6912d146b8e1bc9eefdefde741546136cccf04f1148ea65a58a80020fd369ea2` |
| 12 | `lemma` | [diracProba_diracProbaInverse](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/declarations/diracproba-diracprobainverse--528cb16f88bfcc76442e9b51.md) | 134 | `result-track:528cb16f88bfcc76442e9b51324c6d656e39d0f2397461e7f8f086d3f4dde6c2` |
| 13 | `lemma` | [diracProbaInverse_eq](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/declarations/diracprobainverse-eq--989eb49a0734f6a6a17cfa5f.md) | 138 | `result-track:989eb49a0734f6a6a17cfa5feff163c9d512804f037d5a3b8e50d4bd898f3e2d` |
| 14 | `def` | [diracProbaEquiv](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/declarations/diracprobaequiv--50ffb04638c63c2dd3e749a4.md) | 147 | `declaration-track:50ffb04638c63c2dd3e749a49ca292bcf2b3ff9ebe4cb7e512e4b6115270d721` |
| 15 | `lemma` | [diracProba_comp_diracProbaEquiv_symm_eq_val](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/declarations/diracproba-comp-diracprobaequiv-symm-eq-val--2dee9bbd8733f522a9da1c6a.md) | 154 | `result-track:2dee9bbd8733f522a9da1c6aba9c53da7c52ced897c0b75f2c75e0d02eda450d` |
| 16 | `lemma` | [tendsto_diracProbaEquivSymm_iff_tendsto](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/declarations/tendsto-diracprobaequivsymm-iff-tendsto--3c255d07f2d47154458fa64f.md) | 158 | `result-track:3c255d07f2d47154458fa64f5bb96060f89c0a65dadaa10c80d11850ad09b011` |
| 17 | `lemma` | [continuous_diracProbaEquiv](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/declarations/continuous-diracprobaequiv--207c7700c0ea533d7ffd5469.md) | 170 | `result-track:207c7700c0ea533d7ffd5469ab9ef904a5724dcfc376c7eb986f243b970ba8ff` |
| 18 | `lemma` | [continuous_diracProbaEquivSymm](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/declarations/continuous-diracprobaequivsymm--af8be4db016652b1576d3256.md) | 175 | `result-track:af8be4db016652b1576d32564356d7813a4445a734ade1023420ff0b979e3f42` |
| 19 | `def` | [diracProbaHomeomorph](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/declarations/diracprobahomeomorph--da0637332ef773ce15069df0.md) | 184 | `declaration-track:da0637332ef773ce15069df044a90ed752e144e7c1c141375e997940750a3d51` |
| 20 | `theorem` | [isEmbedding_diracProba](../../../../../mathematics/Topology/GeneralTopology/DiracProba/Variant7a9c8727836bf075001a4e71e827353a58a565db9b6e3f4d3018a32122064a68.lean/declarations/isembedding-diracproba--f7bf18d4bca83399ba51a4e6.md) | 191 | `result-track:f7bf18d4bca83399ba51a4e683ac17ab312b27aff77b52eefd35629b2b26c889` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
