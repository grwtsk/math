# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotics.Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fd71983f4c7cb7f89514054fdf52f8f4a9a848d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fd71983f4c7cb7f89514054fdf52f8f4a9a848d`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotics/Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192.lean.json)

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
| 1 | `theorem` | [isTheta_ofReal](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192.lean/declarations/istheta-ofreal--e6ce8fd26bf05693512014a4.md) | 23 | `result-track:e6ce8fd26bf05693512014a4b4130cecb3c92f8425b125c40ac9f9baedae30f3` |
| 2 | `theorem` | [isLittleO_ofReal_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192.lean/declarations/islittleo-ofreal-left--6d5f63408cb3e7f001c8b1f2.md) | 27 | `result-track:6d5f63408cb3e7f001c8b1f2a63eaa60cb7b231a17fa0da8bed6c2f8ad20a1eb` |
| 3 | `theorem` | [isLittleO_ofReal_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192.lean/declarations/islittleo-ofreal-right--8e679e62e04d0cbc7de8cc86.md) | 31 | `result-track:8e679e62e04d0cbc7de8cc86b006553c4c7baad1183a55e56ba1b130c45e17d4` |
| 4 | `theorem` | [isBigO_ofReal_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192.lean/declarations/isbigo-ofreal-left--2abadd77b024e44e38588059.md) | 35 | `result-track:2abadd77b024e44e385880595eaba9a53754ab5993062e3934053107293b4a88` |
| 5 | `theorem` | [isBigO_ofReal_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192.lean/declarations/isbigo-ofreal-right--ff0a3a8acfbe84c3e66c51a7.md) | 39 | `result-track:ff0a3a8acfbe84c3e66c51a7ed306f3f159e03be43d2c02a3523d79482552fd1` |
| 6 | `theorem` | [isTheta_ofReal_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192.lean/declarations/istheta-ofreal-left--4a01da20a5b7b36242cfdb57.md) | 43 | `result-track:4a01da20a5b7b36242cfdb5769521b92111a8b74da75d2030db00c8c29c8351b` |
| 7 | `theorem` | [isTheta_ofReal_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192.lean/declarations/istheta-ofreal-right--2b287dc167be3e01faadac3a.md) | 47 | `result-track:2b287dc167be3e01faadac3ad778904ef6757110ab792d8f8933bb74eb7e8ae9` |
| 8 | `lemma` | [isBigO_comp_ofReal_nhds](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192.lean/declarations/isbigo-comp-ofreal-nhds--62f13f1fb8c13909354d1e38.md) | 52 | `result-track:62f13f1fb8c13909354d1e380813da9daf491b9cb77b0a89000cec2040dafe57` |
| 9 | `lemma` | [isBigO_comp_ofReal_nhds_ne](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192.lean/declarations/isbigo-comp-ofreal-nhds-ne--d16ec7c007920969c55c8fb8.md) | 56 | `result-track:d16ec7c007920969c55c8fb82a98f34bb844a7347ea4af858d17c766480ddb7f` |
| 10 | `lemma` | [isBigO_re_sub_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192.lean/declarations/isbigo-re-sub-re--711da1930ca293a5d7e0aa4e.md) | 60 | `result-track:711da1930ca293a5d7e0aa4e78fda715621dc34a203190556cf511a897150bbf` |
| 11 | `lemma` | [isBigO_im_sub_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192.lean/declarations/isbigo-im-sub-im--562e2a0c6617a1d56fe77066.md) | 63 | `result-track:562e2a0c6617a1d56fe770663e803a77511ada56562e451adbf233444aadf56c` |
| 12 | `lemma` | [Int.cast_complex_isTheta_cast_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192.lean/declarations/int-cast-complex-istheta-cast-real--58f4800def94e7264c51d94b.md) | 71 | `result-track:58f4800def94e7264c51d94bb6a3dc250b71d6da4ec54b57e713c9ccdd569fbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
