# Verification target: GRWTSK.Algebra.Basic.Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8f1fbfda5d12fcbff026f1890b98f0b8031da87",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8f1fbfda5d12fcbff026f1890b98f0b8031da87`.

Source path: `GRWTSK/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Quotient.Nilpotent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Smooth.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Unramified.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FormallyEtale](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/declarations/formallyetale--2c366dc5b74f67336b599d09.md) | 51 | `declaration-track:2c366dc5b74f67336b599d098228c377482d751a55acc59fafb934b130d3ac70` |
| 2 | `theorem` | [iff_unramified_and_smooth](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/declarations/iff-unramified-and-smooth--80d215a8b667e8871cf98d74.md) | 66 | `result-track:80d215a8b667e8871cf98d7447b269ef6aa4626b72f7a05bf236fddb9babc632` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/declarations/instance--52c34a179436723a1a02829c.md) | 71 | `declaration-track:52c34a179436723a1a02829cfa8ae43e177f07c4a17ef75f8e20ee19a1c55727` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/declarations/instance--205f530ff1f82e2d7fe50d1e.md) | 75 | `declaration-track:205f530ff1f82e2d7fe50d1e0ca6aebd4dde408cd35d2aad248dfa5afea8ae7b` |
| 5 | `theorem` | [of_unramified_and_smooth](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/declarations/of-unramified-and-smooth--81676d0f0cfcc0110a432657.md) | 78 | `result-track:81676d0f0cfcc0110a4326577e63e46df98b7d669ed7b8934d7df19df9201b87` |
| 6 | `theorem` | [of_equiv](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/declarations/of-equiv--812b53dfbead8df512088b7f.md) | 89 | `result-track:812b53dfbead8df512088b7f28075906a46185965992408a4c819a49a1428221` |
| 7 | `theorem` | [iff_of_equiv](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/declarations/iff-of-equiv--6abb10d76ceafbb084f97335.md) | 93 | `result-track:6abb10d76ceafbb084f97335c3f2becc1444c66c97a494d51b1e07beb439d774` |
| 8 | `theorem` | [comp](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/declarations/comp--db6400e7f65ebfe9af4eae8b.md) | 104 | `result-track:db6400e7f65ebfe9af4eae8b608efbecbc944da565e52fbe71a6bd3474fd1489` |
| 9 | `instance` | [base_change](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/declarations/base-change--19b1c27d0a7c7be6f9ce7791.md) | 118 | `declaration-track:19b1c27d0a7c7be6f9ce7791c33c294bbbb8cd9aa96821b297ff3329f911a3c5` |
| 10 | `theorem` | [of_isLocalization](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/declarations/of-islocalization--474993ad13828b3752fab7fe.md) | 155 | `result-track:474993ad13828b3752fab7feb5f5708e678dc8863aa4b7e01c1468858768ecba` |
| 11 | `theorem` | [localization_base](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/declarations/localization-base--c67f368c8d254bc8ec27b4da.md) | 159 | `result-track:c67f368c8d254bc8ec27b4da07e1636e11cb9bd3b65d7b3dba5bf6c3f8bcc027` |
| 12 | `theorem` | [localization_map](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/declarations/localization-map--caf92fb323a02ad97b37b4d6.md) | 164 | `result-track:caf92fb323a02ad97b37b4d698baba74abad1069e2bcb7b78f59a4b8a6059969` |
| 13 | `class` | [Etale](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/declarations/etale--72e282f9f8471966d8549060.md) | 181 | `declaration-track:72e282f9f8471966d854906049bb67ac4984225bdd0126c9eccab0032d704c2a` |
| 14 | `theorem` | [of_equiv](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/declarations/of-equiv--73235375270b936955197be1.md) | 195 | `result-track:73235375270b936955197be11cc8652e376dab351359b08fa9c4aed853193b0e` |
| 15 | `theorem` | [comp](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/declarations/comp--c25c94ba852c10f81547e48e.md) | 204 | `result-track:c25c94ba852c10f81547e48e58542d22857fb8ceb593beb9e71d384a29bacbb6` |
| 16 | `instance` | [baseChange](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/declarations/basechange--35ee998de04217c7e61faa64.md) | 209 | `declaration-track:35ee998de04217c7e61faa644f2ee3e5bdd8cd374f0f31e01f64704a9a1f276a` |
| 17 | `theorem` | [of_isLocalization_Away](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/declarations/of-islocalization-away--b45c01ab2c643c2a0749a702.md) | 214 | `result-track:b45c01ab2c643c2a0749a7026c142978674a3b18e21fd9f2ae24863c3feff63f` |
| 18 | `def` | [FormallyEtale](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/declarations/formallyetale--9945807448bf4de28e15b2be.md) | 231 | `declaration-track:9945807448bf4de28e15b2be321ed3da923a47b70579407552249ec1de98a01e` |
| 19 | `lemma` | [formallyEtale_algebraMap](../../../../mathematics/Algebra/Basic/Variant7f3c0eafc0c95d95ad6c4dc754a95260e1d3c76116915ede87732dc766cb4f61.lean/declarations/formallyetale-algebramap--bd9762e708bba561e5753a9d.md) | 235 | `result-track:bd9762e708bba561e5753a9d08fe80d1263f14acbdbd013e5afb1fadd9d1f532` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
