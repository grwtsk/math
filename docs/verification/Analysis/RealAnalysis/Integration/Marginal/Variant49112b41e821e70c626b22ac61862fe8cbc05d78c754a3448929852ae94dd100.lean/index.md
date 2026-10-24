# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Marginal.Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ee48084a2bb1543791894da27ca2ea0f376d5a0",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ee48084a2bb1543791894da27ca2ea0f376d5a0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Pi` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lmarginal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/lmarginal--18e6aa9ba524f55e6d669a7c.md) | 74 | `declaration-track:18e6aa9ba524f55e6d669a7cd75d88be0039fffe0784dad1ae87fe4bfc9c6ca0` |
| 2 | `theorem` | [_root_.Measurable.lmarginal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/root-measurable-lmarginal--8b9ea38da461d14f6aae73a1.md) | 87 | `result-track:8b9ea38da461d14f6aae73a14de997f575ff9f65c80fef7ef7dffddfc1b01a22` |
| 3 | `theorem` | [lmarginal_empty](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/lmarginal-empty--ba629f602da22125b82925aa.md) | 96 | `result-track:ba629f602da22125b82925aaa9816d74af0b64e700408f174e96f17861df9448` |
| 4 | `theorem` | [lmarginal_congr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/lmarginal-congr--7edf0db1351222c519987f5b.md) | 103 | `result-track:7edf0db1351222c519987f5b662fda7bef23c91705d2098306405b1229f79d8f` |
| 5 | `theorem` | [lmarginal_update_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/lmarginal-update-of-mem--0cc41cc5520e5215a07cf1c3.md) | 108 | `result-track:0cc41cc5520e5215a07cf1c30e8ea7385dc123b6c0e609b9845831f50f06392a` |
| 6 | `theorem` | [lmarginal_singleton](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/lmarginal-singleton--fbdb89eb72accf5796b50c76.md) | 117 | `result-track:fbdb89eb72accf5796b50c769e2d12e6559686f3168b6d5057400d01bcc7bbd9` |
| 7 | `theorem` | [lmarginal_mono](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/lmarginal-mono--1b69c0d8bda78480ebba37b9.md) | 131 | `result-track:1b69c0d8bda78480ebba37b95314ade11e9f06fa6306356ced5bb2ea013b2310` |
| 8 | `theorem` | [lmarginal_union](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/lmarginal-union--7ab97684fc6bdc2371f771bc.md) | 136 | `result-track:7ab97684fc6bdc2371f771bcd43385628a96e82219e3516ef0483e2e40e99cfa` |
| 9 | `theorem` | [lmarginal_union'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/lmarginal-union--dd667388881963e19869d184.md) | 155 | `result-track:dd667388881963e19869d184fba47956a8acb32e4e5393d57b720f32bd663be2` |
| 10 | `theorem` | [lmarginal_insert](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/lmarginal-insert--4fa8dc9237ce9fddd890415a.md) | 163 | `result-track:4fa8dc9237ce9fddd890415a193b7d502b80be07f2b0f100de340aa71765ad84` |
| 11 | `theorem` | [lmarginal_erase](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/lmarginal-erase--024b070f981464b2de3197bc.md) | 171 | `result-track:024b070f981464b2de3197bc5bd63c4c00a5c67d85059471eb63953143abc49b` |
| 12 | `theorem` | [lmarginal_insert'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/lmarginal-insert--92f97e0290afdd166ffb0436.md) | 178 | `result-track:92f97e0290afdd166ffb04362eed71f64f4f352e3dbdc8283f3f090b87b1d822` |
| 13 | `theorem` | [lmarginal_erase'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/lmarginal-erase--7902760b3f6fee8acbbe385f.md) | 186 | `result-track:7902760b3f6fee8acbbe385feb81cc6da21204cf042094455265b2e31fabb3d9` |
| 14 | `theorem` | [lmarginal_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/lmarginal-univ--6851d1bac8c8002cda8e890f.md) | 191 | `result-track:6851d1bac8c8002cda8e890fdc011e58bfb3e03878c92b3de5b6f841046489e3` |
| 15 | `theorem` | [lintegral_eq_lmarginal_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/lintegral-eq-lmarginal-univ--5c175a25bbb9611fe161d5df.md) | 199 | `result-track:5c175a25bbb9611fe161d5df6d334d4a8207739df257fa0ffdfc0f2c32cc82b5` |
| 16 | `theorem` | [lmarginal_image](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/lmarginal-image--503dd5ff71e5ed66ee03592c.md) | 202 | `result-track:503dd5ff71e5ed66ee03592ca2366ca2da9faca7adf0863216fae5f6402c5076` |
| 17 | `theorem` | [lmarginal_update_of_notMem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/lmarginal-update-of-notmem--618327ed42d5069964274d32.md) | 214 | `result-track:618327ed42d5069964274d32a8f2c6e83d23ea319f8d8aed6444b5c070f70f21` |
| 18 | `theorem` | [lmarginal_eq_of_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/lmarginal-eq-of-subset--2148adb9164509892160d845.md) | 227 | `result-track:2148adb9164509892160d8456967297a0fe9d491ca3cbeb0e8f59ced3a1e21c6` |
| 19 | `theorem` | [lmarginal_le_of_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/lmarginal-le-of-subset--b539ae17bdc7d82620dfd043.md) | 233 | `result-track:b539ae17bdc7d82620dfd043617e91e4c7ade29b0c693b2be9077e30607ed176` |
| 20 | `theorem` | [lintegral_eq_of_lmarginal_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/lintegral-eq-of-lmarginal-eq--8c11958d3b716d43a22c7093.md) | 240 | `result-track:8c11958d3b716d43a22c7093a21fe94af9b63ade4cb4226acf6d068dde0dcfd2` |
| 21 | `theorem` | [lintegral_le_of_lmarginal_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Marginal/Variant49112b41e821e70c626b22ac61862fe8cbc05d78c754a3448929852ae94dd100.lean/declarations/lintegral-le-of-lmarginal-le--aecb110ffad65aedbec2c90e.md) | 247 | `result-track:aecb110ffad65aedbec2c90ee8113bd0d2653672047bd6a5dcd99da39c051091` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
