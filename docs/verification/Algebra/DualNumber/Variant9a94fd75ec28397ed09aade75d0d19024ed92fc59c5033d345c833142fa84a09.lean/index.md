# Verification target: GRWTSK.Algebra.DualNumber.Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9446422e43524c23f4c560bf17e6d407d3526c54",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/index.md) · [Full source](../../../../mathematics/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9446422e43524c23f4c560bf17e6d407d3526c54`.

Source path: `GRWTSK/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DualNumber` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isNilpotent_iff_isNilpotent_fst](../../../../mathematics/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/declarations/isnilpotent-iff-isnilpotent-fst--c909b30e1969a7c32926514f.md) | 37 | `result-track:c909b30e1969a7c32926514f24a5a4c59b15ac3b12f0e3a48a9778f7ed1548d4` |
| 2 | `lemma` | [isNilpotent_inl_iff](../../../../mathematics/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/declarations/isnilpotent-inl-iff--fd7ef45307b14773154674fa.md) | 50 | `result-track:fd7ef45307b14773154674fafc2b3936923db5a1ae208def608a34ad6407ce64` |
| 3 | `lemma` | [isNilpotent_inr](../../../../mathematics/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/declarations/isnilpotent-inr--14b9bbff9fa8a8df1904ee96.md) | 54 | `result-track:14b9bbff9fa8a8df1904ee96765ba4f28177e605a98c73606e0502a6a01880be` |
| 4 | `lemma` | [isUnit_or_isNilpotent_of_isMaximal_isNilpotent](../../../../mathematics/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/declarations/isunit-or-isnilpotent-of-ismaximal-isnilpotent--65a82ab88fe94b40e7da6869.md) | 59 | `result-track:65a82ab88fe94b40e7da68693defe26c8f7e52a3966044bac7077033227849f9` |
| 5 | `lemma` | [isUnit_or_isNilpotent](../../../../mathematics/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/declarations/isunit-or-isnilpotent--497824d310950223a73b35ce.md) | 70 | `result-track:497824d310950223a73b35ce3aa076cbc1c66b3d6939cbc18684898bd3154022` |
| 6 | `lemma` | [fst_eq_zero_iff_eps_dvd](../../../../mathematics/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/declarations/fst-eq-zero-iff-eps-dvd--71095b6ba56c5e2602a35fcf.md) | 81 | `result-track:71095b6ba56c5e2602a35fcf7d154fd637dbc3aebbc499056e76c886bc7eab6e` |
| 7 | `lemma` | [isNilpotent_eps](../../../../mathematics/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/declarations/isnilpotent-eps--647de237f4235dce265b679a.md) | 89 | `result-track:647de237f4235dce265b679a95685af04d6bd53dc3dd33d637b4844be35e2144` |
| 8 | `lemma` | [isNilpotent_iff_eps_dvd](../../../../mathematics/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/declarations/isnilpotent-iff-eps-dvd--b45991fe0c9878bf3e39c9b0.md) | 95 | `result-track:b45991fe0c9878bf3e39c9b04e444edf580bbe53e9824a819586bbc79914ec93` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/declarations/instance--02591f855a99a53b16e7fb1e.md) | 103 | `declaration-track:02591f855a99a53b16e7fb1e1bd71e902d776e4965f696d923fa392dec706c89` |
| 10 | `lemma` | [ideal_trichotomy](../../../../mathematics/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/declarations/ideal-trichotomy--f17e8dc029e1f5ed51b9eb4c.md) | 109 | `result-track:f17e8dc029e1f5ed51b9eb4c630bac185a1af1b31916fc72a82ea3352a4a59e0` |
| 11 | `lemma` | [isMaximal_span_singleton_eps](../../../../mathematics/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/declarations/ismaximal-span-singleton-eps--b4e1c64b70b70495c3ec19dc.md) | 139 | `result-track:b4e1c64b70b70495c3ec19dcd3248ce828fb8fbe5e98e44ba6c942cf9ede5924` |
| 12 | `lemma` | [maximalIdeal_eq_span_singleton_eps](../../../../mathematics/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/declarations/maximalideal-eq-span-singleton-eps--23056ef5331c435495d5f803.md) | 146 | `result-track:23056ef5331c435495d5f803267b3ad3733afad21a861195e90d995c5a7b2e9a` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/declarations/instance--5b6e6ff09ffaa4496c88feed.md) | 150 | `declaration-track:5b6e6ff09ffaa4496c88feedf848f4c185b9ec7ea5577431ed30a5a15bbcfd43` |
| 14 | `lemma` | [exists_mul_left_or_mul_right](../../../../mathematics/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/declarations/exists-mul-left-or-mul-right--1c85515864b215df8105a864.md) | 157 | `result-track:1c85515864b215df8105a864eb9d0852067a9b7e494f9ac765bfe9c865bb3c4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
