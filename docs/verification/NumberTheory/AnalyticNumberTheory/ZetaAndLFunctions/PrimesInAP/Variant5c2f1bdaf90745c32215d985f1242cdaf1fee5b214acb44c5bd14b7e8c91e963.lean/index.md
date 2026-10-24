# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.PrimesInAP.Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e35a5a8dcca8824941af102c2b0fdabd6abecb5",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e35a5a8dcca8824941af102c2b0fdabd6abecb5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.DirichletCharacter.Orthogonality` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Linearity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Nonvanishing` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.AlgebraicallyClosed` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tprod_eq_tprod_primes_of_mulSupport_subset_prime_powers](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/tprod-eq-tprod-primes-of-mulsupport-subset-prime-powers--88b38115025d0e04380b5326.md) | 91 | `result-track:88b38115025d0e04380b532642e0ed27177d163dc5cfaeba90bb2fae00e6b42d` |
| 2 | `lemma` | [tprod_eq_tprod_primes_mul_tprod_primes_of_mulSupport_subset_prime_powers](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/tprod-eq-tprod-primes-mul-tprod-primes-of-mulsupport-subset-prime-powers--992807d03b7caf743ae3c42c.md) | 103 | `result-track:992807d03b7caf743ae3c42cf71fba85dd032cccc32abcedee930c4d7e32e2a9` |
| 3 | `abbrev` | [residueClass](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/residueclass--aacb342de19980d00f9621f4.md) | 136 | `declaration-track:aacb342de19980d00f9621f4cef94eede2b6d90829d50eb5c885c4372adbee2c` |
| 4 | `lemma` | [residueClass_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/residueclass-nonneg--940d48a888f806759d17cefb.md) | 139 | `result-track:940d48a888f806759d17cefb7f312ea303210cb16a28c309c8f8faa31a18ab6f` |
| 5 | `lemma` | [residueClass_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/residueclass-le--98236c44a12df73c73e8dfff.md) | 142 | `result-track:98236c44a12df73c73e8dfff53e9b44f47df9b1f49b102de84490588e678d76b` |
| 6 | `lemma` | [residueClass_apply_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/residueclass-apply-zero--885b5077aa404b36d1a0d73b.md) | 146 | `result-track:885b5077aa404b36d1a0d73b5cdf45dc22354ff19bcf3c802e9c16eca0d2e10a` |
| 7 | `lemma` | [abscissaOfAbsConv_residueClass_le_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/abscissaofabsconv-residueclass-le-one--18f08284fe238f9f9394500c.md) | 150 | `result-track:18f08284fe238f9f9394500cd1010077b0355641e0773703e30aa55c8073ebe6` |
| 8 | `lemma` | [support_residueClass_prime_div](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/support-residueclass-prime-div--9c18641648f9ef70abcebadf.md) | 166 | `result-track:9c18641648f9ef70abcebadf8b4ccb5b79e1ede35f1a75b63ce97cb217e7cbca` |
| 9 | `def` | [F₀](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/f--d5c3dffd5abf99ac96847b7a.md) | 176 | `declaration-track:d5c3dffd5abf99ac96847b7a45e6e39d5a5e6b3906fa7d9938cdb88b8a855047` |
| 10 | `def` | [F'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/f--5cc7174858582e34cba2d100.md) | 178 | `declaration-track:5cc7174858582e34cba2d1005e094d270e5336616d645ec398290df9099fa8a4` |
| 11 | `def` | [F''](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/f--29839c7a598f993a256ecbfc.md) | 180 | `declaration-track:29839c7a598f993a256ecbfc66e0ef6d750f32141d35a39754fb285c36f43356` |
| 12 | `lemma` | [F''_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/f-le--14c80016d490210abd16feda.md) | 182 | `result-track:14c80016d490210abd16feda27cd69fbef7aa9f708e1bb133a0e9758b8188031` |
| 13 | `lemma` | [summable_F''](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/summable-f--2e4bd14d3ad74d27a3d11305.md) | 203 | `result-track:2e4bd14d3ad74d27a3d11305ac634b9b5b4bbb542afbdf9c56add29782382dfa` |
| 14 | `lemma` | [summable_residueClass_non_primes_div](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/summable-residueclass-non-primes-div--a3a9f3aa1091d648798f250a.md) | 231 | `result-track:a3a9f3aa1091d648798f250acb671e3475de41b22f3666b1476f4141499c83a7` |
| 15 | `lemma` | [residueClass_apply](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/residueclass-apply--4f5b019e13787f47890f4e1b.md) | 269 | `result-track:4f5b019e13787f47890f4e1b813ce247a1e23556f0aa855ec5b6ebea2cb5823b` |
| 16 | `lemma` | [residueClass_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/residueclass-eq--ce0da1ae3d3f2a2319678a4d.md) | 279 | `result-track:ce0da1ae3d3f2a2319678a4d83691cfdc02bdb077ce0fb1379ca7b643d676e85` |
| 17 | `lemma` | [LSeries_residueClass_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/lseries-residueclass-eq--b70328a748a878c73beebd7e.md) | 289 | `result-track:b70328a748a878c73beebd7ede57357b1ecf75d7f2111bf24b08fa67bf1667f4` |
| 18 | `abbrev` | [LFunctionResidueClassAux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/lfunctionresidueclassaux--5c2267f821f2954ed45b559f.md) | 311 | `declaration-track:5c2267f821f2954ed45b559ffc30fb330c9b71416e2de1fc67cfef5fc10c7817` |
| 19 | `lemma` | [continuousOn_LFunctionResidueClassAux'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/continuouson-lfunctionresidueclassaux--5c3e636c31f3d37ab7a977ad.md) | 317 | `result-track:5c3e636c31f3d37ab7a977ad55b1298d4bcfe2df4c0578d3581a161b8ba21755` |
| 20 | `lemma` | [continuousOn_LFunctionResidueClassAux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/continuouson-lfunctionresidueclassaux--94ea529fef6b174171dd4d6b.md) | 341 | `result-track:94ea529fef6b174171dd4d6b1b3ac6614f49260d05fdc7a1874e673b52bc1e62` |
| 21 | `lemma` | [eqOn_LFunctionResidueClassAux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/eqon-lfunctionresidueclassaux--7aea1fc095d65fca356c3744.md) | 356 | `result-track:7aea1fc095d65fca356c3744b190daa2ac03d2cacc4f49c0263f4b5d50cda07f` |
| 22 | `lemma` | [LFunctionResidueClassAux_real](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/lfunctionresidueclassaux-real--c1b9dc49ed489d1c5c35d314.md) | 380 | `result-track:c1b9dc49ed489d1c5c35d314c75743a0269f4db6714bdcf4bf4dd7256a6ea742` |
| 23 | `lemma` | [LSeries_residueClass_lower_bound](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/lseries-residueclass-lower-bound--c6550cf3bd06f51a3198aa57.md) | 400 | `result-track:c6550cf3bd06f51a3198aa578f4b6e7b13e805eeb6700eb76ac3905f264f4784` |
| 24 | `lemma` | [not_summable_residueClass_prime_div](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/not-summable-residueclass-prime-div--9d22073168388e712c7677af.md) | 431 | `result-track:9d22073168388e712c7677af8ad6723e1c50eff47e5ba765f6f2358d33f9ba4f` |
| 25 | `theorem` | [setOf_prime_and_eq_mod_infinite](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/setof-prime-and-eq-mod-infinite--a2e36dc4eb69bad0115666bd.md) | 483 | `result-track:a2e36dc4eb69bad0115666bd6a1f3aa6a578a42cb2a1eb5316075de7b7b4a75e` |
| 26 | `theorem` | [forall_exists_prime_gt_and_eq_mod](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant5c2f1bdaf90745c32215d985f1242cdaf1fee5b214acb44c5bd14b7e8c91e963.lean/declarations/forall-exists-prime-gt-and-eq-mod--eb5cb1546553cf9cb34b8f5a.md) | 493 | `result-track:eb5cb1546553cf9cb34b8f5a07fd04ab623d86d1bc1797c4090acfb9199cfc7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
