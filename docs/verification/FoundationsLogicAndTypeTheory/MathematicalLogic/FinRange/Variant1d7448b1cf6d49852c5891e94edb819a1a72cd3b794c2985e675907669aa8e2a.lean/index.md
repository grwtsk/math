# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FinRange.Variant1d7448b1cf6d49852c5891e94edb819a1a72cd3b794c2985e675907669aa8e2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec90a4941f4ce0e99491815d95e6613a418c240d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FinRange/Variant1d7448b1cf6d49852c5891e94edb819a1a72cd3b794c2985e675907669aa8e2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FinRange/Variant1d7448b1cf6d49852c5891e94edb819a1a72cd3b794c2985e675907669aa8e2a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FinRange/Variant1d7448b1cf6d49852c5891e94edb819a1a72cd3b794c2985e675907669aa8e2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec90a4941f4ce0e99491815d95e6613a418c240d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FinRange/Variant1d7448b1cf6d49852c5891e94edb819a1a72cd3b794c2985e675907669aa8e2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/FinRange/Variant1d7448b1cf6d49852c5891e94edb819a1a72cd3b794c2985e675907669aa8e2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [count_finRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FinRange/Variant1d7448b1cf6d49852c5891e94edb819a1a72cd3b794c2985e675907669aa8e2a.lean/declarations/count-finrange--dcb185ac608fad994a3c48d6.md) | 37 | `result-track:dcb185ac608fad994a3c48d63067f6812a993f31eb692c7f17a00c2f8c109519` |
| 2 | `theorem` | [idxOf_finRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FinRange/Variant1d7448b1cf6d49852c5891e94edb819a1a72cd3b794c2985e675907669aa8e2a.lean/declarations/idxof-finrange--9e9c5d5eb148537ccb90e3c8.md) | 40 | `result-track:9e9c5d5eb148537ccb90e3c84e88b3addb10798a036f352de5d59e106332b6ef` |
| 3 | `theorem` | [ofFn_eq_pmap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FinRange/Variant1d7448b1cf6d49852c5891e94edb819a1a72cd3b794c2985e675907669aa8e2a.lean/declarations/offn-eq-pmap--2638b00d8776ab72f11a14d1.md) | 43 | `result-track:2638b00d8776ab72f11a14d1c8327760ea64c18728eeac25bd9c636a3a6080e8` |
| 4 | `theorem` | [ofFn_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FinRange/Variant1d7448b1cf6d49852c5891e94edb819a1a72cd3b794c2985e675907669aa8e2a.lean/declarations/offn-id--32308dbe673b4b243505f5f5.md) | 48 | `result-track:32308dbe673b4b243505f5f5cf14ed76de63cd4ae15483a164f4a17ac4d52274` |
| 5 | `theorem` | [ofFn_eq_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FinRange/Variant1d7448b1cf6d49852c5891e94edb819a1a72cd3b794c2985e675907669aa8e2a.lean/declarations/offn-eq-map--6ac0f1b8bc3200c451e45d12.md) | 51 | `result-track:6ac0f1b8bc3200c451e45d127bc1ef96b987a360aee035567216599e4df52bdf` |
| 6 | `theorem` | [nodup_ofFn_ofInjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FinRange/Variant1d7448b1cf6d49852c5891e94edb819a1a72cd3b794c2985e675907669aa8e2a.lean/declarations/nodup-offn-ofinjective--309e4d0d73f46181f83c11d8.md) | 54 | `result-track:309e4d0d73f46181f83c11d87dfe0cdaaf330547c3a9e92a1e4a81eafa6b51ae` |
| 7 | `theorem` | [nodup_ofFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FinRange/Variant1d7448b1cf6d49852c5891e94edb819a1a72cd3b794c2985e675907669aa8e2a.lean/declarations/nodup-offn--17328feaf84e2b73ba53313e.md) | 59 | `result-track:17328feaf84e2b73ba53313eda4d6d534f3ad2eb6f714060e48f3d4204a78d52` |
| 8 | `theorem` | [Equiv.Perm.map_finRange_perm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FinRange/Variant1d7448b1cf6d49852c5891e94edb819a1a72cd3b794c2985e675907669aa8e2a.lean/declarations/equiv-perm-map-finrange-perm--d10247c8d74badbe218a95c0.md) | 73 | `result-track:d10247c8d74badbe218a95c01bae9e9f0f5124815feebbe20b33f812f767c438` |
| 9 | `theorem` | [Equiv.Perm.ofFn_comp_perm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FinRange/Variant1d7448b1cf6d49852c5891e94edb819a1a72cd3b794c2985e675907669aa8e2a.lean/declarations/equiv-perm-offn-comp-perm--7763907e6e83008918ec1edf.md) | 80 | `result-track:7763907e6e83008918ec1edf222f26af513cb36c76dd8b98ed084400608622a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
