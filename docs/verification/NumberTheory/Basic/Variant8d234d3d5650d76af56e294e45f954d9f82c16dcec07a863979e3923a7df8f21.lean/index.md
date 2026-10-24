# Verification target: GRWTSK.NumberTheory.Basic.Variant8d234d3d5650d76af56e294e45f954d9f82c16dcec07a863979e3923a7df8f21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2603f5349462904f39915f1be348c86a6b18f3e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Basic/Variant8d234d3d5650d76af56e294e45f954d9f82c16dcec07a863979e3923a7df8f21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Basic/Variant8d234d3d5650d76af56e294e45f954d9f82c16dcec07a863979e3923a7df8f21.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Basic/Variant8d234d3d5650d76af56e294e45f954d9f82c16dcec07a863979e3923a7df8f21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2603f5349462904f39915f1be348c86a6b18f3e`.

Source path: `GRWTSK/NumberTheory/Basic/Variant8d234d3d5650d76af56e294e45f954d9f82c16dcec07a863979e3923a7df8f21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Basic/Variant8d234d3d5650d76af56e294e45f954d9f82c16dcec07a863979e3923a7df8f21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.DenomsClearable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Irrational` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Liouville](../../../../mathematics/NumberTheory/Basic/Variant8d234d3d5650d76af56e294e45f954d9f82c16dcec07a863979e3923a7df8f21.lean/declarations/liouville--059ff4890c62ad4aaf77c0ff.md) | 31 | `declaration-track:059ff4890c62ad4aaf77c0ff13704899fe3714a5031f609be78a3074341d2a19` |
| 2 | `theorem` | [irrational](../../../../mathematics/NumberTheory/Basic/Variant8d234d3d5650d76af56e294e45f954d9f82c16dcec07a863979e3923a7df8f21.lean/declarations/irrational--b045580d13062c78c09b9ba6.md) | 36 | `result-track:b045580d13062c78c09b9ba62f65305edd9c949e73833d97ee45c0f76a8b347a` |
| 3 | `theorem` | [exists_one_le_pow_mul_dist](../../../../mathematics/NumberTheory/Basic/Variant8d234d3d5650d76af56e294e45f954d9f82c16dcec07a863979e3923a7df8f21.lean/declarations/exists-one-le-pow-mul-dist--b77ddb3190a496f8097fea08.md) | 91 | `result-track:b77ddb3190a496f8097fea08504daa375676e6aa69f37da31cad9f4675a6e137` |
| 4 | `theorem` | [exists_pos_real_of_irrational_root](../../../../mathematics/NumberTheory/Basic/Variant8d234d3d5650d76af56e294e45f954d9f82c16dcec07a863979e3923a7df8f21.lean/declarations/exists-pos-real-of-irrational-root--3b18e6a68cd0c99e0f2ab5ae.md) | 121 | `result-track:3b18e6a68cd0c99e0f2ab5ae88c29dfd13163ad6ef32d028148e01ba9d4433ba` |
| 5 | `theorem` | [transcendental](../../../../mathematics/NumberTheory/Basic/Variant8d234d3d5650d76af56e294e45f954d9f82c16dcec07a863979e3923a7df8f21.lean/declarations/transcendental--2e1848214f89e47f0d4fbd82.md) | 174 | `result-track:2e1848214f89e47f0d4fbd828862a3e3abdec37a62275e9805d9df7a71766b97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
