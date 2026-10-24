# Verification target: GRWTSK.Analysis.MeasureTheory.Def.Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cbb238fa4d1b18422c62ef92d810030f0f0ecf5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cbb238fa4d1b18422c62ef92d810030f0f0ecf5`.

Source path: `GRWTSK/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirac](../../../../../mathematics/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean/declarations/dirac--753ca931e6c46a3aa1afb023.md) | 29 | `declaration-track:753ca931e6c46a3aa1afb023fd60a416619aa3c60a881a6024a01021703dca32` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean/declarations/instance--ac764ef6c24132da1e51eda3.md) | 31 | `declaration-track:ac764ef6c24132da1e51eda3aa96f452a1cf124c5deed3c0099455b15859c916` |
| 3 | `theorem` | [le_dirac_apply](../../../../../mathematics/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean/declarations/le-dirac-apply--12e67e93f0f25f0c56a7f62f.md) | 34 | `result-track:12e67e93f0f25f0c56a7f62fc152a028eac7edd544640a378da02133e2077e66` |
| 4 | `theorem` | [dirac_apply'](../../../../../mathematics/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean/declarations/dirac-apply--7f37dc329034f0185dae2433.md) | 38 | `result-track:7f37dc329034f0185dae24335d3069ae4af6f493acb8d6664c98390dc8d8aecd` |
| 5 | `theorem` | [dirac_apply_eq_zero_or_one](../../../../../mathematics/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean/declarations/dirac-apply-eq-zero-or-one--47f1a5d962d2148955196f1a.md) | 41 | `result-track:47f1a5d962d2148955196f1ad3f66ee458b7846576a6022188b861bbfdb02d74` |
| 6 | `theorem` | [dirac_apply_ne_zero_iff_eq_one](../../../../../mathematics/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean/declarations/dirac-apply-ne-zero-iff-eq-one--e5c5410e0c1e9a17cf06a03b.md) | 49 | `result-track:e5c5410e0c1e9a17cf06a03bb3f2847cd92358367723456f9ac15e8d406ce507` |
| 7 | `theorem` | [dirac_apply_ne_one_iff_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean/declarations/dirac-apply-ne-one-iff-eq-zero--1b5b30222ac58a04e5de5dd4.md) | 55 | `result-track:1b5b30222ac58a04e5de5dd47c8437099d82e4e89425ed642b84cf94f1999a26` |
| 8 | `theorem` | [dirac_apply_of_mem](../../../../../mathematics/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean/declarations/dirac-apply-of-mem--c614d2b5c8580b11ff3e1277.md) | 61 | `result-track:c614d2b5c8580b11ff3e1277dcdcd7d21c9c7ccd3c2d1a373f449f077cd56aac` |
| 9 | `theorem` | [dirac_real_apply_of_mem](../../../../../mathematics/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean/declarations/dirac-real-apply-of-mem--342c5c174ff4c69b04ed29c4.md) | 68 | `result-track:342c5c174ff4c69b04ed29c485033bac9431702bf2ff8d748e3460276ac7434e` |
| 10 | `theorem` | [dirac_apply](../../../../../mathematics/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean/declarations/dirac-apply--b1e7381f25764b78576c53a6.md) | 72 | `result-track:b1e7381f25764b78576c53a6013454ac17b5cfd5abb5d529675cb39063baf670` |
| 11 | `theorem` | [dirac_real_apply](../../../../../mathematics/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean/declarations/dirac-real-apply--1d691b82e46d25e6c86f0857.md) | 81 | `result-track:1d691b82e46d25e6c86f0857228c5fef5c9c26cb542d61846608326c1186e309` |
| 12 | `lemma` | [dirac_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean/declarations/dirac-ne-zero--072fdc5a09d6322cbabc7c6a.md) | 86 | `result-track:072fdc5a09d6322cbabc7c6a53f1fc65802838e1be77ba25f8f9543e311386e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
