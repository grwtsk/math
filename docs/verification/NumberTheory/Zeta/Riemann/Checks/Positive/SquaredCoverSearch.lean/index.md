# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.SquaredCoverSearch

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ef3a6a4b01be54aa6c373a79f2029b814e6418a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ef3a6a4b01be54aa6c373a79f2029b814e6418a`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.RationalCover`](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/RationalCover.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSquaredRectangle`](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredRectangle.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/example--94def6f73f4062ec0336c2b2.md) | 12 | `declaration-track:94def6f73f4062ec0336c2b24365235f2153e08e3eed0a36f3bd9db970128027` |
| 2 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/example--e741d83c25e101ac3c5d017b.md) | 15 | `declaration-track:e741d83c25e101ac3c5d017b0d1388f8478609f67a069ad5ff3a803e8abb9662` |
| 3 | `def` | [unitBox](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/unitbox--73a97af6edf38f90c3d005cd.md) | 20 | `declaration-track:73a97af6edf38f90c3d005cd1e63da277e34a05fabec793a946161f686fc1633` |
| 4 | `def` | [largeDisk](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/largedisk--3fe00226f0d8adb7fd2886bf.md) | 21 | `declaration-track:3fe00226f0d8adb7fd2886bfef3ef8abaec74f85657025987cec36b9d88af672` |
| 5 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/example--afe35ee99c845010b7cab24f.md) | 23 | `declaration-track:afe35ee99c845010b7cab24f49879e29d54aed4e22a6bc3db7aa0c07a3165e64` |
| 6 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/example--7adf51e045c252abfb6d8fe6.md) | 24 | `declaration-track:7adf51e045c252abfb6d8fe65b01be9333f9af91a8a8120e009e7128c8db4c36` |
| 7 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/example--edf1acd2c54d0e5273b5e942.md) | 27 | `declaration-track:edf1acd2c54d0e5273b5e9422e5e8885fc2a4c24547cdbd67c0ab4f0b8307998` |
| 8 | `def` | [quarterDisks](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/quarterdisks--06b387aa354e112c2a4753fd.md) | 31 | `declaration-track:06b387aa354e112c2a4753fda55db649f162454083871e2fee0802b39360e448` |
| 9 | `lemma` | [insufficient_depth](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/insufficient-depth--f7fdc1ee2da266b98f303f85.md) | 36 | `result-track:f7fdc1ee2da266b98f303f8598d67fe6fdeac692e89743f1b7b01f19950f6a8b` |
| 10 | `lemma` | [sufficient_depth](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/sufficient-depth--f2f7a428f64de24e62a14641.md) | 39 | `result-track:f2f7a428f64de24e62a146411f26a821a119c07456df553fc6ad3cddb6f79558` |
| 11 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/example--faec71f39d18face2fe41ca3.md) | 43 | `declaration-track:faec71f39d18face2fe41ca307716b7ad6838c7bbe273d2f0712ca3e90ee266e` |
| 12 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/example--1ae2534e9c4b6e6679585993.md) | 47 | `declaration-track:1ae2534e9c4b6e6679585993c23de8e7d9f0881ddbe45cfba7d405a0b24bc0db` |
| 13 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/example--daaba571f90323e33ee343d1.md) | 49 | `declaration-track:daaba571f90323e33ee343d1111c71a91459b096a9e139f27c6806013d9f8dcf` |
| 14 | `def` | [cornerDisks](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/cornerdisks--c74942d2edf892217c375206.md) | 53 | `declaration-track:c74942d2edf892217c3752065adab8dc24aafd1ebdb5cddb229f50bc3ba98253` |
| 15 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/example--5306d66117c52bc06eb3f648.md) | 58 | `declaration-track:5306d66117c52bc06eb3f6484066d242ace36011ff1d2756da1c5fe9963cda56` |
| 16 | `def` | [constantPatch](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/constantpatch--433785a3366485e822ad4d0b.md) | 64 | `declaration-track:433785a3366485e822ad4d0bdc921029cff16c42d1171c07eb9ff60a711242f8` |
| 17 | `def` | [constantCover](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/constantcover--e60b353545b8ce4d44cbc125.md) | 74 | `declaration-track:e60b353545b8ce4d44cbc1256d9b211fa78c8ade578cd4fc57aca69190879e37` |
| 18 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/example--cc2455b6e5fed228a3308e4b.md) | 78 | `declaration-track:cc2455b6e5fed228a3308e4b5c7f55daebf66003b77ae418035a28bfa9e7716c` |
| 19 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/example--b617f611d017347de3a7bdfe.md) | 83 | `declaration-track:b617f611d017347de3a7bdfe54359514d275460d9b5550eaa11e2cd202a5ffef` |
| 20 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/example--33a83753fb2f7e70c8ac71ad.md) | 85 | `declaration-track:33a83753fb2f7e70c8ac71ad33c13e052674486ab84bbc9016b1e211033b3941` |
| 21 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/example--b07bf8b65ea3feb1898e326c.md) | 87 | `declaration-track:b07bf8b65ea3feb1898e326c04b4a6065131786297bcf61ec8140a37fa0a0f8c` |
| 22 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/example--72ea5600cc502e580a35c870.md) | 89 | `declaration-track:72ea5600cc502e580a35c8703a67d1f4515dc22fd058201c9bc4630852510218` |
| 23 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/example--abd39a3a260f4316f333ff4c.md) | 91 | `declaration-track:abd39a3a260f4316f333ff4cb7081ba6ca7822eae896e7ea043e31146e889c10` |
| 24 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/example--010311e83702d2678a6621f9.md) | 93 | `declaration-track:010311e83702d2678a6621f9099b480b14a59d9b4e54a3421d59ec429db58b6a` |
| 25 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/SquaredCoverSearch.lean/declarations/example--d975317f7cce24f68c50f7e6.md) | 97 | `declaration-track:d975317f7cce24f68c50f7e62f95f19f42031bbe61eaa3ae493651bac5a44ab5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
