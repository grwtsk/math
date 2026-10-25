# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.CharZero.Variant1a9e4693e96a52a95a7f37c45ce01a85e38fcec366f78653899a2aa9f1d64dde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2cf3a52bec37bf5e33c03216a66ac3c1ad2042c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/CharZero/Variant1a9e4693e96a52a95a7f37c45ce01a85e38fcec366f78653899a2aa9f1d64dde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant1a9e4693e96a52a95a7f37c45ce01a85e38fcec366f78653899a2aa9f1d64dde.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant1a9e4693e96a52a95a7f37c45ce01a85e38fcec366f78653899a2aa9f1d64dde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2cf3a52bec37bf5e33c03216a66ac3c1ad2042c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/CharZero/Variant1a9e4693e96a52a95a7f37c45ce01a85e38fcec366f78653899a2aa9f1d64dde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/CharZero/Variant1a9e4693e96a52a95a7f37c45ce01a85e38fcec366f78653899a2aa9f1d64dde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Cast.Field` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant1a9e4693e96a52a95a7f37c45ce01a85e38fcec366f78653899a2aa9f1d64dde.lean/declarations/cast-eq-zero--d51a82df16caab4da3432e0e.md) | 31 | `result-track:d51a82df16caab4da3432e0e8aab99d9e4d042669ec4d7060ce1227127eb6508` |
| 2 | `theorem` | [cast_inj](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant1a9e4693e96a52a95a7f37c45ce01a85e38fcec366f78653899a2aa9f1d64dde.lean/declarations/cast-inj--5f5608326cab1468103bbf23.md) | 42 | `result-track:5f5608326cab1468103bbf233ff8ee91de54f011a6e372e2034fee2c1d82dcf5` |
| 3 | `theorem` | [cast_injective](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant1a9e4693e96a52a95a7f37c45ce01a85e38fcec366f78653899a2aa9f1d64dde.lean/declarations/cast-injective--3cf4ddaeb545018ea8554972.md) | 46 | `result-track:3cf4ddaeb545018ea855497261f1a81db305a160c593da85f3223f66456ee80f` |
| 4 | `theorem` | [cast_ne_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant1a9e4693e96a52a95a7f37c45ce01a85e38fcec366f78653899a2aa9f1d64dde.lean/declarations/cast-ne-zero--1dc9226a74a380466ffbee71.md) | 50 | `result-track:1dc9226a74a380466ffbee717ce0f82b953651a7563b14e6b5c4d1e1dc4d9e04` |
| 5 | `theorem` | [cast_eq_one](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant1a9e4693e96a52a95a7f37c45ce01a85e38fcec366f78653899a2aa9f1d64dde.lean/declarations/cast-eq-one--878a0c93b535f8310a02c18a.md) | 55 | `result-track:878a0c93b535f8310a02c18a54bfccdce480457467fcdfdaea7beee6cdec37b1` |
| 6 | `theorem` | [cast_ne_one](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant1a9e4693e96a52a95a7f37c45ce01a85e38fcec366f78653899a2aa9f1d64dde.lean/declarations/cast-ne-one--c16d4092d5fc8627a170b212.md) | 59 | `result-track:c16d4092d5fc8627a170b2125e117d01f438438027e5809ab2ac534fd96aaff8` |
| 7 | `theorem` | [cast_div_charZero](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant1a9e4693e96a52a95a7f37c45ce01a85e38fcec366f78653899a2aa9f1d64dde.lean/declarations/cast-div-charzero--5544ecc596e3d56fb09ae5ab.md) | 64 | `result-track:5544ecc596e3d56fb09ae5ab71c759a308ae9ec7f864ba857a4ecb742bf5163d` |
| 8 | `theorem` | [RingHom.injective_int](../../../../mathematics/FoundationsLogicAndTypeTheory/CharZero/Variant1a9e4693e96a52a95a7f37c45ce01a85e38fcec366f78653899a2aa9f1d64dde.lean/declarations/ringhom-injective-int--495b9c6c0906a12e367ec176.md) | 73 | `result-track:495b9c6c0906a12e367ec1762bb2ec570516fbc3b81f92e20e3c2520ba1bc5e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
