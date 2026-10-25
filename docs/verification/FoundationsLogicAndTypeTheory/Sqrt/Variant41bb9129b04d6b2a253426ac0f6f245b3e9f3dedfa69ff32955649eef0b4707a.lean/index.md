# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Sqrt.Variant41bb9129b04d6b2a253426ac0f6f245b3e9f3dedfa69ff32955649eef0b4707a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15ae8a0bebf8569a1be06e53e4279818aad74d89",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Sqrt/Variant41bb9129b04d6b2a253426ac0f6f245b3e9f3dedfa69ff32955649eef0b4707a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant41bb9129b04d6b2a253426ac0f6f245b3e9f3dedfa69ff32955649eef0b4707a.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant41bb9129b04d6b2a253426ac0f6f245b3e9f3dedfa69ff32955649eef0b4707a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15ae8a0bebf8569a1be06e53e4279818aad74d89`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Sqrt/Variant41bb9129b04d6b2a253426ac0f6f245b3e9f3dedfa69ff32955649eef0b4707a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Sqrt/Variant41bb9129b04d6b2a253426ac0f6f245b3e9f3dedfa69ff32955649eef0b4707a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Sqrt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sqrt](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant41bb9129b04d6b2a253426ac0f6f245b3e9f3dedfa69ff32955649eef0b4707a.lean/declarations/sqrt--1ab71fdad82debb4a69704be.md) | 26 | `declaration-track:1ab71fdad82debb4a69704be490788910c8e4f47ec57c5197b3995fbe958652f` |
| 2 | `theorem` | [sqrt_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant41bb9129b04d6b2a253426ac0f6f245b3e9f3dedfa69ff32955649eef0b4707a.lean/declarations/sqrt-eq--7d2470c58995dec28921674d.md) | 29 | `result-track:7d2470c58995dec28921674d0d6cb06a17b6207279deba290ff2574f2dc4dbca` |
| 3 | `theorem` | [exists_mul_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant41bb9129b04d6b2a253426ac0f6f245b3e9f3dedfa69ff32955649eef0b4707a.lean/declarations/exists-mul-self--e0ba67d779e740922f22f3db.md) | 33 | `result-track:e0ba67d779e740922f22f3dbe4ebcff257e79a36b4c22f53e5a94b56ec362998` |
| 4 | `theorem` | [sqrt_nonneg](../../../../mathematics/FoundationsLogicAndTypeTheory/Sqrt/Variant41bb9129b04d6b2a253426ac0f6f245b3e9f3dedfa69ff32955649eef0b4707a.lean/declarations/sqrt-nonneg--c8453c3152dccf4d18ae9929.md) | 37 | `result-track:c8453c3152dccf4d18ae992921b6ee377fa99b4d1e61dc658f9eb2bfc8e79824` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
