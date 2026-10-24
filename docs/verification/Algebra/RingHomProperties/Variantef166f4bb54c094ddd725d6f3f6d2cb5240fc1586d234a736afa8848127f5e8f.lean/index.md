# Verification target: GRWTSK.Algebra.RingHomProperties.Variantef166f4bb54c094ddd725d6f3f6d2cb5240fc1586d234a736afa8848127f5e8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "361f398e871c73e52e96adb8bfaa509073ca9d9f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingHomProperties/Variantef166f4bb54c094ddd725d6f3f6d2cb5240fc1586d234a736afa8848127f5e8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingHomProperties/Variantef166f4bb54c094ddd725d6f3f6d2cb5240fc1586d234a736afa8848127f5e8f.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingHomProperties/Variantef166f4bb54c094ddd725d6f3f6d2cb5240fc1586d234a736afa8848127f5e8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `361f398e871c73e52e96adb8bfaa509073ca9d9f`.

Source path: `GRWTSK/Algebra/RingHomProperties/Variantef166f4bb54c094ddd725d6f3f6d2cb5240fc1586d234a736afa8848127f5e8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingHomProperties/Variantef166f4bb54c094ddd725d6f3f6d2cb5240fc1586d234a736afa8848127f5e8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Colimits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Iso` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsTensorProduct` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RespectsIso](../../../../mathematics/Algebra/RingHomProperties/Variantef166f4bb54c094ddd725d6f3f6d2cb5240fc1586d234a736afa8848127f5e8f.lean/declarations/respectsiso--5ca359dcc3bd842d7cf7aa1a.md) | 41 | `declaration-track:5ca359dcc3bd842d7cf7aa1ac9211e1cd9e90a22a6f744151813be925d5325ea` |
| 2 | `theorem` | [RespectsIso.cancel_left_isIso](../../../../mathematics/Algebra/RingHomProperties/Variantef166f4bb54c094ddd725d6f3f6d2cb5240fc1586d234a736afa8848127f5e8f.lean/declarations/respectsiso-cancel-left-isiso--1809c423c1b5f985c4846679.md) | 50 | `result-track:1809c423c1b5f985c4846679fadfdd9d750b642a9d4681e789b43984deec3f86` |
| 3 | `theorem` | [RespectsIso.cancel_right_isIso](../../../../mathematics/Algebra/RingHomProperties/Variantef166f4bb54c094ddd725d6f3f6d2cb5240fc1586d234a736afa8848127f5e8f.lean/declarations/respectsiso-cancel-right-isiso--c8f2084233bcf8d958d609a0.md) | 57 | `result-track:c8f2084233bcf8d958d609a0169b53611d7c3f488e9e00491ac8fb3e0330e4eb` |
| 4 | `theorem` | [RespectsIso.is_localization_away_iff](../../../../mathematics/Algebra/RingHomProperties/Variantef166f4bb54c094ddd725d6f3f6d2cb5240fc1586d234a736afa8848127f5e8f.lean/declarations/respectsiso-is-localization-away-iff--d9cebbcfce39187495dd8149.md) | 65 | `result-track:d9cebbcfce39187495dd8149296984724f2c879313163ecd29fb035ba8fa3099` |
| 5 | `def` | [StableUnderComposition](../../../../mathematics/Algebra/RingHomProperties/Variantef166f4bb54c094ddd725d6f3f6d2cb5240fc1586d234a736afa8848127f5e8f.lean/declarations/stableundercomposition--8dd92864965eafdd06bd2c19.md) | 100 | `declaration-track:8dd92864965eafdd06bd2c19f930f47d34c6e951118eccc227e8ca461e4146dc` |
| 6 | `theorem` | [StableUnderComposition.respectsIso](../../../../mathematics/Algebra/RingHomProperties/Variantef166f4bb54c094ddd725d6f3f6d2cb5240fc1586d234a736afa8848127f5e8f.lean/declarations/stableundercomposition-respectsiso--560512c6644f253178c7d118.md) | 107 | `result-track:560512c6644f253178c7d11897d8f182457ee76eb783730a7f1ab8f685f693ef` |
| 7 | `def` | [StableUnderBaseChange](../../../../mathematics/Algebra/RingHomProperties/Variantef166f4bb54c094ddd725d6f3f6d2cb5240fc1586d234a736afa8848127f5e8f.lean/declarations/stableunderbasechange--f74d290cfaecbcf25275f5b0.md) | 127 | `declaration-track:f74d290cfaecbcf25275f5b0ffb2643f320985ec186b7fcb7dadfb9107e78e84` |
| 8 | `theorem` | [StableUnderBaseChange.mk](../../../../mathematics/Algebra/RingHomProperties/Variantef166f4bb54c094ddd725d6f3f6d2cb5240fc1586d234a736afa8848127f5e8f.lean/declarations/stableunderbasechange-mk--ccc731532ab2a727545d3996.md) | 134 | `result-track:ccc731532ab2a727545d39960d0763805e21229f3ea47ce5fbff528b314a66a6` |
| 9 | `theorem` | [StableUnderBaseChange.pushout_inl](../../../../mathematics/Algebra/RingHomProperties/Variantef166f4bb54c094ddd725d6f3f6d2cb5240fc1586d234a736afa8848127f5e8f.lean/declarations/stableunderbasechange-pushout-inl--6b6d7122a88c2c1901cabf9b.md) | 170 | `result-track:6b6d7122a88c2c1901cabf9ba8636069d254a1b61599bb6ead304040d8549c69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
