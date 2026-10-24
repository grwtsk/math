# Verification target: GRWTSK.Algebra.NonUnitalSubsemiring.Variant936bceee571dd411af7eaec3a8d9910deed9cd8b935b0b0edd08852a4c0f38d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfaab717163b9bfb677c27ab1beaf3abb381c14f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NonUnitalSubsemiring/Variant936bceee571dd411af7eaec3a8d9910deed9cd8b935b0b0edd08852a4c0f38d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant936bceee571dd411af7eaec3a8d9910deed9cd8b935b0b0edd08852a4c0f38d7.lean/index.md) · [Full source](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant936bceee571dd411af7eaec3a8d9910deed9cd8b935b0b0edd08852a4c0f38d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfaab717163b9bfb677c27ab1beaf3abb381c14f`.

Source path: `GRWTSK/Algebra/NonUnitalSubsemiring/Variant936bceee571dd411af7eaec3a8d9910deed9cd8b935b0b0edd08852a4c0f38d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NonUnitalSubsemiring/Variant936bceee571dd411af7eaec3a8d9910deed9cd8b935b0b0edd08852a4c0f38d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subsemigroup.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.NonUnitalSubsemiring.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Center` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SubStarSemigroup](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant936bceee571dd411af7eaec3a8d9910deed9cd8b935b0b0edd08852a4c0f38d7.lean/declarations/substarsemigroup--b188b61014c28d7f6e992213.md) | 27 | `declaration-track:b188b61014c28d7f6e992213e7b858163b36bad7761e992c2bcedd945dbaddec` |
| 2 | `structure` | [NonUnitalStarSubsemiring](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant936bceee571dd411af7eaec3a8d9910deed9cd8b935b0b0edd08852a4c0f38d7.lean/declarations/nonunitalstarsubsemiring--aa2cdd2f247ea777ccba5327.md) | 37 | `declaration-track:aa2cdd2f247ea777ccba5327d7a7695bd52e61e07926729403d1290a99a193d8` |
| 3 | `instance` | [instSetLike](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant936bceee571dd411af7eaec3a8d9910deed9cd8b935b0b0edd08852a4c0f38d7.lean/declarations/instsetlike--0fab2f5a5dd3f81f5ea3a685.md) | 49 | `declaration-track:0fab2f5a5dd3f81f5ea3a685d7ca6b67228618da0cb8cac63d58f8967f45d690` |
| 4 | `def` | [ofClass](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant936bceee571dd411af7eaec3a8d9910deed9cd8b935b0b0edd08852a4c0f38d7.lean/declarations/ofclass--8a7510033d5a379ceab9bf24.md) | 61 | `declaration-track:8a7510033d5a379ceab9bf24499324ae4d9262547f3bb8013888063799ab64ab` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant936bceee571dd411af7eaec3a8d9910deed9cd8b935b0b0edd08852a4c0f38d7.lean/declarations/instance--99b8903d73f3998883ca7081.md) | 69 | `declaration-track:99b8903d73f3998883ca7081380f43fd658649d05017a5fcf6b6a40a6ccdea30` |
| 6 | `instance` | [instNonUnitalSubsemiringClass](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant936bceee571dd411af7eaec3a8d9910deed9cd8b935b0b0edd08852a4c0f38d7.lean/declarations/instnonunitalsubsemiringclass--ffa75c753e75a706ba8febad.md) | 81 | `declaration-track:ffa75c753e75a706ba8febad9b626d5ad836da0df5c826edb278b7329c0b6f1f` |
| 7 | `instance` | [instStarMemClass](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant936bceee571dd411af7eaec3a8d9910deed9cd8b935b0b0edd08852a4c0f38d7.lean/declarations/inststarmemclass--1cacee11bc9ee3a8f5656568.md) | 87 | `declaration-track:1cacee11bc9ee3a8f565656838645d3bcbb1d4bd606a0a52a31192df2c9348df` |
| 8 | `theorem` | [mem_carrier](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant936bceee571dd411af7eaec3a8d9910deed9cd8b935b0b0edd08852a4c0f38d7.lean/declarations/mem-carrier--10cc1eaa80b9371058d238a3.md) | 90 | `result-track:10cc1eaa80b9371058d238a39445fc4f526a448d4d9bc6a0ecd287d5fb845fbd` |
| 9 | `def` | [copy](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant936bceee571dd411af7eaec3a8d9910deed9cd8b935b0b0edd08852a4c0f38d7.lean/declarations/copy--97972ef3f3d70436dc53e924.md) | 95 | `declaration-track:97972ef3f3d70436dc53e924d1269cf0b5547d3fb4ba509be1f76f9ea7ab75e9` |
| 10 | `theorem` | [coe_copy](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant936bceee571dd411af7eaec3a8d9910deed9cd8b935b0b0edd08852a4c0f38d7.lean/declarations/coe-copy--ef30f4121c458af31b547e0a.md) | 104 | `result-track:ef30f4121c458af31b547e0ac6f2a5b9139bb309d2b15d546e19da2a156e449e` |
| 11 | `theorem` | [copy_eq](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant936bceee571dd411af7eaec3a8d9910deed9cd8b935b0b0edd08852a4c0f38d7.lean/declarations/copy-eq--b3ea1eb72201b2f07011cef3.md) | 108 | `result-track:b3ea1eb72201b2f07011cef38e713d03c48319151fdd4984fa9f2ea68ca4cf87` |
| 12 | `def` | [center](../../../../mathematics/Algebra/NonUnitalSubsemiring/Variant936bceee571dd411af7eaec3a8d9910deed9cd8b935b0b0edd08852a4c0f38d7.lean/declarations/center--b4bc3b9b66fa185bff5b68b8.md) | 118 | `declaration-track:b4bc3b9b66fa185bff5b68b8d373f104096aff8f87d282522306c533bff50440` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
