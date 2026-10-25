# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Adjugate.Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9832c2b84c03368962ff960af5dab5c953137b2",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9832c2b84c03368962ff960af5dab5c953137b2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Regular.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.MvPolynomial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Polynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cramerMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/cramermap--b34ed13afb79799b6caa94aa.md) | 74 | `declaration-track:b34ed13afb79799b6caa94aa51e36b803a1ffd1e5dd5a602dbd027523ae5c528` |
| 2 | `theorem` | [cramerMap_is_linear](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/cramermap-is-linear--8156448d3bdd28f0a5fe0dd8.md) | 78 | `result-track:8156448d3bdd28f0a5fe0dd8364d48d1b962b70887e1462d17b0bf1e8e039f5c` |
| 3 | `theorem` | [cramer_is_linear](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/cramer-is-linear--3d54cd189665a8b2adf63313.md) | 83 | `result-track:3d54cd189665a8b2adf633137daf7ca6fc5b8392b187f87d67150291af7d3ac2` |
| 4 | `def` | [cramer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/cramer--01a27f448d096a8850d7d3bc.md) | 95 | `declaration-track:01a27f448d096a8850d7d3bcc2a764c951bb8b6539d41369d26294d0af06ad11` |
| 5 | `theorem` | [cramer_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/cramer-apply--139c401ad286ee20867e0caf.md) | 99 | `result-track:139c401ad286ee20867e0caf2c7b6676c69f1a157ffa8b69ddc8d84dbb529bab` |
| 6 | `theorem` | [cramer_transpose_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/cramer-transpose-apply--4d20ee6b2277e65194865d31.md) | 103 | `result-track:4d20ee6b2277e65194865d315372fa8b3b588abcc5c3c7d6f25f0dda305c9f8a` |
| 7 | `theorem` | [cramer_transpose_row_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/cramer-transpose-row-self--37ef05c640e8ddb6c299dfa5.md) | 107 | `result-track:37ef05c640e8ddb6c299dfa524c3c185bdfec74f7c41e6768a7cc2136fef0c6c` |
| 8 | `theorem` | [cramer_row_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/cramer-row-self--adb14eeffbeac46e242a8fdd.md) | 120 | `result-track:adb14eeffbeac46e242a8fddfb08a4111c16986b067a3afd6afed48568e13bab` |
| 9 | `theorem` | [cramer_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/cramer-one--ff90277ba57c2eca63fd8654.md) | 127 | `result-track:ff90277ba57c2eca63fd8654a5f5ff16430f8d197f57f562637258734c2c0ef5` |
| 10 | `theorem` | [cramer_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/cramer-smul--fe1284c67bb4c0f58a3bd790.md) | 136 | `result-track:fe1284c67bb4c0f58a3bd7909790a2b1f1b4abcdc92be2eb9ade65d599a26f99` |
| 11 | `theorem` | [cramer_subsingleton_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/cramer-subsingleton-apply--066c94a5c724a27f36acee97.md) | 142 | `result-track:066c94a5c724a27f36acee977b46bacbe39179e98508b05020ad9c7d8be7ee40` |
| 12 | `theorem` | [cramer_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/cramer-zero--247bbb291e3e9f30f9bafdbf.md) | 146 | `result-track:247bbb291e3e9f30f9bafdbf5cd4b0e593263d94bdc2ed3ebdca6319047256bb` |
| 13 | `theorem` | [sum_cramer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/sum-cramer--7c9a6956ac49d14edf776678.md) | 155 | `result-track:7c9a6956ac49d14edf776678eac2456a9dd99d10d03ac6727810f1fadd40dd64` |
| 14 | `theorem` | [sum_cramer_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/sum-cramer-apply--b086943a15163ae735c8c4bc.md) | 161 | `result-track:b086943a15163ae735c8c4bc35604b33ff3cd98b2af01d1286a22daa0d609207` |
| 15 | `theorem` | [cramer_submatrix_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/cramer-submatrix-equiv--545732fc6dc4d1b9e6f108c3.md) | 174 | `result-track:545732fc6dc4d1b9e6f108c39da0d75cabd03d828a0f7ee950e0baa9b975fde2` |
| 16 | `theorem` | [cramer_reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/cramer-reindex--aab9c0796e71696a25f8caef.md) | 181 | `result-track:aab9c0796e71696a25f8caef20b75019cd9537f4639198f95393138884fea371` |
| 17 | `def` | [adjugate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate--db665b5e054bff0f87f28b9d.md) | 206 | `declaration-track:db665b5e054bff0f87f28b9ddab1aa38e7c5cedc3020a4b7b54ac5c629b05b68` |
| 18 | `theorem` | [adjugate_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-def--7289eac41b1dc864639e71c6.md) | 210 | `result-track:7289eac41b1dc864639e71c6cd5ce21f4259568f9b8277f3135255663f2f8fdb` |
| 19 | `theorem` | [adjugate_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-apply--c1919e568c2d7951061dd318.md) | 214 | `result-track:c1919e568c2d7951061dd318dc12cc149befd8bc1d8ef2b32127095ff7bf1971` |
| 20 | `theorem` | [adjugate_transpose](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-transpose--dff70496cf8497bf2811d6ce.md) | 219 | `result-track:dff70496cf8497bf2811d6ce856534618d5b2bc64626e89ec9d55964c0e820f5` |
| 21 | `theorem` | [adjugate_submatrix_equiv_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-submatrix-equiv-self--4f535f108901913c339cddc7.md) | 250 | `result-track:4f535f108901913c339cddc76bb917dff56e1adf39e71ec5a90ce2aaaf053051` |
| 22 | `theorem` | [adjugate_reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-reindex--6e4b40ccbb9d3699089e9f87.md) | 261 | `result-track:6e4b40ccbb9d3699089e9f87f695e0882e44bebf9a0ae0ccd5cb7d18e5562d46` |
| 23 | `theorem` | [cramer_eq_adjugate_mulVec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/cramer-eq-adjugate-mulvec--8a23733393d19f78a623ac10.md) | 268 | `result-track:8a23733393d19f78a623ac10a15f1ebd41cced3e58b8c7ca769c67194648b745` |
| 24 | `theorem` | [mul_adjugate_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/mul-adjugate-apply--8e91e7907ac37f99be53dad4.md) | 283 | `result-track:8e91e7907ac37f99be53dad42f0a9026e404d76e77a5b45a8a4ddefb8c7fe374` |
| 25 | `theorem` | [mul_adjugate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/mul-adjugate--947b07bfc4086247ba68fe8a.md) | 289 | `result-track:947b07bfc4086247ba68fe8a77dc7233db16ad5e3dd3b5aef8dc50baa44d960e` |
| 26 | `theorem` | [adjugate_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-mul--9a6900f113cf9847ff193875.md) | 295 | `result-track:9a6900f113cf9847ff193875d26bdd57f5378ab192b60798b80ad2f158768d4f` |
| 27 | `theorem` | [adjugate_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-smul--24f6094ceb30d02095dd861d.md) | 302 | `result-track:24f6094ceb30d02095dd861dbfd09a3d87af44f744c648971fb3cb65b217c9fa` |
| 28 | `theorem` | [mulVec_cramer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/mulvec-cramer--c60fe8671d8a4f2d7fdeb910.md) | 312 | `result-track:c60fe8671d8a4f2d7fdeb910af4464dde99115dcd409799404b357963dbfce33` |
| 29 | `theorem` | [adjugate_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-subsingleton--2703765caaf848f0abe1860d.md) | 316 | `result-track:2703765caaf848f0abe1860db5c588bf3141f6ea3c5f4b7f7f9eb2547fbbdd89` |
| 30 | `theorem` | [adjugate_eq_one_of_card_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-eq-one-of-card-eq-one--cda31de04d52475f47285f75.md) | 321 | `result-track:cda31de04d52475f47285f75c470deedf2d3cebc40427fc83c14abf203840d26` |
| 31 | `theorem` | [adjugate_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-zero--df6b43e2e94f430feb96afc9.md) | 328 | `result-track:df6b43e2e94f430feb96afc9618d8d1928d1998d8a5597f79e2e914f344b1812` |
| 32 | `theorem` | [adjugate_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-one--5e6de49bf68f36d0a1a01bb5.md) | 337 | `result-track:5e6de49bf68f36d0a1a01bb5e54b3300f90cd1f62001177239a26e19934d3db9` |
| 33 | `theorem` | [adjugate_diagonal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-diagonal--062b3cc57cde174a2e4705d5.md) | 343 | `result-track:062b3cc57cde174a2e4705d5bf64878d0d8e7d4a158abf8cbcec3824c24b02e6` |
| 34 | `theorem` | [_root_.RingHom.map_adjugate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/root-ringhom-map-adjugate--9f86700b8f1f087c8d14ba45.md) | 357 | `result-track:9f86700b8f1f087c8d14ba4549ee2be74889a8057dfe0396e0fc48b0ef2c0a64` |
| 35 | `theorem` | [_root_.AlgHom.map_adjugate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/root-alghom-map-adjugate--8d6d719d0ce86eff6a3f96da.md) | 367 | `result-track:8d6d719d0ce86eff6a3f96da193d2c90735023a231b4f56458e317692cb1251f` |
| 36 | `theorem` | [det_adjugate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/det-adjugate--70e44ef6c0861484a2509baf.md) | 373 | `result-track:70e44ef6c0861484a2509baf94cad29e011da7fda45beea43004c0d79bd81bfc` |
| 37 | `theorem` | [adjugate_fin_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-fin-zero--29dcd7fce48db568dfd25004.md) | 393 | `result-track:29dcd7fce48db568dfd250049b98e7ee7fa28e04bffda14f51650e5e8ad17b17` |
| 38 | `theorem` | [adjugate_fin_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-fin-one--e19db9178cd5684089da7458.md) | 398 | `result-track:e19db9178cd5684089da7458e6468f4c2d4590199c64c7ec96f8627aafc33081` |
| 39 | `theorem` | [adjugate_fin_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-fin-two--ae503dd768c00377322bdee4.md) | 402 | `result-track:ae503dd768c00377322bdee463e06b7ef45d8d39ddef733849839c1a3ed22fd3` |
| 40 | `theorem` | [adjugate_fin_two_of](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-fin-two-of--20c97d56fc416d819c18d561.md) | 417 | `result-track:20c97d56fc416d819c18d5619381ff97b72b797a44929c2c1deefbb64c567b97` |
| 41 | `theorem` | [adjugate_fin_succ_eq_det_submatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-fin-succ-eq-det-submatrix--a9d39b216e86377f2bcebe8b.md) | 421 | `result-track:a9d39b216e86377f2bcebe8b2349eb1dd27e4d8c71c42d9dcecef11671fd4be4` |
| 42 | `theorem` | [det_eq_sum_mul_adjugate_row](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/det-eq-sum-mul-adjugate-row--4498b6646e87ca5a51ffcb73.md) | 428 | `result-track:4498b6646e87ca5a51ffcb7395da0f2ea47895d8fbc825171dde0aa2f729fd2c` |
| 43 | `theorem` | [det_eq_sum_mul_adjugate_col](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/det-eq-sum-mul-adjugate-col--5ba559be1a4afd823c5887c3.md) | 442 | `result-track:5ba559be1a4afd823c5887c3dfe7d2a1557741e7e11f2d570f9b0df402d49129` |
| 44 | `theorem` | [adjugate_conjTranspose](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-conjtranspose--ae327d6b6b57ea84da6aebc3.md) | 447 | `result-track:ae327d6b6b57ea84da6aebc35e5d7916df0293668a23ee627d0bd094422f61f8` |
| 45 | `theorem` | [isRegular_of_isLeftRegular_det](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/isregular-of-isleftregular-det--6b4b22fc2ea1685c31ae495a.md) | 453 | `result-track:6b4b22fc2ea1685c31ae495afd36ca521f0e20d38c60b6c5de4081e2ed60c223` |
| 46 | `theorem` | [adjugate_mul_distrib_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-mul-distrib-aux--1bb6726635d6c7e81030594c.md) | 468 | `result-track:1bb6726635d6c7e81030594c4d0827bf536b73d7057fbcb1ddceeca3a3778af1` |
| 47 | `theorem` | [adjugate_mul_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-mul-distrib--90063bba64cab68ea4836e05.md) | 481 | `result-track:90063bba64cab68ea4836e05491610d157b65582b2c15afe7aadd8086119f6e0` |
| 48 | `theorem` | [adjugate_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-pow--6102bc42e2166f98fae17bf0.md) | 505 | `result-track:6102bc42e2166f98fae17bf00d115a9630b2e5db77f09a74726690f9ecd78062` |
| 49 | `theorem` | [det_smul_adjugate_adjugate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/det-smul-adjugate-adjugate--0ebbe87edae0ffadcbcaafc4.md) | 511 | `result-track:0ebbe87edae0ffadcbcaafc433ae221d10455077c533699457438f9e94bf53d6` |
| 50 | `theorem` | [adjugate_adjugate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-adjugate--ab532caca32faf1750309f65.md) | 521 | `result-track:ab532caca32faf1750309f656f254483e8ad74e7587680e187350b0526fd7ee2` |
| 51 | `theorem` | [adjugate_adjugate'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variant1e6cc09ae983516b9af73ef563ce48d2616a5e5fbe1a189df51337b6c63a7fc6.lean/declarations/adjugate-adjugate--52b0415a1d344657dd155552.md) | 546 | `result-track:52b0415a1d344657dd15555259e391cb97df3bd0622b3b432278afb9ffc48a98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
