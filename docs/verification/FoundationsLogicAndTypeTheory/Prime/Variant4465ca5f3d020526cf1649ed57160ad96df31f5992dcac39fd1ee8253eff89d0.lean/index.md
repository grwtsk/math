# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Prime.Variant4465ca5f3d020526cf1649ed57160ad96df31f5992dcac39fd1ee8253eff89d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "423420c81a9517b846a513ca12acc96b68fb9ae0",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Prime/Variant4465ca5f3d020526cf1649ed57160ad96df31f5992dcac39fd1ee8253eff89d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant4465ca5f3d020526cf1649ed57160ad96df31f5992dcac39fd1ee8253eff89d0.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant4465ca5f3d020526cf1649ed57160ad96df31f5992dcac39fd1ee8253eff89d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `423420c81a9517b846a513ca12acc96b68fb9ae0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Prime/Variant4465ca5f3d020526cf1649ed57160ad96df31f5992dcac39fd1ee8253eff89d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Prime/Variant4465ca5f3d020526cf1649ed57160ad96df31f5992dcac39fd1ee8253eff89d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minFacAux](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant4465ca5f3d020526cf1649ed57160ad96df31f5992dcac39fd1ee8253eff89d0.lean/declarations/minfacaux--1755f65828da2655ce5f645c.md) | 38 | `declaration-track:1755f65828da2655ce5f645c74afd6d424a7ca2ab0d760025a814961b21d783f` |
| 2 | `theorem` | [minFacAux_to_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant4465ca5f3d020526cf1649ed57160ad96df31f5992dcac39fd1ee8253eff89d0.lean/declarations/minfacaux-to-nat--92e8ee0e90fd1beaa42d9968.md) | 43 | `result-track:92e8ee0e90fd1beaa42d9968520de7614a27fc5a3364a914f33ec9595896a36e` |
| 3 | `def` | [minFac](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant4465ca5f3d020526cf1649ed57160ad96df31f5992dcac39fd1ee8253eff89d0.lean/declarations/minfac--851dab47d895db906b96c7f9.md) | 58 | `declaration-track:851dab47d895db906b96c7f96d718588632c9dfe45524a858f6d271ff7dbdab6` |
| 4 | `theorem` | [minFac_to_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant4465ca5f3d020526cf1649ed57160ad96df31f5992dcac39fd1ee8253eff89d0.lean/declarations/minfac-to-nat--295868e58e89411ce7d21736.md) | 64 | `result-track:295868e58e89411ce7d217367ca831e9531d2ae11ece125c07903a16eadd1e15` |
| 5 | `def` | [Prime](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant4465ca5f3d020526cf1649ed57160ad96df31f5992dcac39fd1ee8253eff89d0.lean/declarations/prime--a88b99c67437a15c5a58aa96.md) | 84 | `declaration-track:a88b99c67437a15c5a58aa96577dad5947bc4032cc316525f9cb0f8b2c11b47d` |
| 6 | `instance` | [decidablePrime](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant4465ca5f3d020526cf1649ed57160ad96df31f5992dcac39fd1ee8253eff89d0.lean/declarations/decidableprime--a1b6740c13a72217dc51f0b2.md) | 87 | `declaration-track:a1b6740c13a72217dc51f0b20239865e0cbe85e21af07fab69cfa4947c54bafb` |
| 7 | `def` | [minFac](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant4465ca5f3d020526cf1649ed57160ad96df31f5992dcac39fd1ee8253eff89d0.lean/declarations/minfac--2c1331ed2ac289dfd47c726c.md) | 109 | `declaration-track:2c1331ed2ac289dfd47c726c185818dd445f0ae829fde9b32cfdb50e2c4c6af4` |
| 8 | `theorem` | [minFac_to_nat](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant4465ca5f3d020526cf1649ed57160ad96df31f5992dcac39fd1ee8253eff89d0.lean/declarations/minfac-to-nat--de04061f75705dfc338ba37c.md) | 114 | `result-track:de04061f75705dfc338ba37c00b60e62142ac9e7c454a1e14c523e3edd809089` |
| 9 | `def` | [Prime](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant4465ca5f3d020526cf1649ed57160ad96df31f5992dcac39fd1ee8253eff89d0.lean/declarations/prime--90b44cb56b7b8660a44aa239.md) | 120 | `declaration-track:90b44cb56b7b8660a44aa239edf3090df136dd87840e8e23fa288014bf9210cc` |
| 10 | `instance` | [decidablePrime](../../../../mathematics/FoundationsLogicAndTypeTheory/Prime/Variant4465ca5f3d020526cf1649ed57160ad96df31f5992dcac39fd1ee8253eff89d0.lean/declarations/decidableprime--bfc3c9476650cfb09b1d6999.md) | 123 | `declaration-track:bfc3c9476650cfb09b1d6999230a3e8c6d806017c206eb210dd6a88502ff2c1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
