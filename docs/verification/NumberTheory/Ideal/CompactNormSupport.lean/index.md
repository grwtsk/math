# Verification target: GRWTSK.NumberTheory.Ideal.CompactNormSupport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0607296cd9f472e2ab7fc9db1239b20c929bacf",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Ideal/CompactNormSupport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Ideal/CompactNormSupport.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Ideal/CompactNormSupport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0607296cd9f472e2ab7fc9db1239b20c929bacf`.

Source path: `GRWTSK/NumberTheory/Ideal/CompactNormSupport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Ideal/CompactNormSupport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Norm.AbsNorm` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Compact` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_at_least_one](../../../../mathematics/NumberTheory/Ideal/CompactNormSupport.lean/declarations/norm-at-least-one--ffe9dd49d922a81a23abda71.md) | 31 | `result-track:ffe9dd49d922a81a23abda71f03e0304bcf8d3ca89c0e801dfe0484d0739e67a` |
| 2 | `lemma` | [ideal_triple_scale_bounds](../../../../mathematics/NumberTheory/Ideal/CompactNormSupport.lean/declarations/ideal-triple-scale-bounds--f2ba27e8d2fb17b8db1c5f97.md) | 36 | `result-track:f2ba27e8d2fb17b8db1c5f97ddf0aa6dde6b50c969582d61f7a0523adaf1227e` |
| 3 | `theorem` | [finite_support_norm_triple](../../../../mathematics/NumberTheory/Ideal/CompactNormSupport.lean/declarations/finite-support-norm-triple--4bbea65cfdd0ac0ac870d3d7.md) | 61 | `result-track:4bbea65cfdd0ac0ac870d3d7d5e1dcf9902d8269c4be7120841a53a1b1e3fde8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
