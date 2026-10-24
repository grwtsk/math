# Verification target: GRWTSK.Algebra.GroupTheory.Action.Variantea5c70d5c0cba57ea1899ebd8d050cb390e4affae3b32c5651b0f02220e28c47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79bf14303bd79c9a61f426927c3650d69118bf59",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Action/Variantea5c70d5c0cba57ea1899ebd8d050cb390e4affae3b32c5651b0f02220e28c47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Action/Variantea5c70d5c0cba57ea1899ebd8d050cb390e4affae3b32c5651b0f02220e28c47.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Action/Variantea5c70d5c0cba57ea1899ebd8d050cb390e4affae3b32c5651b0f02220e28c47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79bf14303bd79c9a61f426927c3650d69118bf59`.

Source path: `GRWTSK/Algebra/GroupTheory/Action/Variantea5c70d5c0cba57ea1899ebd8d050cb390e4affae3b32c5651b0f02220e28c47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Action/Variantea5c70d5c0cba57ea1899ebd8d050cb390e4affae3b32c5651b0f02220e28c47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Cases` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_mono_right](../../../../../mathematics/Algebra/GroupTheory/Action/Variantea5c70d5c0cba57ea1899ebd8d050cb390e4affae3b32c5651b0f02220e28c47.lean/declarations/smul-mono-right--db2f4bec1bd87aa4cfe5c566.md) | 29 | `result-track:db2f4bec1bd87aa4cfe5c5662acbd5de595c49a08a88249e49f2f093a1e854cc` |
| 2 | `theorem` | [smul_le_smul_left](../../../../../mathematics/Algebra/GroupTheory/Action/Variantea5c70d5c0cba57ea1899ebd8d050cb390e4affae3b32c5651b0f02220e28c47.lean/declarations/smul-le-smul-left--1e2a72f8544c07ef9e5a3cb9.md) | 35 | `result-track:1e2a72f8544c07ef9e5a3cb91b7bb9a102410680aee39dfcf693d566d21a08cf` |
| 3 | `theorem` | [smul_inf_le](../../../../../mathematics/Algebra/GroupTheory/Action/Variantea5c70d5c0cba57ea1899ebd8d050cb390e4affae3b32c5651b0f02220e28c47.lean/declarations/smul-inf-le--8d29d7987bd84ab46e07ca02.md) | 40 | `result-track:8d29d7987bd84ab46e07ca0259cd652cb54c2220d62f015b61f583cb2b05706c` |
| 4 | `theorem` | [smul_iInf_le](../../../../../mathematics/Algebra/GroupTheory/Action/Variantea5c70d5c0cba57ea1899ebd8d050cb390e4affae3b32c5651b0f02220e28c47.lean/declarations/smul-iinf-le--42ea0eed4cb4cf84bb60c32d.md) | 44 | `result-track:42ea0eed4cb4cf84bb60c32dce85aaef0c278a61c9650c8f93afe0ba512b028d` |
| 5 | `theorem` | [smul_strictMono_right](../../../../../mathematics/Algebra/GroupTheory/Action/Variantea5c70d5c0cba57ea1899ebd8d050cb390e4affae3b32c5651b0f02220e28c47.lean/declarations/smul-strictmono-right--87fe9c5d72b38f2ffeb48167.md) | 49 | `result-track:87fe9c5d72b38f2ffeb481677420f2b7de8605ee39bf50811ada739b34676404` |
| 6 | `lemma` | [le_pow_smul](../../../../../mathematics/Algebra/GroupTheory/Action/Variantea5c70d5c0cba57ea1899ebd8d050cb390e4affae3b32c5651b0f02220e28c47.lean/declarations/le-pow-smul--a7bcefed1a350fe540f15b8a.md) | 53 | `result-track:a7bcefed1a350fe540f15b8ac013d15d13e434856d8277f8e4cad08bbedef204` |
| 7 | `lemma` | [pow_smul_le](../../../../../mathematics/Algebra/GroupTheory/Action/Variantea5c70d5c0cba57ea1899ebd8d050cb390e4affae3b32c5651b0f02220e28c47.lean/declarations/pow-smul-le--e10ac426437ed9a01b7302c3.md) | 62 | `result-track:e10ac426437ed9a01b7302c3fcfc7e3b29108fef08d575c4cde0f270a2fd4068` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
