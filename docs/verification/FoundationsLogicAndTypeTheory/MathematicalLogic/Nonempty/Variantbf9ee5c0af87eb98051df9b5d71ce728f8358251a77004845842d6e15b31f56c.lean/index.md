# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Nonempty.Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cac4c638aea14fc0f3423c0a890d93d455688a6",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cac4c638aea14fc0f3423c0a890d93d455688a6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.ZeroOne` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/instance--f6a8f9e0cc8d4fb45dd6b3e8.md) | 28 | `declaration-track:f6a8f9e0cc8d4fb45dd6b3e8ae8700415dad8ec70d56578ccf0ea853974abea1` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/instance--d1d5359eca645eb116878992.md) | 31 | `declaration-track:d1d5359eca645eb116878992d2e8403cc52cd7c0ffcccbb3b5222ff9d61c7117` |
| 3 | `theorem` | [exists_true_iff_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/exists-true-iff-nonempty--352cebfa7f0ff31a8f7af08d.md) | 34 | `result-track:352cebfa7f0ff31a8f7af08df68ff9517e08bb5258ab43c1c1939eeea91fbf0b` |
| 4 | `theorem` | [nonempty_Prop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/nonempty-prop--6025c35d6914125b8b061cce.md) | 39 | `result-track:6025c35d6914125b8b061cceeb1751049c9287a45e8c05714bee9b8ef6ec5076` |
| 5 | `theorem` | [not_nonempty_iff_imp_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/not-nonempty-iff-imp-false--71acab01e64c24470e9136fe.md) | 43 | `result-track:71acab01e64c24470e9136fec93282f456b1ce1fe8ff35bfbdcb490625e5f9b1` |
| 6 | `theorem` | [nonempty_sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/nonempty-sigma--910cf969be67111faa31f10f.md) | 48 | `result-track:910cf969be67111faa31f10f3dbed8ac02befe0b29562621f85c0a676ae2a21c` |
| 7 | `theorem` | [nonempty_psigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/nonempty-psigma--21ed68212caa79f3337fe388.md) | 53 | `result-track:21ed68212caa79f3337fe388ac6a3726bbddcd0de5945f3eb3da057f4521a392` |
| 8 | `theorem` | [nonempty_subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/nonempty-subtype--d50078d1e716b748edf86c11.md) | 58 | `result-track:d50078d1e716b748edf86c11ac36c791d1b28964881d39246decde15b581fc4c` |
| 9 | `theorem` | [nonempty_prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/nonempty-prod--f950d5d165d17b5044eaa762.md) | 63 | `result-track:f950d5d165d17b5044eaa762677a49d0fb40dc2b6ca64ca2cde67ac069060789` |
| 10 | `theorem` | [nonempty_pprod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/nonempty-pprod--f5c016b49b43d7651ee08df7.md) | 68 | `result-track:f5c016b49b43d7651ee08df78387ff92846d3165f4646b0d09e85482ba02984b` |
| 11 | `theorem` | [nonempty_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/nonempty-sum--1006472e9303c5f7497d6632.md) | 73 | `result-track:1006472e9303c5f7497d663288983c273aa997a52a5eec56c342171e20a73282` |
| 12 | `theorem` | [nonempty_psum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/nonempty-psum--f9473df0684d5ec6f93913d8.md) | 86 | `result-track:f9473df0684d5ec6f93913d800ab6f056404ca2d7a10ba253775004be4d8f36e` |
| 13 | `theorem` | [nonempty_ulift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/nonempty-ulift--790affde9e2343cc63fd0ea1.md) | 99 | `result-track:790affde9e2343cc63fd0ea1a65400893cc55161f13eb04685bbca758bcb9ae3` |
| 14 | `theorem` | [nonempty_plift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/nonempty-plift--fa7b721b87a60eac388cb5a8.md) | 104 | `result-track:fa7b721b87a60eac388cb5a834d39df124db12862841b53d6b689c6b8b826897` |
| 15 | `theorem` | [Nonempty.forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/nonempty-forall--ba6dc9306313e8742ddcabff.md) | 109 | `result-track:ba6dc9306313e8742ddcabfff46494985bb2153874066db1c7882307dd647f5d` |
| 16 | `theorem` | [Nonempty.exists](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/nonempty-exists--eccd0c53a982d6296d1086cb.md) | 114 | `result-track:eccd0c53a982d6296d1086cb639f202ce58a304f181c70925a8c7cdfb0e2eeae` |
| 17 | `def` | [Classical.inhabited_of_nonempty'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/classical-inhabited-of-nonempty--a7c69efdba9f191ea5e218f5.md) | 122 | `declaration-track:a7c69efdba9f191ea5e218f596ffa4c3bc2f7805126339089ab341520d716367` |
| 18 | `def` | [Nonempty.some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/nonempty-some--134b36a8045f30c278997bab.md) | 128 | `declaration-track:134b36a8045f30c278997bab645b2926622a9dbbc7d947c97ed0dc283152ab8d` |
| 19 | `def` | [Classical.arbitrary](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/classical-arbitrary--5dfc007aefe4ab20fb2dce82.md) | 134 | `declaration-track:5dfc007aefe4ab20fb2dce8292482dda170fa6f301ba3b8630138978208f0468` |
| 20 | `theorem` | [Nonempty.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/nonempty-map--b2926759b0a0315ae0e6b145.md) | 140 | `result-track:b2926759b0a0315ae0e6b145f54c45debf4317ec16bd352454128d1b7d77065e` |
| 21 | `theorem` | [Nonempty.map2](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/nonempty-map2--3cf63435847b7f80817b04bb.md) | 144 | `result-track:3cf63435847b7f80817b04bb31fdae192e606f09b656d1ac037724f3568a2848` |
| 22 | `theorem` | [Nonempty.congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/nonempty-congr--d0a4b60ebc6426f2eef3758f.md) | 149 | `result-track:d0a4b60ebc6426f2eef3758fab8680967bd8dce8065368f9802b9a4770dc2434` |
| 23 | `theorem` | [Nonempty.elim_to_inhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/nonempty-elim-to-inhabited--942116417ccc867408a8c126.md) | 153 | `result-track:942116417ccc867408a8c1267ad6260978823d7c02a225b9ade32b15b8ca5cb0` |
| 24 | `instance` | [Prod.Nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/prod-nonempty--57aac290b914b984985f9282.md) | 158 | `declaration-track:57aac290b914b984985f9282f7bc775a8128211ec6b8bb8090a32cb91162090c` |
| 25 | `instance` | [Pi.Nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/pi-nonempty--a9a014a11bb7a7a4e918d7a5.md) | 161 | `declaration-track:a9a014a11bb7a7a4e918d7a534360a2350aa71a8bf0dda340dffdd770d0d3dec` |
| 26 | `theorem` | [Classical.nonempty_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/classical-nonempty-pi--7b1578ff93a8497f45ec72e9.md) | 165 | `result-track:7b1578ff93a8497f45ec72e912cd566d7e8a5d51bbb3b0bf055dc0f47df4c073` |
| 27 | `theorem` | [subsingleton_of_not_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/subsingleton-of-not-nonempty--8bd41fd2eeb2ad3520709720.md) | 169 | `result-track:8bd41fd2eeb2ad35207097209bf7072294dc28c5a59d13b2e48a62c24b078a21` |
| 28 | `theorem` | [Function.Surjective.nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Nonempty/Variantbf9ee5c0af87eb98051df9b5d71ce728f8358251a77004845842d6e15b31f56c.lean/declarations/function-surjective-nonempty--91e735c439bec0de32efd673.md) | 173 | `result-track:91e735c439bec0de32efd673da1582e897890051b2eaf053707b9874d8a0ecb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
