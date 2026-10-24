# Verification target: GRWTSK.Algebra.RingInvo.Variant833801cd6979c8b945e2e60445445ab67002f540ce0ecb01bf418c41bff4bc31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb3ff665e2985c06e668bb14e312ee85cbac62a0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingInvo/Variant833801cd6979c8b945e2e60445445ab67002f540ce0ecb01bf418c41bff4bc31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingInvo/Variant833801cd6979c8b945e2e60445445ab67002f540ce0ecb01bf418c41bff4bc31.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingInvo/Variant833801cd6979c8b945e2e60445445ab67002f540ce0ecb01bf418c41bff4bc31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb3ff665e2985c06e668bb14e312ee85cbac62a0`.

Source path: `GRWTSK/Algebra/RingInvo/Variant833801cd6979c8b945e2e60445445ab67002f540ce0ecb01bf418c41bff4bc31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingInvo/Variant833801cd6979c8b945e2e60445445ab67002f540ce0ecb01bf418c41bff4bc31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RingInvo](../../../../mathematics/Algebra/RingInvo/Variant833801cd6979c8b945e2e60445445ab67002f540ce0ecb01bf418c41bff4bc31.lean/declarations/ringinvo--5846c1f481f0ae0e9fe052fe.md) | 39 | `declaration-track:5846c1f481f0ae0e9fe052fe827a342004f223100fadf8d05aaf146b9a0a5cff` |
| 2 | `class` | [RingInvoClass](../../../../mathematics/Algebra/RingInvo/Variant833801cd6979c8b945e2e60445445ab67002f540ce0ecb01bf418c41bff4bc31.lean/declarations/ringinvoclass--af107fe5f39b444e2f5954aa.md) | 48 | `declaration-track:af107fe5f39b444e2f5954aa4b8ae9b6ea864652483b405c0d9cd2bea5b99354` |
| 3 | `def` | [RingInvoClass.toRingInvo](../../../../mathematics/Algebra/RingInvo/Variant833801cd6979c8b945e2e60445445ab67002f540ce0ecb01bf418c41bff4bc31.lean/declarations/ringinvoclass-toringinvo--9730230378066061891b5ec8.md) | 57 | `declaration-track:9730230378066061891b5ec8c09fa6a28a1750c53784cff6c536b38471a29166` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingInvo/Variant833801cd6979c8b945e2e60445445ab67002f540ce0ecb01bf418c41bff4bc31.lean/declarations/instance--ea73a1e17363a7d275ec5473.md) | 67 | `declaration-track:ea73a1e17363a7d275ec54739d94f95b41cc1e03d3e0515535f5d8ce0744c996` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingInvo/Variant833801cd6979c8b945e2e60445445ab67002f540ce0ecb01bf418c41bff4bc31.lean/declarations/instance--8175b48993fa2b3a95d53a97.md) | 70 | `declaration-track:8175b48993fa2b3a95d53a97290195a2fea09a8ecd8b1c0fcdff35bbec69c4cf` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingInvo/Variant833801cd6979c8b945e2e60445445ab67002f540ce0ecb01bf418c41bff4bc31.lean/declarations/instance--58435b67819379223bbe54f3.md) | 81 | `declaration-track:58435b67819379223bbe54f39e9047a78243c632d46baf8538cee5dcadbb21e4` |
| 7 | `def` | [mk'](../../../../mathematics/Algebra/RingInvo/Variant833801cd6979c8b945e2e60445445ab67002f540ce0ecb01bf418c41bff4bc31.lean/declarations/mk--8c5882e43c444845c9765e56.md) | 87 | `declaration-track:8c5882e43c444845c9765e566992f0ee54e7bccc1f5b80e570605d027bb281f3` |
| 8 | `theorem` | [involution](../../../../mathematics/Algebra/RingInvo/Variant833801cd6979c8b945e2e60445445ab67002f540ce0ecb01bf418c41bff4bc31.lean/declarations/involution--f92ffdfe3a0d3c8c8cc90e7b.md) | 95 | `result-track:f92ffdfe3a0d3c8c8cc90e7baf4dd6d72d1a787570f96db1c42d79da6615ac3c` |
| 9 | `theorem` | [coe_ringEquiv](../../../../mathematics/Algebra/RingInvo/Variant833801cd6979c8b945e2e60445445ab67002f540ce0ecb01bf418c41bff4bc31.lean/declarations/coe-ringequiv--6d0543bd416075d472bf9e18.md) | 103 | `result-track:6d0543bd416075d472bf9e1892fc6a55168c74fa11212d54ba558fc73a811e86` |
| 10 | `theorem` | [map_eq_zero_iff](../../../../mathematics/Algebra/RingInvo/Variant833801cd6979c8b945e2e60445445ab67002f540ce0ecb01bf418c41bff4bc31.lean/declarations/map-eq-zero-iff--595db60a51dc4663b3d8bc50.md) | 106 | `result-track:595db60a51dc4663b3d8bc50e4b58aada319ad136c4a582d11452e625ec92224` |
| 11 | `def` | [RingInvo.id](../../../../mathematics/Algebra/RingInvo/Variant833801cd6979c8b945e2e60445445ab67002f540ce0ecb01bf418c41bff4bc31.lean/declarations/ringinvo-id--60c5bc9d069299131c526f8e.md) | 118 | `declaration-track:60c5bc9d069299131c526f8ec2462f3a4896b3928fe528c83b0701fd42f5a972` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingInvo/Variant833801cd6979c8b945e2e60445445ab67002f540ce0ecb01bf418c41bff4bc31.lean/declarations/instance--3b34837cba9a02a7507f7819.md) | 121 | `declaration-track:3b34837cba9a02a7507f7819a5ad135f91032895c7c99f1d2b46a87508d14fdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
