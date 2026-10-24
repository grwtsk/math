# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DivisibilityPacking.Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "582e7cb7ad24517acd7048a2a9450d7ac47ecc1f",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `582e7cb7ad24517acd7048a2a9450d7ac47ecc1f`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.QuotientRing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Totient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeSupport](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/primesupport--cf89955463273799488a4f2e.md) | 26 | `declaration-track:cf89955463273799488a4f2ee98973395021a01022759e3a1dd9082bd53596c6` |
| 2 | `theorem` | [mem_primeSupport](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/mem-primesupport--61fa9d4910ead300f3575cce.md) | 28 | `result-track:61fa9d4910ead300f3575cce7ad61e4f6a3d26b2b49536e9f18608df99b293c4` |
| 3 | `def` | [Modulus](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/modulus--886e79a3bdb91a310b7c7406.md) | 33 | `declaration-track:886e79a3bdb91a310b7c74068cb18bc92b75a1bac1a7d0b1de28a665b2da0738` |
| 4 | `theorem` | [modulus_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/modulus-pos--2548c0c84e3d4d734e79f5f1.md) | 35 | `result-track:2548c0c84e3d4d734e79f5f10df6b701d18d9e0e6274ca81f178fa5e68516708` |
| 5 | `instance` | [modulus_neZero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/modulus-nezero--34b21e4b5923338a900bb134.md) | 40 | `declaration-track:34b21e4b5923338a900bb13462e554b41097c47a109259daa0ab6bdca7f209b1` |
| 6 | `instance` | [prime_neZero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/prime-nezero--1e33ccf820a78885a0128378.md) | 42 | `declaration-track:1e33ccf820a78885a0128378b3df9b98cd9ab5a68fd76c88adc949372f88e38a` |
| 7 | `def` | [forbiddenResidues](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/forbiddenresidues--98f1c06830c5cb21c0e32e52.md) | 46 | `declaration-track:98f1c06830c5cb21c0e32e526b274727cc3bca1b1d301c33114a6edd41c18103` |
| 8 | `def` | [localForbiddenCount](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/localforbiddencount--c13e9b52c2ebf4919cd73a22.md) | 50 | `declaration-track:c13e9b52c2ebf4919cd73a2231a7a842b01208d0a76190df7ed6f15ac2b6d870` |
| 9 | `theorem` | [localForbiddenCount_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/localforbiddencount-le--3ee7a5e24dd9f44cba0fed02.md) | 52 | `result-track:3ee7a5e24dd9f44cba0fed0293301931f2515837552b8645d4c4efa7576d30bc` |
| 10 | `def` | [localReduction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/localreduction--87839b41e50072c1250c2ed4.md) | 57 | `declaration-track:87839b41e50072c1250c2ed4f70109ba70560b7bf089b3e137e2bb538419454c` |
| 11 | `def` | [RawAdmissible](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/rawadmissible--2eccf33df0bb14f3b5730955.md) | 61 | `declaration-track:2eccf33df0bb14f3b57309556e472746339ef71d3d3c433f4d917e1b581452da` |
| 12 | `def` | [RawPacking](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/rawpacking--583845fc88fca96c1cbc089e.md) | 65 | `declaration-track:583845fc88fca96c1cbc089e71e4ff714cd43b34ac4a2c1405428cc7bb67ff6b` |
| 13 | `instance` | [rawPackingFintype](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/rawpackingfintype--6b44346db0d56a9b63cb366f.md) | 67 | `declaration-track:6b44346db0d56a9b63cb366f13d44eb598830d2f4d57196820488b343c52ef95` |
| 14 | `theorem` | [primeSupport_pairwise](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/primesupport-pairwise--79e127b7fc4fcdf96a866fb3.md) | 72 | `result-track:79e127b7fc4fcdf96a866fb30a0be46bdf7f61b3a05e7d9bba44b96e2d377364` |
| 15 | `def` | [residueEquiv](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/residueequiv--aca23f6a3482ab9a345ddab9.md) | 80 | `declaration-track:aca23f6a3482ab9a345ddab93fa49b82f2a540eb9c9799b86c99b6a7a2b6326e` |
| 16 | `theorem` | [residueEquiv_apply](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/residueequiv-apply--e836ed3f8984f73ba6706add.md) | 85 | `result-track:e836ed3f8984f73ba6706addd64034159bed592dbf0ca1e459bc4d9686ab7163` |
| 17 | `def` | [rawPackingEquiv](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/rawpackingequiv--5309f7dfbc2c498ad03fd200.md) | 92 | `declaration-track:5309f7dfbc2c498ad03fd200da1017852dde7560f5451005696cdfb447132be1` |
| 18 | `theorem` | [rawPacking_card](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/rawpacking-card--7470488a5694c8a5df669500.md) | 102 | `result-track:7470488a5694c8a5df669500cfd693fc1b129cd1fcdce247d7d367b5a7e7eb78` |
| 19 | `def` | [rawDensity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/rawdensity--005569734e69842846b141ac.md) | 111 | `declaration-track:005569734e69842846b141ac06f836a166ee2a168abca11a4acd5e1bba469428` |
| 20 | `theorem` | [rawPacking_density](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/rawpacking-density--7c8e30ebabf6af4af2dc9996.md) | 114 | `result-track:7c8e30ebabf6af4af2dc9996e4aa4cdab2193cc4796680f08ccb4a88bec656e9` |
| 21 | `def` | [IntegerSurvivor](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/integersurvivor--c455af3c3009924322687c63.md) | 126 | `declaration-track:c455af3c3009924322687c63cc73202ca13aa8a54e3d4a48fc35cada57ed2aa4` |
| 22 | `theorem` | [integerSurvivor_mono](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/integersurvivor-mono--0c9e3e8e18147f5c5c257410.md) | 129 | `result-track:0c9e3e8e18147f5c5c257410eacedb465514680553fa3bc3a5d0c3dd0c09e2a0` |
| 23 | `theorem` | [integerSurvivor_iff_rawAdmissible](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/integersurvivor-iff-rawadmissible--70903cee10ece5592cedea29.md) | 137 | `result-track:70903cee10ece5592cedea2979713432afeb1819b527e037c230cd0ea8a4be0a` |
| 24 | `theorem` | [integerSurvivor_iff_product](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/integersurvivor-iff-product--d34fb5603863bf050b087b55.md) | 160 | `result-track:d34fb5603863bf050b087b555b6257019f4f2a20ec67f9b37b75ead789d81e87` |
| 25 | `theorem` | [primeSupport_mono](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/primesupport-mono--9f036873ec2fcc51fb102e98.md) | 174 | `result-track:9f036873ec2fcc51fb102e98d790595f79d1c9364378a000f100b1cb3cc1cb90` |
| 26 | `theorem` | [modulus_dvd_of_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/modulus-dvd-of-le--74dd3a08a1e261e2f77fe256.md) | 179 | `result-track:74dd3a08a1e261e2f77fe2567932de2a922aaef1902680c9a2256f13d6ccc609` |
| 27 | `def` | [reduction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/reduction--30b2030e7f9848155ab0d7ef.md) | 183 | `declaration-track:30b2030e7f9848155ab0d7ef0a0a5bb06495eb0061741e0a3352558c3087895e` |
| 28 | `theorem` | [localReduction_reduction](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/localreduction-reduction--932417e183a1a2b534b1e630.md) | 186 | `result-track:932417e183a1a2b534b1e6306eb8f816c29f3595e5c04e3ba92bdec2c13341e8` |
| 29 | `theorem` | [rawAdmissible_reduce_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/rawadmissible-reduce-iff--badadb8dfa297c6852a1d717.md) | 194 | `result-track:badadb8dfa297c6852a1d717ab3d24d3a0e750264168d7de4495206547a8f36a` |
| 30 | `theorem` | [rawAdmissible_of_finer](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/rawadmissible-of-finer--be030b8cd4df78b59185debb.md) | 201 | `result-track:be030b8cd4df78b59185debbbca1e620bcdfa5e9581a67b566d4f333ad08168b` |
| 31 | `theorem` | [singleton_forbidden_count](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/singleton-forbidden-count--e6bf3c0fd236831764b4d7f8.md) | 208 | `result-track:e6bf3c0fd236831764b4d7f8326576db9267cd8a6d179ab9d1f66969d6433134` |
| 32 | `theorem` | [singleton_density](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/singleton-density--b8e8826b398d148e48992594.md) | 211 | `result-track:b8e8826b398d148e489925941ae6a0044c6ef8b2284d1df556d8786988cb7e5b` |
| 33 | `theorem` | [totient_prime_product](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/totient-prime-product--6892eddef038bb00502c9fec.md) | 215 | `result-track:6892eddef038bb00502c9fec0472b301449334654bf8aa0b4979f337f9767e23` |
| 34 | `theorem` | [singleton_card_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/singleton-card-totient--3bea6a2032b3acfce4d542fa.md) | 229 | `result-track:3bea6a2032b3acfce4d542fa41e4022d7351a22415fc9e9ccf1b664cfafcce52` |
| 35 | `theorem` | [singleton_density_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/singleton-density-totient--9d38370ab31b507d2508dfe6.md) | 236 | `result-track:9d38370ab31b507d2508dfe6589a77defa4f43474d425971e3d15fe9e1f1697c` |
| 36 | `theorem` | [twin_forbidden_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/twin-forbidden-two--6cb4ae52b56dfcf771cfb799.md) | 241 | `result-track:6cb4ae52b56dfcf771cfb7998d661f38950d68942fe16d06d2f3500faad1b5ea` |
| 37 | `theorem` | [twin_forbidden_large](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/twin-forbidden-large--55c715ffaaae366c22da875c.md) | 245 | `result-track:55c715ffaaae366c22da875ca0739ff35f4fc1f2bf1876387e425fbfc4b2b373` |
| 38 | `theorem` | [twin_density](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/twin-density--df3592d795502d3637c1d1c8.md) | 251 | `result-track:df3592d795502d3637c1d1c869bcac3dbe5d97d8070cbf9e4f6814b65062eb89` |
| 39 | `theorem` | [composite_raw_survivor](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/composite-raw-survivor--c4cc58c0be321b82de4147c9.md) | 267 | `result-track:c4cc58c0be321b82de4147c974f31964f28a130edb56c8ef7a59004691efc67d` |
| 40 | `theorem` | [visible_prime_raw_excluded](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/visible-prime-raw-excluded--55fa3d453b91569143d1cbdf.md) | 272 | `result-track:55fa3d453b91569143d1cbdfe34334e776df96000b35703d38eb59794b58e169` |
| 41 | `theorem` | [translated_prime_raw_excluded](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/translated-prime-raw-excluded--6fc7611514db70d9b1a15ef9.md) | 277 | `result-track:6fc7611514db70d9b1a15ef94422968fd113897447bf79960234f0ceac40c2a5` |
| 42 | `theorem` | [empty_support_card](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/empty-support-card--4fb99c9a9d3ded5e7f1327d5.md) | 286 | `result-track:4fb99c9a9d3ded5e7f1327d585182ee30a3065f4cc1c6f47161b2fa4f4c9b467` |
| 43 | `theorem` | [twin_five_card](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant4df76c8621f449d9d2ea48de6e4cbb3f2f50dce5be73b79f5d407c87f0158218.lean/declarations/twin-five-card--1ecb9480078cbce40a8c44db.md) | 291 | `result-track:1ecb9480078cbce40a8c44db0e60b05b18d760c8bb88fc5c49198eb7413bba86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
