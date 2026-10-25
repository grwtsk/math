# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Semantics.Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "648c7f64247eb43a448429c4141054bd93fbfa28",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `648c7f64247eb43a448429c4141054bd93fbfa28`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Ordinal.Exponential` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.Veblen` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.OrdinalTally.Syntax` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LimitSemantics](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean/declarations/limitsemantics--6aacd3e5a1f1493d3438b7df.md) | 24 | `declaration-track:6aacd3e5a1f1493d3438b7df086216fe84e35b946685f8f04f8162bfa11d0832` |
| 2 | `def` | [evalExecutable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean/declarations/evalexecutable--b3e4fc0128d0e183318b4376.md) | 27 | `declaration-track:b3e4fc0128d0e183318b4376b06faa105d10aaadc95d9a5f96ccc6bc7b65d465` |
| 3 | `def` | [evalRaw](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean/declarations/evalraw--7b320297d576bf22f7bb44d6.md) | 35 | `declaration-track:7b320297d576bf22f7bb44d6f986aae702b2e761fc37d69354f094658774bf6b` |
| 4 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean/declarations/eval--aa94621ea8cd65c3e70c0e64.md) | 45 | `declaration-track:aa94621ea8cd65c3e70c0e64b00bfd449e605b1bf36f5255db3fc68414c2fc31` |
| 5 | `def` | [leadingScale](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean/declarations/leadingscale--714c8ffa232df766ad32352b.md) | 50 | `declaration-track:714c8ffa232df766ad32352b8dd9dde192ac49d900f683a90dc11d55fcbfe4b6` |
| 6 | `def` | [RemainderBelow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean/declarations/remainderbelow--854ca21c0f626355830cb185.md) | 55 | `declaration-track:854ca21c0f626355830cb185dd35780a7ad593c4c697a6717ee6c9c18ba200fe` |
| 7 | `def` | [ExecutableRemainderBelow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean/declarations/executableremainderbelow--0df5139af0388fcecb3079af.md) | 61 | `declaration-track:0df5139af0388fcecb3079af4ed822f2614fd8916aa685346c418ba32007d9ce` |
| 8 | `def` | [SemanticallyEqual](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean/declarations/semanticallyequal--d385e5b6b91569c64d2b5988.md) | 67 | `declaration-track:d385e5b6b91569c64d2b5988f55888d31d4849cbf379eb4f8aba2ccf2a9b00e1` |
| 9 | `structure` | [ExecutableOrdinalDomainCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean/declarations/executableordinaldomaincertificate--a80a5ecb3d2efcfb41421a69.md) | 72 | `declaration-track:a80a5ecb3d2efcfb41421a698879c18740572811708c7ec5c01894ba0e1f16ef` |
| 10 | `theorem` | [eval_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean/declarations/eval-zero--390f542e869e2f98df88f580.md) | 78 | `result-track:390f542e869e2f98df88f5804293e89872a31d1bdae646ef546f1acc24ce4ffc` |
| 11 | `theorem` | [eval_tall](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean/declarations/eval-tall--9655939d57a38fb9451a45a0.md) | 83 | `result-track:9655939d57a38fb9451a45a0978d90e1f9669f53beaa6946415fc0fdb4b651c1` |
| 12 | `theorem` | [eval_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean/declarations/eval-succ--118315a6e7b14455b5e0edd4.md) | 89 | `result-track:118315a6e7b14455b5e0edd442cda8462e81d0f9fa28c4d9a11afb0d70526083` |
| 13 | `theorem` | [eval_block](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean/declarations/eval-block--b6cb3d9909c41049c938771b.md) | 96 | `result-track:b6cb3d9909c41049c938771bcecbce726daaa7d998b7a11ab978322859d2035b` |
| 14 | `theorem` | [evalExecutable_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean/declarations/evalexecutable-zero--9b62e6bf053df0ec421f3306.md) | 107 | `result-track:9b62e6bf053df0ec421f3306624a59f0a3fce83fba243d4013f18156a7ebef46` |
| 15 | `theorem` | [evalExecutable_block](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean/declarations/evalexecutable-block--b3a1f56013e4ae3db34f23b2.md) | 111 | `result-track:b3a1f56013e4ae3db34f23b2298a70fdddfcfa928c49fec12f6af21e1d78a41f` |
| 16 | `theorem` | [eval_reify](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean/declarations/eval-reify--3f0cd5cae43775e6f812456b.md) | 122 | `result-track:3f0cd5cae43775e6f812456b7299e4b6c63acb90aa8eb25176f86ecf8cd14a82` |
| 17 | `theorem` | [eval_appendTall](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Semantics/Variantfe31859d362f3731099677fe090be1261f5a103d1672ec0912404c6199fa8e6b.lean/declarations/eval-appendtall--1a5f97b6f96bf60911e054c1.md) | 134 | `result-track:1a5f97b6f96bf60911e054c1f55c97fba7a27cdce233459b2ef3c4184b6c8f76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
