# Verification target: GRWTSK.Algebra.Field.Variant5e6835e86b0cd7043fa2499ee6af748e2ab222947458905624ac2bd6f179136d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7023d90764a6bdaaf842affb7ad6b6d43cb96d98",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variant5e6835e86b0cd7043fa2499ee6af748e2ab222947458905624ac2bd6f179136d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/FieldTheory/Variant5e6835e86b0cd7043fa2499ee6af748e2ab222947458905624ac2bd6f179136d.lean/index.md) · [Full source](../../../../mathematics/Algebra/FieldTheory/Variant5e6835e86b0cd7043fa2499ee6af748e2ab222947458905624ac2bd6f179136d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7023d90764a6bdaaf842affb7ad6b6d43cb96d98`.

Source path: `GRWTSK/Algebra/Field/Variant5e6835e86b0cd7043fa2499ee6af748e2ab222947458905624ac2bd6f179136d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variant5e6835e86b0cd7043fa2499ee6af748e2ab222947458905624ac2bd6f179136d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.PurelyInseparable.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Artinian.Ring` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Taylor` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Unramified.Finite` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [of_isSeparable](../../../../mathematics/Algebra/FieldTheory/Variant5e6835e86b0cd7043fa2499ee6af748e2ab222947458905624ac2bd6f179136d.lean/declarations/of-isseparable--1886e263c256f2f2bd04a47f.md) | 42 | `result-track:1886e263c256f2f2bd04a47fc84acc49659dd833bed2388a082572b44bea415c` |
| 2 | `theorem` | [bijective_of_isAlgClosed_of_isLocalRing](../../../../mathematics/Algebra/FieldTheory/Variant5e6835e86b0cd7043fa2499ee6af748e2ab222947458905624ac2bd6f179136d.lean/declarations/bijective-of-isalgclosed-of-islocalring--7a32bad4fb1f5f699338fb85.md) | 59 | `result-track:7a32bad4fb1f5f699338fb859eff6644e74d3394f446c8f6ad8f4e6257279551` |
| 3 | `theorem` | [isField_of_isAlgClosed_of_isLocalRing](../../../../mathematics/Algebra/FieldTheory/Variant5e6835e86b0cd7043fa2499ee6af748e2ab222947458905624ac2bd6f179136d.lean/declarations/isfield-of-isalgclosed-of-islocalring--ebf4851af8423563852a37f3.md) | 109 | `result-track:ebf4851af8423563852a37f30fd48bd1e42a72a80be30ebc3aca2fd2eddfef90` |
| 4 | `theorem` | [isReduced_of_field](../../../../mathematics/Algebra/FieldTheory/Variant5e6835e86b0cd7043fa2499ee6af748e2ab222947458905624ac2bd6f179136d.lean/declarations/isreduced-of-field--7ff6d9b9be085f314ad26d2e.md) | 127 | `result-track:7ff6d9b9be085f314ad26d2e93038c7cd3a803d30a1c4d7e516159b8229f761c` |
| 5 | `theorem` | [range_eq_top_of_isPurelyInseparable](../../../../mathematics/Algebra/FieldTheory/Variant5e6835e86b0cd7043fa2499ee6af748e2ab222947458905624ac2bd6f179136d.lean/declarations/range-eq-top-of-ispurelyinseparable--89f558285d1e5b7b68bf39d4.md) | 158 | `result-track:89f558285d1e5b7b68bf39d426d66e6f54979782b9040bf02540ffdfba4955bc` |
| 6 | `theorem` | [isSeparable](../../../../mathematics/Algebra/FieldTheory/Variant5e6835e86b0cd7043fa2499ee6af748e2ab222947458905624ac2bd6f179136d.lean/declarations/isseparable--93659e8ddbe0146c48764c0e.md) | 204 | `result-track:93659e8ddbe0146c48764c0eca4293ff167924914f19f4d7ef3def12e6700afb` |
| 7 | `theorem` | [iff_isSeparable](../../../../mathematics/Algebra/FieldTheory/Variant5e6835e86b0cd7043fa2499ee6af748e2ab222947458905624ac2bd6f179136d.lean/declarations/iff-isseparable--349740f11b6e9d391732f250.md) | 214 | `result-track:349740f11b6e9d391732f250ccd7f20111ace95621ea69ca23922d955e3dd6a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
