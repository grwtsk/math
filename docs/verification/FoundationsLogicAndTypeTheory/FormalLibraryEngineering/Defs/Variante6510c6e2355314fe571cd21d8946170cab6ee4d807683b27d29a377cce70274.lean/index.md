# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Defs.Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b121af878f1a8b1953f501a7f594c0485afa62e9",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b121af878f1a8b1953f501a7f594c0485afa62e9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.AdaptationNote` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Attr.Register` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lemma` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Eqns` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 10; external provider; requires a separately pinned dependency.
- `Batteries.Logic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [flip_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/flip-def--e6cec987732f8869c4c8bc22.md) | 23 | `result-track:e6cec987732f8869c4c8bc22228c03448a127e260c3f4cac92641b2ff741636d` |
| 2 | `def` | [dcomp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/dcomp--4057e67bffe18e05d08edb61.md) | 35 | `declaration-track:4057e67bffe18e05d08edb610f64eba1df31ad5e9487a204631ac5aa8e1cf96e` |
| 3 | `abbrev` | [onFun](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/onfun--05facde4522bf05b20096385.md) | 43 | `declaration-track:05facde4522bf05b20096385fa523aed7bb71d610ef9a834dc566465a342fd1c` |
| 4 | `abbrev` | [swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/swap--d4c6a5ab126d2124dc834184.md) | 50 | `declaration-track:d4c6a5ab126d2124dc8341847926e861e6806c77f3fa5cc215bc39df83513e9a` |
| 5 | `theorem` | [swap_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/swap-def--772010ebd2fa3a0fba0868c9.md) | 52 | `result-track:772010ebd2fa3a0fba0868c94b981ae076f56a7ed54bf8a07adb0b137da32b54` |
| 6 | `theorem` | [id_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/id-comp--149c4a3b0d08bc04bd891c79.md) | 55 | `result-track:149c4a3b0d08bc04bd891c79e1bea4a2357c95d1da97ad8aeb5ff5df0c1e0e11` |
| 7 | `theorem` | [comp_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/comp-id--8146b36b9095c0a58b82c3c7.md) | 58 | `result-track:8146b36b9095c0a58b82c3c72ed5c401a89a95e0beaa25959f9f33011c8733a0` |
| 8 | `theorem` | [comp_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/comp-assoc--89ef63fb00b41a3d0d5e63f0.md) | 60 | `result-track:89ef63fb00b41a3d0d5e63f0e4d0d3d24c02b5fcc10a6548664517ee4d91cffd` |
| 9 | `def` | [Injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/injective--40824b7c8d2827efb68460c7.md) | 64 | `declaration-track:40824b7c8d2827efb68460c7570e6e99db73c65730d3e7c441dba95d213ae015` |
| 10 | `theorem` | [Injective.comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/injective-comp--4a615df71385ca8d7ffb8c33.md) | 67 | `result-track:4a615df71385ca8d7ffb8c338117f215c3afd6cd75c9879554544ef03e312606` |
| 11 | `def` | [Surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/surjective--eefbb46f8c63be8cedd3ed1c.md) | 72 | `declaration-track:eefbb46f8c63be8cedd3ed1c8183f46c47fbe6f274644fb0f5a8f0c4cea5b14c` |
| 12 | `theorem` | [Surjective.comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/surjective-comp--4e01624a0d14af5a3bf06d5b.md) | 75 | `result-track:4e01624a0d14af5a3bf06d5b6cb1eea0798f8f433f6d53032d0f584944fd6945` |
| 13 | `def` | [Bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/bijective--8ea65c4e1cf7c713c09f9aaf.md) | 82 | `declaration-track:8ea65c4e1cf7c713c09f9aaf974986ca19b8234ada3052e99fde7cf4b8d06875` |
| 14 | `theorem` | [Bijective.comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/bijective-comp--65f160036895da8e9e9150c3.md) | 85 | `result-track:65f160036895da8e9e9150c3f698df0364109de0262baaa40373f20e4a7ec515` |
| 15 | `def` | [LeftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/leftinverse--baeb3d3d9c82c2b8fc2fbda5.md) | 89 | `declaration-track:baeb3d3d9c82c2b8fc2fbda5607bef93574df513a4fdb37a9187f8f4bb25eb58` |
| 16 | `def` | [HasLeftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/hasleftinverse--3b799b504a780f1d07e47e03.md) | 93 | `declaration-track:3b799b504a780f1d07e47e038ca2d920c11f969ca5137bf3c8fc038b34b25912` |
| 17 | `def` | [RightInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/rightinverse--e85572ddf30184c294f038e6.md) | 97 | `declaration-track:e85572ddf30184c294f038e648487d18e7d4c99198516c399683da6663eca439` |
| 18 | `def` | [HasRightInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/hasrightinverse--6b6749eef6fca66cebfb1bdf.md) | 101 | `declaration-track:6b6749eef6fca66cebfb1bdff50aba17ff210ee887719f3dfb579cb15aeba051` |
| 19 | `theorem` | [LeftInverse.injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/leftinverse-injective--3957230bd5682ed557048fad.md) | 104 | `result-track:3957230bd5682ed557048fad43e71bf5dd8bbf3d0998e517db99daeb3f25602b` |
| 20 | `theorem` | [HasLeftInverse.injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/hasleftinverse-injective--51f27261c4a5bec629246357.md) | 111 | `result-track:51f27261c4a5bec629246357ed881a8548c2edd93fa7ab76c6e4e658fa750e62` |
| 21 | `theorem` | [rightInverse_of_injective_of_leftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/rightinverse-of-injective-of-leftinverse--ea9067335ddcdd6c8e0fc977.md) | 114 | `result-track:ea9067335ddcdd6c8e0fc977d79a149c5fdbf5678a8c754096805bb0dda46078` |
| 22 | `theorem` | [RightInverse.surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/rightinverse-surjective--328558ae4feca74938cd275e.md) | 119 | `result-track:328558ae4feca74938cd275e6aa8d84adc0fd34e5b210e88857b4393ecc11742` |
| 23 | `theorem` | [HasRightInverse.surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/hasrightinverse-surjective--07ee590952bb0ab7e83b8610.md) | 122 | `result-track:07ee590952bb0ab7e83b8610db6ee5f46344145583a42d817f0c2bc05056c735` |
| 24 | `theorem` | [leftInverse_of_surjective_of_rightInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/leftinverse-of-surjective-of-rightinverse--53febcb8ae11d68db5a533b9.md) | 125 | `result-track:53febcb8ae11d68db5a533b93567c4be5c1a419a9983d31e8971f42cfc6f3f57` |
| 25 | `theorem` | [injective_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/injective-id--28d342d2b6474c523dbdd571.md) | 133 | `result-track:28d342d2b6474c523dbdd5714c1f37a7419da36b3ddf0afaac1cdd7a4646cb11` |
| 26 | `theorem` | [surjective_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/surjective-id--774160c0ad93e7d0d7e3d08d.md) | 135 | `result-track:774160c0ad93e7d0d7e3d08d745b32fcbde45e276e76a15bbb4185d381b4b51d` |
| 27 | `theorem` | [bijective_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/bijective-id--1c7911c7fafd7e4f21bd550f.md) | 137 | `result-track:1c7911c7fafd7e4f21bd550ffa92ab4c6ccc603ac679d80403217dd20a11ca24` |
| 28 | `theorem` | [Injective.eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/injective-eq-iff--cfdfeb6e786f1be5b8ffddb6.md) | 142 | `result-track:cfdfeb6e786f1be5b8ffddb6355c08f7840fa101365ef6e5103b434bbfd2bbb5` |
| 29 | `theorem` | [Injective.beq_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/injective-beq-eq--afa85599fa12f766056150f7.md) | 145 | `result-track:afa85599fa12f766056150f7cf9b94a57545371ba998c3c2447ca3fcb08f4f24` |
| 30 | `theorem` | [Injective.eq_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/injective-eq-iff--ab926a9f6ea9a779622436b1.md) | 149 | `result-track:ab926a9f6ea9a779622436b10c31ef0567c264ca9b33ddaf9447279a6cca391b` |
| 31 | `theorem` | [Injective.ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/injective-ne--ef58af98adf52ae5f333eb15.md) | 152 | `result-track:ef58af98adf52ae5f333eb15ffb6d099515497c772837723a13392ce1f7899b2` |
| 32 | `theorem` | [Injective.ne_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/injective-ne-iff--9218bdceedf3f82ade1ed3b5.md) | 155 | `result-track:9218bdceedf3f82ade1ed3b574dd4cff95c5bc4d0e309d2d25bbbc9e68a73a7b` |
| 33 | `theorem` | [Injective.ne_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/injective-ne-iff--cbfd249322d5ad0fafaed14e.md) | 158 | `result-track:cbfd249322d5ad0fafaed14e64c5753e82f02086b21230be08b644fbdb546f50` |
| 34 | `theorem` | [LeftInverse.id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/leftinverse-id--cd788f3d05d65a24c98ddd89.md) | 167 | `result-track:cd788f3d05d65a24c98ddd892b6826f4a36f03b6286458ea446025efbbb14d14` |
| 35 | `theorem` | [RightInverse.id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/rightinverse-id--7d8403713e191692d0b119e3.md) | 170 | `result-track:7d8403713e191692d0b119e3346469436deb8312e18bfaa303f9517d9f4317fb` |
| 36 | `def` | [IsFixedPt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/isfixedpt--9487b7c429794883afc071f8.md) | 174 | `declaration-track:9487b7c429794883afc071f8ae4f07ddfa4bf9dd75b06a3bcc823d0119da5155` |
| 37 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/map--06b0f8e6e5637a4cbb666893.md) | 184 | `declaration-track:06b0f8e6e5637a4cbb6668937fd0c6ad98ba0c7728728b79fa96e9ab942c2657` |
| 38 | `lemma` | [map_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean/declarations/map-apply--a2714e5a6c290aa98664914f.md) | 187 | `result-track:a2714e5a6c290aa98664914fb802281d466facf8aee1ecf5d68f5488168199f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
