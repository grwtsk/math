# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FourierMotzkin.Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a5dbce939fea364900c3d3fe5f8bf23fe88d591",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a5dbce939fea364900c3d3fe5f8bf23fe88d591`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Std.Data.HashMap` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Lean.HashMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Datatypes` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [union](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/union--51c9ee2bc7bb1201b0ac9ceb.md) | 52 | `declaration-track:51c9ee2bc7bb1201b0ac9cebe934636720b5e15f7d0ed22f6695b0e53e012266` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/instance--27183c7f0524ffe59babc6d4.md) | 55 | `declaration-track:27183c7f0524ffe59babc6d47c0c231faff453d8c74bbc8b092094869cc69122` |
| 3 | `def` | [sdiff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/sdiff--0ea04343b91ee7ac853a0345.md) | 60 | `declaration-track:0ea04343b91ee7ac853a034530cadcab2ab133773260d090a96f7a5d0186bbbf` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/instance--3d00f9476656875f73076539.md) | 62 | `declaration-track:3d00f9476656875f73076539496553ab815aeec038ecf9a6ce34ac6e29389123` |
| 5 | `inductive` | [CompSource](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/compsource--49aa58c28d1077981fa34036.md) | 81 | `declaration-track:49aa58c28d1077981fa34036ed0fd00345f9582d0d14b78ceed6dd701a9a1bfd` |
| 6 | `def` | [CompSource.flatten](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/compsource-flatten--393ac14ab82cfb18c7e0b8d4.md) | 95 | `declaration-track:393ac14ab82cfb18c7e0b8d418a776c68d2259adae0af76608de3f56ba340da8` |
| 7 | `def` | [CompSource.toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/compsource-tostring--59a7ee41fc257e01899b6bf1.md) | 102 | `declaration-track:59a7ee41fc257e01899b6bf1da204f6ac59a460dc9123f2a913f401168fb80b4` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/instance--ce8282803c5c255da2b783ff.md) | 107 | `declaration-track:ce8282803c5c255da2b783ffad4ca9d4eda4f394cafd492ca6d042d9be8c13c2` |
| 9 | `structure` | [PComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/pcomp--09e94e7fc9061244ca98d430.md) | 133 | `declaration-track:09e94e7fc9061244ca98d430ffa8b0ba8145543c8c091064f8862ed5e6df1fc7` |
| 10 | `def` | [PComp.maybeMinimal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/pcomp-maybeminimal--bd4a916c4bb8d7eec25d78aa.md) | 173 | `declaration-track:bd4a916c4bb8d7eec25d78aa40f7b285d41fa721839c20515288e20baffe5af5` |
| 11 | `def` | [PComp.cmp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/pcomp-cmp--e495a4cab38fd7e93e1c095c.md) | 180 | `declaration-track:e495a4cab38fd7e93e1c095cbe1a12f91dcd864239bc13c468e677c536a9a938` |
| 12 | `def` | [PComp.scale](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/pcomp-scale--216f16f4fd42a09163ed964a.md) | 183 | `declaration-track:216f16f4fd42a09163ed964aa61e7eafda1da74302892c16039463ef2381aeed` |
| 13 | `def` | [PComp.add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/pcomp-add--1578e4f50038db8e34bc9227.md) | 205 | `declaration-track:1578e4f50038db8e34bc9227a14422b35448ded37b972e31bc375e7fef81f24f` |
| 14 | `def` | [PComp.assump](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/pcomp-assump--274c66b6b78a4b5fd44d24cd.md) | 220 | `declaration-track:274c66b6b78a4b5fd44d24cd614e7d1102e787c6a8e4fd2856958f52879f928d` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/instance--88181110e4035c0f745b3f75.md) | 228 | `declaration-track:88181110e4035c0f745b3f75f91886cdef73ef13a39e77bb300569d802213248` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/instance--acd1a6d4004dc9dee145678f.md) | 231 | `declaration-track:acd1a6d4004dc9dee145678fb5d74711af95f140c5df42d49012d48852f87f23` |
| 17 | `abbrev` | [PCompSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/pcompset--57fd9675ad2ce0ceca68f6eb.md) | 235 | `declaration-track:57fd9675ad2ce0ceca68f6ebdf87267fdb73e6515ea5e0523e467e4d45aeea61` |
| 18 | `def` | [elimVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/elimvar--bd84cf7ed8c4ebc2ba686645.md) | 241 | `declaration-track:bd84cf7ed8c4ebc2ba686645856ce0760c3c10e8c2abaf7b15acd4b1b4cbdc4d` |
| 19 | `def` | [pelimVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/pelimvar--d146b567253134a10ba6f001.md) | 254 | `declaration-track:d146b567253134a10ba6f0018d2a08ae0c4362b1a451b33c5259c5e77bbceda2` |
| 20 | `def` | [PComp.isContr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/pcomp-iscontr--0de9f569bab4d9b7be4d137a.md) | 261 | `declaration-track:0de9f569bab4d9b7be4d137a2dbf9c4ef076df38022e850bbbb740adccd3d8a5` |
| 21 | `def` | [elimWithSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/elimwithset--59856deab1f6af5e1c95a682.md) | 267 | `declaration-track:59856deab1f6af5e1c95a6828d128d62dd4e0caeef060d1cbd02eb29114cfca9` |
| 22 | `structure` | [LinarithData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/linarithdata--5c81ed97011cedadcab3bc12.md) | 281 | `declaration-track:5c81ed97011cedadcab3bc12749dd0ba8ef0c7de04505ced5930cc68ca0affcf` |
| 23 | `abbrev` | [LinarithM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/linarithm--c08890df0588a673640fd13b.md) | 291 | `declaration-track:c08890df0588a673640fd13bde227b4077efc3e504ab8135f96df5502231ce49` |
| 24 | `def` | [getMaxVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/getmaxvar--ad49b82d61f558bda8c964b6.md) | 295 | `declaration-track:ad49b82d61f558bda8c964b6045a7d1cec997bbf8f1ab056ff82ddcdffc2b348` |
| 25 | `def` | [getPCompSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/getpcompset--0fa690a4fab1106aab33748e.md) | 299 | `declaration-track:0fa690a4fab1106aab33748eb9db0784d2b2cb9489028b410607b3d159cf673c` |
| 26 | `def` | [validate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/validate--10947ffe873e498846172b33.md) | 303 | `declaration-track:10947ffe873e498846172b33014d06583f6fa314bcfbc2171ad14743eb1ecea9` |
| 27 | `def` | [update](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/update--1d8870ec99b50c71d7c212d6.md) | 312 | `declaration-track:1d8870ec99b50c71d7c212d618c25fc15b9d7a436afd02c2c4651059811e92ad` |
| 28 | `def` | [splitSetByVarSign](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/splitsetbyvarsign--0ae116c39ff1d7d4652ad2e7.md) | 324 | `declaration-track:0ae116c39ff1d7d4652ad2e7303c525ee0516b7ed9ea04ee243e135ce60a77e7` |
| 29 | `def` | [elimVarM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/elimvarm--4d2cb2c9d586a20f89d4fa45.md) | 336 | `declaration-track:4d2cb2c9d586a20f89d4fa4558e8c6a89ece6206759e0bf89c9d7ccdfde73fa6` |
| 30 | `def` | [elimAllVarsM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/elimallvarsm--4a6c1853c538f93b51bd5c16.md) | 351 | `declaration-track:4a6c1853c538f93b51bd5c16a7e8ec6af0121256eeae5a71c5f6adb7ee9f1727` |
| 31 | `def` | [mkLinarithData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/mklinarithdata--180b115d13eadb33354e4a4b.md) | 359 | `declaration-track:180b115d13eadb33354e4a4bb3cd58e728a40d64a267aeec9b1f9b3186323860` |
| 32 | `def` | [CertificateOracle.fourierMotzkin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/declarations/certificateoracle-fouriermotzkin--0dfec110ecae8340078a2dc0.md) | 363 | `declaration-track:0dfec110ecae8340078a2dc0bcfc39542b9b18061a2419e1ddaae25a46a32cf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
