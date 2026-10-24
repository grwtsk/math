# Verification target: GRWTSK.NumberTheory.AdmissibleAbs.Variant265750e62133ba8383c6b41fb8f49cd126b770029f7286ad7e7fe88362ffb9e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c47fddca1cffabff42be33d91840f11e22456742",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AdmissibleAbs/Variant265750e62133ba8383c6b41fb8f49cd126b770029f7286ad7e7fe88362ffb9e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/AdmissibleAbs/Variant265750e62133ba8383c6b41fb8f49cd126b770029f7286ad7e7fe88362ffb9e5.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/AdmissibleAbs/Variant265750e62133ba8383c6b41fb8f49cd126b770029f7286ad7e7fe88362ffb9e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c47fddca1cffabff42be33d91840f11e22456742`.

Source path: `GRWTSK/NumberTheory/AdmissibleAbs/Variant265750e62133ba8383c6b41fb8f49cd126b770029f7286ad7e7fe88362ffb9e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AdmissibleAbs/Variant265750e62133ba8383c6b41fb8f49cd126b770029f7286ad7e7fe88362ffb9e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ClassNumber.AdmissibleAbsoluteValue` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_partition_int](../../../../mathematics/NumberTheory/AdmissibleAbs/Variant265750e62133ba8383c6b41fb8f49cd126b770029f7286ad7e7fe88362ffb9e5.lean/declarations/exists-partition-int--279852a3e9eaf8d66c993a5c.md) | 30 | `result-track:279852a3e9eaf8d66c993a5c4c3b07627af848adede61f9697afd355e533bb88` |
| 2 | `def` | [absIsAdmissible](../../../../mathematics/NumberTheory/AdmissibleAbs/Variant265750e62133ba8383c6b41fb8f49cd126b770029f7286ad7e7fe88362ffb9e5.lean/declarations/absisadmissible--48173f169db0a6ea2528c8b9.md) | 55 | `declaration-track:48173f169db0a6ea2528c8b97a3004cb311754df80e7c3b725d3bf1e086467e7` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/AdmissibleAbs/Variant265750e62133ba8383c6b41fb8f49cd126b770029f7286ad7e7fe88362ffb9e5.lean/declarations/instance--b14d186e14c84bc598c9af31.md) | 61 | `declaration-track:b14d186e14c84bc598c9af3168973304afc19b05cfe35cff858dd7af61da2d69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
