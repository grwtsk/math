# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Prime.Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b610fc566b1f2a59d697b98154c4b62e827115af",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b610fc566b1f2a59d697b98154c4b62e827115af`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factors` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_prime_mul_of_ble](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/declarations/not-prime-mul-of-ble--f119eeaf250ffa48a0adbdc2.md) | 34 | `result-track:f119eeaf250ffa48a0adbdc22e0285b5387c52e2aa7dda724bb83bf5294c4a96` |
| 2 | `def` | [deriveNotPrime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/declarations/derivenotprime--a6ac052897a590fe339f3aa7.md) | 40 | `declaration-track:a6ac052897a590fe339f3aa7bfdeb5eabf18d1a965868544dd57baf2dd116bb7` |
| 3 | `def` | [MinFacHelper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/declarations/minfachelper--5f066e72e487a2d7f6b2f747.md) | 48 | `declaration-track:5f066e72e487a2d7f6b2f7470396b4f2266a77ae1953571fbbf0edabde8e30dc` |
| 4 | `theorem` | [MinFacHelper.one_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/declarations/minfachelper-one-lt--3d0fb0f20f26042089e9c67c.md) | 51 | `result-track:3d0fb0f20f26042089e9c67cafa719ae3eb20596772ee5d5fb4608fc84388fed` |
| 5 | `theorem` | [minFacHelper_0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/declarations/minfachelper-0--9ef82ac58a8efe4c939adff3.md) | 59 | `result-track:9ef82ac58a8efe4c939adff30fef75c036bbee5f816d869d36506e25700b84ac` |
| 6 | `theorem` | [minFacHelper_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/declarations/minfachelper-1--5750fbc37a474bcb08d5b3d0.md) | 68 | `result-track:5750fbc37a474bcb08d5b3d0b3aa1a294c1e35e233c7cf820837025753c20a23` |
| 7 | `theorem` | [minFacHelper_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/declarations/minfachelper-2--aee559c5e5c18f7db1b6c2db.md) | 86 | `result-track:aee559c5e5c18f7db1b6c2db9e8ebd6dfc3aee5713496c44393b2fd1d5bae351` |
| 8 | `theorem` | [minFacHelper_3](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/declarations/minfachelper-3--60d6c3069dc92e8a3c050b3f.md) | 92 | `result-track:60d6c3069dc92e8a3c050b3f3a537b162a8811d4399ac8bf04947fdb56ca5c41` |
| 9 | `theorem` | [isNat_minFac_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/declarations/isnat-minfac-1--2657d975284b0c5f0cf68111.md) | 99 | `result-track:2657d975284b0c5f0cf681110d1f2edb98b3a5942f976184e31baa4d364d50bb` |
| 10 | `theorem` | [isNat_minFac_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/declarations/isnat-minfac-2--09264d13e4420d1467e0cbd7.md) | 102 | `result-track:09264d13e4420d1467e0cbd71bc78282c180413fc80b23cf7d993bf4df7f3230` |
| 11 | `theorem` | [isNat_minFac_3](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/declarations/isnat-minfac-3--6ce68876faac8e615e3a05c6.md) | 105 | `result-track:6ce68876faac8e615e3a05c6d7bcee9bd280400a5273cebb967888aeb04659ee` |
| 12 | `theorem` | [isNat_minFac_4](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/declarations/isnat-minfac-4--3cb67d0e874a0e92b81be0f4.md) | 111 | `result-track:3cb67d0e874a0e92b81be0f413cbbe5926be657d88708675917861fd06eabbf0` |
| 13 | `def` | [evalMinFac](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/declarations/evalminfac--b1249e972ec32eec97762eac.md) | 124 | `declaration-track:b1249e972ec32eec97762eacce743588bfb3ab16f890ac12014d6402ad54c90e` |
| 14 | `theorem` | [isNat_prime_0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/declarations/isnat-prime-0--e0f7ca3da105aec41fe32acd.md) | 169 | `result-track:e0f7ca3da105aec41fe32acd6c5e702a1d1c747dafbd7f26aaab0fb08bed3469` |
| 15 | `theorem` | [isNat_prime_1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/declarations/isnat-prime-1--5042432ad6a559b988105858.md) | 172 | `result-track:5042432ad6a559b9881058584f3f1a6a18e7ded41d6b7ea371d4e1b5dd744961` |
| 16 | `theorem` | [isNat_prime_2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/declarations/isnat-prime-2--a039ef05b91f5302076b8a28.md) | 175 | `result-track:a039ef05b91f5302076b8a287c27efe69d90d3dad39be525913a317eb81fc029` |
| 17 | `theorem` | [isNat_not_prime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/declarations/isnat-not-prime--8196e152fe927ba539078362.md) | 179 | `result-track:8196e152fe927ba539078362ed53a937bf6bda68e10d1683e79c70504bf19f36` |
| 18 | `def` | [evalNatPrime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prime/Varianta8a6235e5bbeb31e1c3cc7b3920d62cc4a88fa270a1ed7dae317adde91b12b96.lean/declarations/evalnatprime--5b51e61c62075b489c485d2a.md) | 182 | `declaration-track:5b51e61c62075b489c485d2a1b2745f5d994280fa402589ba3409fc5cc86638f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
