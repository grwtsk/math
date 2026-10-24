# Verification target: GRWTSK.Algebra.LocalRing.Variant0013051e2c2925494791f7479ebaf3e52e040abf4d4a86018e6f4d2b3cb94297

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81ae7bdcc99ca1afd0394488836dc41315e9f9d2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalRing/Variant0013051e2c2925494791f7479ebaf3e52e040abf4d4a86018e6f4d2b3cb94297.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LocalRing/Variant0013051e2c2925494791f7479ebaf3e52e040abf4d4a86018e6f4d2b3cb94297.lean/index.md) · [Full source](../../../../mathematics/Algebra/LocalRing/Variant0013051e2c2925494791f7479ebaf3e52e040abf4d4a86018e6f4d2b3cb94297.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81ae7bdcc99ca1afd0394488836dc41315e9f9d2`.

Source path: `GRWTSK/Algebra/LocalRing/Variant0013051e2c2925494791f7479ebaf3e52e040abf4d4a86018e6f4d2b3cb94297.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalRing/Variant0013051e2c2925494791f7479ebaf3e52e040abf4d4a86018e6f4d2b3cb94297.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalRing.Module` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Ideal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Unramified.Field` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Unramified.Locus` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalRing/Variant0013051e2c2925494791f7479ebaf3e52e040abf4d4a86018e6f4d2b3cb94297.lean/declarations/instance--4243f7fd2a1a0d278c6903eb.md) | 40 | `declaration-track:4243f7fd2a1a0d278c6903ebde2ffba78f2923fff06f4bf658adc1f74c1f0906` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalRing/Variant0013051e2c2925494791f7479ebaf3e52e040abf4d4a86018e6f4d2b3cb94297.lean/declarations/instance--732b837a1efa96a61fe668f8.md) | 42 | `declaration-track:732b837a1efa96a61fe668f8a866c3fc6c7f5be5e7a06c7e2c65c66f6713b4c1` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalRing/Variant0013051e2c2925494791f7479ebaf3e52e040abf4d4a86018e6f4d2b3cb94297.lean/declarations/instance--f426ecf0391fb381dca92159.md) | 50 | `declaration-track:f426ecf0391fb381dca9215969e3bf236048f225866e49e72750947619c8ffc5` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalRing/Variant0013051e2c2925494791f7479ebaf3e52e040abf4d4a86018e6f4d2b3cb94297.lean/declarations/instance--b88d79628aa765c80f350928.md) | 57 | `declaration-track:b88d79628aa765c80f35092808e4847cbb5fb450ab8655962e9ed1f2441a1a72` |
| 5 | `lemma` | [FormallyUnramified.isField_quotient_map_maximalIdeal](../../../../mathematics/Algebra/LocalRing/Variant0013051e2c2925494791f7479ebaf3e52e040abf4d4a86018e6f4d2b3cb94297.lean/declarations/formallyunramified-isfield-quotient-map-maximalideal--c969ead4c857b56098fbaae3.md) | 61 | `result-track:c969ead4c857b56098fbaae34cc52a5c3bff2d83b2904a7c33af9d2b3fb09a5c` |
| 6 | `lemma` | [FormallyUnramified.map_maximalIdeal](../../../../mathematics/Algebra/LocalRing/Variant0013051e2c2925494791f7479ebaf3e52e040abf4d4a86018e6f4d2b3cb94297.lean/declarations/formallyunramified-map-maximalideal--f7b64495bbe7b74ea2c94490.md) | 81 | `result-track:f7b64495bbe7b74ea2c944900d5b00f9a577c05dbe8b3a12ab6d474d6ba4ead0` |
| 7 | `lemma` | [FormallyUnramified.of_map_maximalIdeal](../../../../mathematics/Algebra/LocalRing/Variant0013051e2c2925494791f7479ebaf3e52e040abf4d4a86018e6f4d2b3cb94297.lean/declarations/formallyunramified-of-map-maximalideal--49cb20117942883edee957c8.md) | 88 | `result-track:49cb20117942883edee957c802688237f2ea5604fb3261d3ea62125af93a09fb` |
| 8 | `lemma` | [FormallyUnramified.iff_map_maximalIdeal_eq](../../../../mathematics/Algebra/LocalRing/Variant0013051e2c2925494791f7479ebaf3e52e040abf4d4a86018e6f4d2b3cb94297.lean/declarations/formallyunramified-iff-map-maximalideal-eq--c1350d546a8705e63c6735fe.md) | 110 | `result-track:c1350d546a8705e63c6735fe96791f7f20daa2d6714bdfaa6b41ba8198ded223` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LocalRing/Variant0013051e2c2925494791f7479ebaf3e52e040abf4d4a86018e6f4d2b3cb94297.lean/declarations/instance--7d06fdbcb7bb07071729b56b.md) | 123 | `declaration-track:7d06fdbcb7bb07071729b56bf9ae3a6b100a2181d63f5b31c00977595f9bef2d` |
| 10 | `lemma` | [isUnramifiedAt_iff_map_eq](../../../../mathematics/Algebra/LocalRing/Variant0013051e2c2925494791f7479ebaf3e52e040abf4d4a86018e6f4d2b3cb94297.lean/declarations/isunramifiedat-iff-map-eq--d1d2d99aa0c619f77f8b70c3.md) | 129 | `result-track:d1d2d99aa0c619f77f8b70c3c08fc9886e9d92baf862f1a6854436e516d86d61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
