# Verification target: GRWTSK.Analysis.Polarization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42535711267ad17db152ac988abd744ae80b9297",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Polarization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Analysis/Polarization.lean/index.md) · [Full source](../../../mathematics/Analysis/Polarization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42535711267ad17db152ac988abd744ae80b9297`.

Source path: `GRWTSK/Analysis/Polarization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Polarization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [real_inner_eq_signed_norm_square](../../../mathematics/Analysis/Polarization.lean/declarations/real-inner-eq-signed-norm-square--0fe1028cac306d2bb9861373.md) | 31 | `result-track:0fe1028cac306d2bb98613732e3d603dcc32cfa2b226e8d425e526de692440f3` |
| 2 | `theorem` | [nonnegative_sectors_negative_difference](../../../mathematics/Analysis/Polarization.lean/declarations/nonnegative-sectors-negative-difference--56aeeec115ccfabf502cd966.md) | 40 | `result-track:56aeeec115ccfabf502cd966fba940327e090c456f1f2a2f953a91d278af73f4` |
| 3 | `theorem` | [signed_difference_has_no_universal_lower_bound](../../../mathematics/Analysis/Polarization.lean/declarations/signed-difference-has-no-universal-lower-bound--1da7663af280d2442d3392f0.md) | 50 | `result-track:1da7663af280d2442d3392f078c1ba89272f4a2f1b82b1925848640228694fee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
