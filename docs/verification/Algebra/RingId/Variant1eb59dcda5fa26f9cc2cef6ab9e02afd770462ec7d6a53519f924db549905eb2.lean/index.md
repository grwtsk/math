# Verification target: GRWTSK.Algebra.RingId.Variant1eb59dcda5fa26f9cc2cef6ab9e02afd770462ec7d6a53519f924db549905eb2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "076306382639d055311728eebfff2634c1504233",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingId/Variant1eb59dcda5fa26f9cc2cef6ab9e02afd770462ec7d6a53519f924db549905eb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingId/Variant1eb59dcda5fa26f9cc2cef6ab9e02afd770462ec7d6a53519f924db549905eb2.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingId/Variant1eb59dcda5fa26f9cc2cef6ab9e02afd770462ec7d6a53519f924db549905eb2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `076306382639d055311728eebfff2634c1504233`.

Source path: `GRWTSK/Algebra/RingId/Variant1eb59dcda5fa26f9cc2cef6ab9e02afd770462ec7d6a53519f924db549905eb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingId/Variant1eb59dcda5fa26f9cc2cef6ab9e02afd770462ec7d6a53519f924db549905eb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.Insts` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getCommRingId?](../../../../mathematics/Algebra/RingId/Variant1eb59dcda5fa26f9cc2cef6ab9e02afd770462ec7d6a53519f924db549905eb2.lean/declarations/getcommringid--6844471a2e158b0f28814317.md) | 29 | `declaration-track:6844471a2e158b0f2881431738fc19b60724b0a9a01971fb919b7875083296cc` |
| 2 | `def` | [getNonCommRingId?](../../../../mathematics/Algebra/RingId/Variant1eb59dcda5fa26f9cc2cef6ab9e02afd770462ec7d6a53519f924db549905eb2.lean/declarations/getnoncommringid--2b30eb83bdcd98fb4a0d9958.md) | 132 | `declaration-track:2b30eb83bdcd98fb4a0d9958b89689b3dd91f9c9f6b56b4ea7ef75a86a469cd1` |
| 3 | `def` | [setCommSemiringId](../../../../mathematics/Algebra/RingId/Variant1eb59dcda5fa26f9cc2cef6ab9e02afd770462ec7d6a53519f924db549905eb2.lean/declarations/setcommsemiringid--f2103315193f0f97043d663f.md) | 154 | `declaration-track:f2103315193f0f97043d663fb72971685395e8cddf8f14344121a14314694b4b` |
| 4 | `def` | [getCommSemiringId?](../../../../mathematics/Algebra/RingId/Variant1eb59dcda5fa26f9cc2cef6ab9e02afd770462ec7d6a53519f924db549905eb2.lean/declarations/getcommsemiringid--ec0073fbe0a48357198adf56.md) | 157 | `declaration-track:ec0073fbe0a48357198adf56b0238671815db05f32e02355337b4021c41f658f` |
| 5 | `def` | [getNonCommSemiringId?](../../../../mathematics/Algebra/RingId/Variant1eb59dcda5fa26f9cc2cef6ab9e02afd770462ec7d6a53519f924db549905eb2.lean/declarations/getnoncommsemiringid--f0ad9692cce7c23cabbf3813.md) | 181 | `declaration-track:f0ad9692cce7c23cabbf3813c419cdc25a5f58584c5a02f03d281e1d94cb742b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
