# Verification target: GRWTSK.Algebra.DualNumber.Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6414ff1afec3090fd605d9a47c62488dae93b5ba",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean/index.md) · [Full source](../../../../mathematics/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6414ff1afec3090fd605d9a47c62488dae93b5ba`.

Source path: `GRWTSK/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DualNumber` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isNilpotent_iff_isNilpotent_fst](../../../../mathematics/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean/declarations/isnilpotent-iff-isnilpotent-fst--690d47dee5ae3d5426c70c7c.md) | 29 | `result-track:690d47dee5ae3d5426c70c7ccff33027866a596cfa277b345ef62e9744d716e9` |
| 2 | `lemma` | [isNilpotent_inl_iff](../../../../mathematics/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean/declarations/isnilpotent-inl-iff--cc84e0d0a6a1796385a1b476.md) | 42 | `result-track:cc84e0d0a6a1796385a1b4761778e327d86c9f5d5823496307fe316581b5b1ce` |
| 3 | `lemma` | [isNilpotent_inr](../../../../mathematics/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean/declarations/isnilpotent-inr--730e3562f57ae7beb841b508.md) | 46 | `result-track:730e3562f57ae7beb841b508176e0bed48f2d5576a23f0c9c69095e117c30c6d` |
| 4 | `lemma` | [isUnit_or_isNilpotent_of_isMaximal_isNilpotent](../../../../mathematics/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean/declarations/isunit-or-isnilpotent-of-ismaximal-isnilpotent--94fac9ee54a035d7865af7b7.md) | 51 | `result-track:94fac9ee54a035d7865af7b76c572648f4aaa9ae1920293f3d83a98f057793d1` |
| 5 | `lemma` | [isUnit_or_isNilpotent](../../../../mathematics/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean/declarations/isunit-or-isnilpotent--bcd1a5d18c826e1d3a161375.md) | 62 | `result-track:bcd1a5d18c826e1d3a161375e662ed84b93da98b3e740e50d2cae8b930cd50b2` |
| 6 | `lemma` | [fst_eq_zero_iff_eps_dvd](../../../../mathematics/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean/declarations/fst-eq-zero-iff-eps-dvd--48bb8231e46fade86c79b0d0.md) | 73 | `result-track:48bb8231e46fade86c79b0d0dae3f3be5039993703f30372e4d5567148aea0c9` |
| 7 | `lemma` | [isNilpotent_eps](../../../../mathematics/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean/declarations/isnilpotent-eps--7cd9125ac0b4f2777c087d82.md) | 81 | `result-track:7cd9125ac0b4f2777c087d829c3b800d7aeef035c324a88a5c2e4f338f88f07c` |
| 8 | `lemma` | [isNilpotent_iff_eps_dvd](../../../../mathematics/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean/declarations/isnilpotent-iff-eps-dvd--9efbee907494a6419b9b066e.md) | 87 | `result-track:9efbee907494a6419b9b066ecaad7d744662ba83471b4facf5a4c41cbed72014` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean/declarations/instance--1ef1cde8f795729fe9a33bec.md) | 95 | `declaration-track:1ef1cde8f795729fe9a33bece372aae41e4cbb7eb81b763aaabd996c65570708` |
| 10 | `lemma` | [ideal_trichotomy](../../../../mathematics/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean/declarations/ideal-trichotomy--d381654071fc0192f95b20dd.md) | 101 | `result-track:d381654071fc0192f95b20dd67a0d817bf9cdeb1c4c3ec67a17f4356c7bb378f` |
| 11 | `lemma` | [isMaximal_span_singleton_eps](../../../../mathematics/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean/declarations/ismaximal-span-singleton-eps--ea13d0076c9e7398f29a7c11.md) | 131 | `result-track:ea13d0076c9e7398f29a7c11b113e7657a4f2d0fc651415b01dd59d8c638f8c2` |
| 12 | `lemma` | [maximalIdeal_eq_span_singleton_eps](../../../../mathematics/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean/declarations/maximalideal-eq-span-singleton-eps--4ed222f319828b990e8b8a55.md) | 138 | `result-track:4ed222f319828b990e8b8a55f75c0935a2fe24b4fd72eba5e8298d328685ef16` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean/declarations/instance--4c9a528fa7810ac1eaf9d05e.md) | 142 | `declaration-track:4c9a528fa7810ac1eaf9d05edc7fc2aa19bbaff79d567d91110613a2f97ea39b` |
| 14 | `lemma` | [exists_mul_left_or_mul_right](../../../../mathematics/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean/declarations/exists-mul-left-or-mul-right--e5fdd5eb47ab8ef85bd3064a.md) | 149 | `result-track:e5fdd5eb47ab8ef85bd3064a53a77a92c1795a60637e8042d66d3c125db0fd4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
