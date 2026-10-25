# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TrigReduced.Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4267de62c5262789afc965b531752f72f540144",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4267de62c5262789afc965b531752f72f540144`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.TaylorModel.Trig` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalRat.Taylor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piRatLo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/piratlo--723872fd9a7d9305a5207a2e.md) | 45 | `declaration-track:723872fd9a7d9305a5207a2e3f2564af7915da75074261ed47b574510ad97dba` |
| 2 | `def` | [piRatHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/pirathi--85c0e28ddccf0fb981516671.md) | 48 | `declaration-track:85c0e28ddccf0fb9815166718866924b79fd54cd14417dc13bfe73c8f3d198a5` |
| 3 | `def` | [twoPiRatLo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/twopiratlo--332d083bb88b7b31b62cc8fb.md) | 51 | `declaration-track:332d083bb88b7b31b62cc8fbb83f6825245941ce58ec7049b37a42ee524cf81c` |
| 4 | `def` | [twoPiRatHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/twopirathi--aa1857ba5bb4ec88ec2be5f2.md) | 54 | `declaration-track:aa1857ba5bb4ec88ec2be5f2c7ff294664bcf09fc089f532a72ee243aaf2fdce` |
| 5 | `theorem` | [piRatLo_lt_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/piratlo-lt-pi--01dda4a528e26056dc851e7b.md) | 57 | `result-track:01dda4a528e26056dc851e7b4137f0b080ef8221d1ada44ed0252d41d25f2fcd` |
| 6 | `theorem` | [pi_lt_piRatHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/pi-lt-pirathi--b6ee47c442f60c90c7c28dcb.md) | 63 | `result-track:b6ee47c442f60c90c7c28dcb70ba79dc35965f3710ee53220b10ab7a3ba54da6` |
| 7 | `theorem` | [twoPiRatLo_lt_two_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/twopiratlo-lt-two-pi--2ca1595750ed2e9683fca0ed.md) | 69 | `result-track:2ca1595750ed2e9683fca0edef7e5ada8eb158a997003f83acd6bb41052ea461` |
| 8 | `theorem` | [two_pi_lt_twoPiRatHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/two-pi-lt-twopirathi--cae3346084c4392e6953c665.md) | 76 | `result-track:cae3346084c4392e6953c66532019a6b60a8c88da223c21fc7be772d0e4741e7` |
| 9 | `theorem` | [twoPiRatLo_le_twoPiRatHi](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/twopiratlo-le-twopirathi--286500737e3d7dda125ef938.md) | 83 | `result-track:286500737e3d7dda125ef9386393c4a76c1a3a55567d48fdbf8798fa7759b2a4` |
| 10 | `def` | [computeShiftK](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/computeshiftk--0d8569e9446ea87ce98d0965.md) | 90 | `declaration-track:0d8569e9446ea87ce98d0965cfda54e7be7c7ccc9590e96d47e54069e1391975` |
| 11 | `def` | [shiftInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/shiftinterval--e13ddd32daef6b562a21ecfc.md) | 99 | `declaration-track:e13ddd32daef6b562a21ecfc3fd7c73e571a848d6fbc8e41653deebbd8751ef9` |
| 12 | `def` | [reduceToMainPeriod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/reducetomainperiod--91312a153ecaec4aaa000a9c.md) | 117 | `declaration-track:91312a153ecaec4aaa000a9ce6c172db457ee2b775412cbc5d4917bd0283a376` |
| 13 | `theorem` | [mem_shiftInterval_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/mem-shiftinterval-of-mem--76d0124e026850c4a15f5709.md) | 124 | `result-track:76d0124e026850c4a15f570908b60640759dd0753bc5ac64596d919e87003e5f` |
| 14 | `theorem` | [mem_reduceToMainPeriod_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/mem-reducetomainperiod-of-mem--16f2fd6cf584b024dde9db84.md) | 169 | `result-track:16f2fd6cf584b024dde9db84538b33b212ec487e8a98e469c501fef2feaaabb6` |
| 15 | `def` | [sinIntervalReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/sinintervalreduced--59faa61e06bb45ebf11c3739.md) | 177 | `declaration-track:59faa61e06bb45ebf11c37392ccab114fa4aac2bc171725445003f60f1d14614` |
| 16 | `def` | [cosIntervalReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/cosintervalreduced--89fc2b0e0497a8a42caa75b6.md) | 185 | `declaration-track:89fc2b0e0497a8a42caa75b6ed733c20d4f3fe39ed62888495af76446f4cd52e` |
| 17 | `theorem` | [mem_sinIntervalReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/mem-sinintervalreduced--4938874e38e8d89a0f47fdbb.md) | 195 | `result-track:4938874e38e8d89a0f47fdbbf40b6304da8f012642d9359dd2a0582afa968c0b` |
| 18 | `theorem` | [mem_cosIntervalReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/mem-cosintervalreduced--a4b0e5a0ae45974a150e4582.md) | 218 | `result-track:a4b0e5a0ae45974a150e4582580c8998d4f714834b372a19516473e109fc6fb4` |
| 19 | `def` | [sinComputableReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/sincomputablereduced--6c697bdfaadd35a5cf258e57.md) | 249 | `declaration-track:6c697bdfaadd35a5cf258e57dee6c4d44a4dc676426e0013910ab8dc620b1663` |
| 20 | `def` | [cosComputableReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/coscomputablereduced--c7062537de54dc7fa3c45c49.md) | 258 | `declaration-track:c7062537de54dc7fa3c45c495349e4f9837e6949714afae7abfb07e2394cb6de` |
| 21 | `theorem` | [mem_sinComputableReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/mem-sincomputablereduced--a2d518174502697ed816f7dc.md) | 266 | `result-track:a2d518174502697ed816f7dc2c276e85ff46705b5e4a83cf43adbd770e169f89` |
| 22 | `theorem` | [mem_cosComputableReduced](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TrigReduced/Variant7ea3131c711cc0b338a997fa76b85da5e5758f6c6be5d6c36d493e55aa96a9db.lean/declarations/mem-coscomputablereduced--57d4713a5ec16f816c01f5f0.md) | 288 | `result-track:57d4713a5ec16f816c01f5f094be47003066dbbdee5760e8ae1560037d151dee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
