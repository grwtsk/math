# Verification target: GRWTSK.Algebra.ExtendToLocalization.Variant94071c399e3c0fc17d5541436593bce7ec6990fd2748f51ca35f5d597d43c77b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8fb59bded8147af980fd72021c6d1cb8cd0c945",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ExtendToLocalization/Variant94071c399e3c0fc17d5541436593bce7ec6990fd2748f51ca35f5d597d43c77b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ExtendToLocalization/Variant94071c399e3c0fc17d5541436593bce7ec6990fd2748f51ca35f5d597d43c77b.lean/index.md) · [Full source](../../../../mathematics/Algebra/ExtendToLocalization/Variant94071c399e3c0fc17d5541436593bce7ec6990fd2748f51ca35f5d597d43c77b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8fb59bded8147af980fd72021c6d1cb8cd0c945`.

Source path: `GRWTSK/Algebra/ExtendToLocalization/Variant94071c399e3c0fc17d5541436593bce7ec6990fd2748f51ca35f5d597d43c77b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ExtendToLocalization/Variant94071c399e3c0fc17d5541436593bce7ec6990fd2748f51ca35f5d597d43c77b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Valuation.extendToLocalization](../../../../mathematics/Algebra/ExtendToLocalization/Variant94071c399e3c0fc17d5541436593bce7ec6990fd2748f51ca35f5d597d43c77b.lean/declarations/valuation-extendtolocalization--e131962aeeeefb0149c1e351.md) | 34 | `declaration-track:e131962aeeeefb0149c1e351c6b3cabdaa2977568a8b894b98aa0d7e611bc84c` |
| 2 | `theorem` | [Valuation.extendToLocalization_mk'](../../../../mathematics/Algebra/ExtendToLocalization/Variant94071c399e3c0fc17d5541436593bce7ec6990fd2748f51ca35f5d597d43c77b.lean/declarations/valuation-extendtolocalization-mk--910515235814842875b226fa.md) | 58 | `result-track:910515235814842875b226fa06f6f5987da89f7b29e42dac32dbbc7da5edc65f` |
| 3 | `theorem` | [Valuation.extendToLocalization_apply_map_apply](../../../../mathematics/Algebra/ExtendToLocalization/Variant94071c399e3c0fc17d5541436593bce7ec6990fd2748f51ca35f5d597d43c77b.lean/declarations/valuation-extendtolocalization-apply-map-apply--270600c24b3327e9fdbcd140.md) | 64 | `result-track:270600c24b3327e9fdbcd140da7bab84e690728ff3c4b76740374ce228e13a38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
