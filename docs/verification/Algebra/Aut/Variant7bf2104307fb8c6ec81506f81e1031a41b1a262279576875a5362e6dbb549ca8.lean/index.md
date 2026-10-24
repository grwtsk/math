# Verification target: GRWTSK.Algebra.Aut.Variant7bf2104307fb8c6ec81506f81e1031a41b1a262279576875a5362e6dbb549ca8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72113443d06237f6152a32d0bb594aefa4bf77e6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Aut/Variant7bf2104307fb8c6ec81506f81e1031a41b1a262279576875a5362e6dbb549ca8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Aut/Variant7bf2104307fb8c6ec81506f81e1031a41b1a262279576875a5362e6dbb549ca8.lean/index.md) · [Full source](../../../../mathematics/Algebra/Aut/Variant7bf2104307fb8c6ec81506f81e1031a41b1a262279576875a5362e6dbb549ca8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72113443d06237f6152a32d0bb594aefa4bf77e6`.

Source path: `GRWTSK/Algebra/Aut/Variant7bf2104307fb8c6ec81506f81e1031a41b1a262279576875a5362e6dbb549ca8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Aut/Variant7bf2104307fb8c6ec81506f81e1031a41b1a262279576875a5362e6dbb549ca8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupRingAction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Aut` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RingAut](../../../../mathematics/Algebra/Aut/Variant7bf2104307fb8c6ec81506f81e1031a41b1a262279576875a5362e6dbb549ca8.lean/declarations/ringaut--b2f176153180443f658492f9.md) | 42 | `declaration-track:b2f176153180443f658492f97a59f6ab2c239765b2b587045d5ad1cf0efe26f2` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Aut/Variant7bf2104307fb8c6ec81506f81e1031a41b1a262279576875a5362e6dbb549ca8.lean/declarations/instance--ee04bafe7fed024acee82573.md) | 56 | `declaration-track:ee04bafe7fed024acee82573f368a2985c5a83d1623458be4916101948686fb8` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Aut/Variant7bf2104307fb8c6ec81506f81e1031a41b1a262279576875a5362e6dbb549ca8.lean/declarations/instance--70cba371a3ca130f057306a9.md) | 85 | `declaration-track:70cba371a3ca130f057306a910a9dfb9fcebb6ec89f32ca4b2711e91d8250e09` |
| 4 | `def` | [toAddAut](../../../../mathematics/Algebra/Aut/Variant7bf2104307fb8c6ec81506f81e1031a41b1a262279576875a5362e6dbb549ca8.lean/declarations/toaddaut--f2b70421e83ac57f60d62137.md) | 89 | `declaration-track:f2b70421e83ac57f60d62137723e713ce5b320ad481265b7ff1379d33df64c84` |
| 5 | `def` | [toMulAut](../../../../mathematics/Algebra/Aut/Variant7bf2104307fb8c6ec81506f81e1031a41b1a262279576875a5362e6dbb549ca8.lean/declarations/tomulaut--053436c2973beabccdf4f50d.md) | 96 | `declaration-track:053436c2973beabccdf4f50d2812afdce8672bccb253ffa8d46a967c1db0ea84` |
| 6 | `def` | [toPerm](../../../../mathematics/Algebra/Aut/Variant7bf2104307fb8c6ec81506f81e1031a41b1a262279576875a5362e6dbb549ca8.lean/declarations/toperm--6ce8333154f26843868860b9.md) | 103 | `declaration-track:6ce8333154f26843868860b9ca9b8c8d515129d6dab4c9f0926912aa04294ad2` |
| 7 | `instance` | [applyMulSemiringAction](../../../../mathematics/Algebra/Aut/Variant7bf2104307fb8c6ec81506f81e1031a41b1a262279576875a5362e6dbb549ca8.lean/declarations/applymulsemiringaction--fe8853894411871a18d06d88.md) | 116 | `declaration-track:fe8853894411871a18d06d883e5f708e64a087837a2ac0a4999b66ae48a9e07f` |
| 8 | `theorem` | [smul_def](../../../../mathematics/Algebra/Aut/Variant7bf2104307fb8c6ec81506f81e1031a41b1a262279576875a5362e6dbb549ca8.lean/declarations/smul-def--82760054bfc0c94f616e7e15.md) | 128 | `result-track:82760054bfc0c94f616e7e15acc39f0545695c896a15fc08cf8af161d1e49223` |
| 9 | `instance` | [apply_faithfulSMul](../../../../mathematics/Algebra/Aut/Variant7bf2104307fb8c6ec81506f81e1031a41b1a262279576875a5362e6dbb549ca8.lean/declarations/apply-faithfulsmul--83105712928623aa9cf2cb40.md) | 132 | `declaration-track:83105712928623aa9cf2cb408774f2e13c3d202310c33bc18ad28aaa18663451` |
| 10 | `def` | [_root_.GRWTSK.Algebra.RingAut.Variantd7316165b2b59d35c9198f8f79b31bf71a1b1c3638a8492a8773c4909e43807b.MulSemiringAction.toRingAut](../../../../mathematics/Algebra/Aut/Variant7bf2104307fb8c6ec81506f81e1031a41b1a262279576875a5362e6dbb549ca8.lean/declarations/root-grwtsk-algebra-ringaut-variantd7316165b2b59d35c9198f8f79b31bf71a1b1--2310a3dbeae139754aaeab10.md) | 143 | `declaration-track:2310a3dbeae139754aaeab105cd0acf1cc70f473495800c7d649e3273fd75731` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
