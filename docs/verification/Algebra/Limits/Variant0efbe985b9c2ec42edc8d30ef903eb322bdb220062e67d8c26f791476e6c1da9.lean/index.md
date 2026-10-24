# Verification target: GRWTSK.Algebra.Limits.Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38b8de2b341bf490197fef7d2e270fdb6bb1a79f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/index.md) · [Full source](../../../../mathematics/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38b8de2b341bf490197fef7d2e270fdb6bb1a79f`.

Source path: `GRWTSK/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.AlgebraCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Limits` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [semiringObj](../../../../mathematics/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/declarations/semiringobj--63e2370c8343619a03f09406.md) | 45 | `declaration-track:63e2370c8343619a03f09406df902f8c7ad0cdae7aff6757b6c2794639d650db` |
| 2 | `instance` | [algebraObj](../../../../mathematics/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/declarations/algebraobj--5d9401c7d53b02996f1b97fc.md) | 50 | `declaration-track:5d9401c7d53b02996f1b97fccf341a2c4f8fc423fe8a027cdfd0b95ec9f738dd` |
| 3 | `def` | [sectionsSubalgebra](../../../../mathematics/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/declarations/sectionssubalgebra--b7687bbe9fbc9bda8107882f.md) | 57 | `declaration-track:b7687bbe9fbc9bda8107882ff491e0a0e3081c3352feeea33b4bd13b4e8e1c5f` |
| 4 | `instance` | [limitSemiring](../../../../mathematics/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/declarations/limitsemiring--450f2e943a65c1edbc73d196.md) | 63 | `declaration-track:450f2e943a65c1edbc73d196422e5f306059118b32b29841ec40010b51997713` |
| 5 | `instance` | [limitAlgebra](../../../../mathematics/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/declarations/limitalgebra--c7382beaffc0acd933b02d7f.md) | 68 | `declaration-track:c7382beaffc0acd933b02d7f9a52d1391439bbe141e956e87ce9e063df90e13a` |
| 6 | `def` | [limitπAlgHom](../../../../mathematics/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/declarations/limit-alghom--d7f8e2cfc5047c46796657d7.md) | 74 | `declaration-track:d7f8e2cfc5047c46796657d7ea35517b2380b24b0d954578812d2895855d1a54` |
| 7 | `def` | [limitCone](../../../../mathematics/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/declarations/limitcone--03b3ef298fd5f29ddb6c9c7b.md) | 90 | `declaration-track:03b3ef298fd5f29ddb6c9c7b135b4775232f202cb4eecaec1e7f255562969b17` |
| 8 | `def` | [limitConeIsLimit](../../../../mathematics/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/declarations/limitconeislimit--1553073291d9a7fe127b663f.md) | 101 | `declaration-track:1553073291d9a7fe127b663fccc1764b2399aafa66604b1339527604f755f7ad` |
| 9 | `lemma` | [hasLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/declarations/haslimitsofsize--a908f6716f35cefc9eaea4dc.md) | 141 | `result-track:a908f6716f35cefc9eaea4dc115ec8e87594d2909f97e2d9f416a8bd719e4e10` |
| 10 | `instance` | [hasLimits](../../../../mathematics/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/declarations/haslimits--05712be4488f549dafb30b92.md) | 148 | `declaration-track:05712be4488f549dafb30b92395eb01ef7f36388df975417123521eab6bf71df` |
| 11 | `instance` | [forget₂RingPreservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/declarations/forget-ringpreserveslimitsofsize--3f0f9659a20dca4117c6ac05.md) | 154 | `declaration-track:3f0f9659a20dca4117c6ac055882f5997e10f09a9c3995a8246cadb852c15447` |
| 12 | `instance` | [forget₂RingPreservesLimits](../../../../mathematics/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/declarations/forget-ringpreserveslimits--f5d683794edd534cc52c04d3.md) | 163 | `declaration-track:f5d683794edd534cc52c04d3d036b1065bbea58e9088394e41d5f18a351eaa03` |
| 13 | `instance` | [forget₂ModulePreservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/declarations/forget-modulepreserveslimitsofsize--ce2967a9068021ed1b4f7093.md) | 169 | `declaration-track:ce2967a9068021ed1b4f7093aa85f682764c822d5663810ddfb01c2e985a17f1` |
| 14 | `instance` | [forget₂ModulePreservesLimits](../../../../mathematics/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/declarations/forget-modulepreserveslimits--1e85b75f4da11b33607820f6.md) | 178 | `declaration-track:1e85b75f4da11b33607820f6f26451fd1035abd904db357efbf1de2e066aa3ca` |
| 15 | `instance` | [forgetPreservesLimitsOfSize](../../../../mathematics/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/declarations/forgetpreserveslimitsofsize--ed70fd41393299aa19c432c2.md) | 185 | `declaration-track:ed70fd41393299aa19c432c2879c3f5afde800ca8d9487488fc02aa4eca9762b` |
| 16 | `instance` | [forgetPreservesLimits](../../../../mathematics/Algebra/Limits/Variant0efbe985b9c2ec42edc8d30ef903eb322bdb220062e67d8c26f791476e6c1da9.lean/declarations/forgetpreserveslimits--0c028c41a23b1e70fc91e648.md) | 193 | `declaration-track:0c028c41a23b1e70fc91e6483aa19c18b753b48b9f087e501797384a1287ec12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
