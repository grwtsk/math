# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cardinality.Variant93a00f28068ff24133e3c61753ac94267618d4a62ad611f3e13787e320ee128b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf637f4d14360b486f4d0f4e54abf66b19085321",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant93a00f28068ff24133e3c61753ac94267618d4a62ad611f3e13787e320ee128b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant93a00f28068ff24133e3c61753ac94267618d4a62ad611f3e13787e320ee128b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant93a00f28068ff24133e3c61753ac94267618d4a62ad611f3e13787e320ee128b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf637f4d14360b486f4d0f4e54abf66b19085321`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant93a00f28068ff24133e3c61753ac94267618d4a62ad611f3e13787e320ee128b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant93a00f28068ff24133e3c61753ac94267618d4a62ad611f3e13787e320ee128b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Cardinality` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Cardinal.mk_complex](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant93a00f28068ff24133e3c61753ac94267618d4a62ad611f3e13787e320ee128b.lean/declarations/cardinal-mk-complex--3d468bc22be3bdc2c461b418.md) | 29 | `result-track:3d468bc22be3bdc2c461b4185ac930ea7e2b152b7601ba78fb42ddd5bfe5c15e` |
| 2 | `theorem` | [Cardinal.mk_univ_complex](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant93a00f28068ff24133e3c61753ac94267618d4a62ad611f3e13787e320ee128b.lean/declarations/cardinal-mk-univ-complex--55b9c9fb0cae841dca967f87.md) | 35 | `result-track:55b9c9fb0cae841dca967f872e24b9d1a5939aee1ca791e1409e5a5129a4b694` |
| 3 | `theorem` | [not_countable_complex](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant93a00f28068ff24133e3c61753ac94267618d4a62ad611f3e13787e320ee128b.lean/declarations/not-countable-complex--5500176badc4e69114a0dbf9.md) | 41 | `result-track:5500176badc4e69114a0dbf95b8bd51afc259accf5abda51d70c9a9d0e2b393a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
