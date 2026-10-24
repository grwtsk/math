# Verification target: GRWTSK.Algebra.Rat.Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d2230cfe273a200f24864577d093fcf96d2d4c4",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d2230cfe273a200f24864577d093fcf96d2d4c4`.

Source path: `GRWTSK/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNRat.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instField](../../../../mathematics/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean/declarations/instfield--82d68fc24f4d05cb52012f1e.md) | 31 | `declaration-track:82d68fc24f4d05cb52012f1ee1665e7b98ab6b69ffff43176909d4c5be5b9883` |
| 2 | `instance` | [instDivisionRing](../../../../mathematics/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean/declarations/instdivisionring--7955f7a658650f1706bd8116.md) | 48 | `declaration-track:7955f7a658650f1706bd811667171e9fb05955df29e7a9697fc40210c3b1e227` |
| 3 | `lemma` | [inv_nonneg](../../../../mathematics/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean/declarations/inv-nonneg--8ac398b23f2cb4109a41a3f9.md) | 50 | `result-track:8ac398b23f2cb4109a41a3f967b275f01576ea6efafc9a0dae5a9a512aed5dbe` |
| 4 | `lemma` | [div_nonneg](../../../../mathematics/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean/declarations/div-nonneg--a02eff47632e8048cc06c111.md) | 54 | `result-track:a02eff47632e8048cc06c111ef5c6a7de334216a42fd21611e3c9ecb95657b89` |
| 5 | `lemma` | [zpow_nonneg](../../../../mathematics/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean/declarations/zpow-nonneg--820c937238cccb3bee7c366f.md) | 57 | `result-track:820c937238cccb3bee7c366f3eac1ede40aa771363e5ea334ea5a241077e9656` |
| 6 | `instance` | [instInv](../../../../mathematics/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean/declarations/instinv--d4c044a4da38c23a4542b75d.md) | 65 | `declaration-track:d4c044a4da38c23a4542b75dff96252483a411616931bcb5fac964709a2c2a2a` |
| 7 | `instance` | [instDiv](../../../../mathematics/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean/declarations/instdiv--8f6a89439ee60c3ced38cef8.md) | 68 | `declaration-track:8f6a89439ee60c3ced38cef8982c7494cdaaa672ad5b5a063c2bfcda46b55c49` |
| 8 | `instance` | [instZPow](../../../../mathematics/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean/declarations/instzpow--143f5454335cd9235d332d53.md) | 71 | `declaration-track:143f5454335cd9235d332d53079bd5f3dbaa01bd49b055d616038c5a3f1da1c4` |
| 9 | `lemma` | [coe_inv](../../../../mathematics/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean/declarations/coe-inv--23fa831b939506e7d3ad2c2b.md) | 74 | `result-track:23fa831b939506e7d3ad2c2b33ba0ab06cdd807b5a755cf9462b110a61ad4e9d` |
| 10 | `lemma` | [coe_div](../../../../mathematics/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean/declarations/coe-div--78df7b98a79fed8990a00a87.md) | 75 | `result-track:78df7b98a79fed8990a00a875fa39c080657ec195ebd0b6755be26115fe9bd74` |
| 11 | `lemma` | [coe_zpow](../../../../mathematics/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean/declarations/coe-zpow--87e9019daf51e1363c601246.md) | 76 | `result-track:87e9019daf51e1363c601246401110878109c7fd29f2d1b7634dae23875da0d6` |
| 12 | `lemma` | [inv_def](../../../../mathematics/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean/declarations/inv-def--02c87dd2e7dfe39419063fa2.md) | 78 | `result-track:02c87dd2e7dfe39419063fa2110a81d6211b39f365ef478c62953539796f3afa` |
| 13 | `lemma` | [div_def](../../../../mathematics/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean/declarations/div-def--a96aa204909931770136cd7b.md) | 79 | `result-track:a96aa204909931770136cd7b692af8c928f31aa6b97f68f2ca41f6fbaf4c01e5` |
| 14 | `lemma` | [num_inv_of_ne_zero](../../../../mathematics/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean/declarations/num-inv-of-ne-zero--5a5c6931ed35a80f0a8aefc3.md) | 82 | `result-track:5a5c6931ed35a80f0a8aefc364d69f07d9a4cded69217de7b84acfb4b817a20c` |
| 15 | `lemma` | [den_inv_of_ne_zero](../../../../mathematics/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean/declarations/den-inv-of-ne-zero--433452763cef1ecbe8269e7f.md) | 87 | `result-track:433452763cef1ecbe8269e7fd717c14d76095907db20eeb0b1f4b0b0412b2678` |
| 16 | `lemma` | [num_div_den](../../../../mathematics/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean/declarations/num-div-den--78a8b74a45908b763cea6486.md) | 92 | `result-track:78a8b74a45908b763cea6486abf82d0080cd5ce776d2cc3faccb4bbf18fb2fb1` |
| 17 | `instance` | [instSemifield](../../../../mathematics/Algebra/Rat/Variant9c2e9eb6cdffb951a90a4e9c296546cc13d94c8e986adae68a4d40879306286f.lean/declarations/instsemifield--19e65723445fe7f3dec39f22.md) | 97 | `declaration-track:19e65723445fe7f3dec39f22f7abce3a018393b7f0e4a3f8a1df8129170c8194` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
