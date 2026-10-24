# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.PrimesInAP.Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ca4dc098acc1ae00b08cc00185b830ece502f2e",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ca4dc098acc1ae00b08cc00185b830ece502f2e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.DirichletCharacter.Orthogonality` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Linearity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Nonvanishing` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.AlgebraicallyClosed` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tprod_eq_tprod_primes_of_mulSupport_subset_prime_powers](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/tprod-eq-tprod-primes-of-mulsupport-subset-prime-powers--5aa5911fa0f6d92e89b436b9.md) | 83 | `result-track:5aa5911fa0f6d92e89b436b94b8c56eddd1a703a37d87cc359240ff6c93a45af` |
| 2 | `lemma` | [tprod_eq_tprod_primes_mul_tprod_primes_of_mulSupport_subset_prime_powers](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/tprod-eq-tprod-primes-mul-tprod-primes-of-mulsupport-subset-prime-powers--0136bc1e40e5512c8f548c43.md) | 95 | `result-track:0136bc1e40e5512c8f548c4319d370fff56ab87e9b8aee58b311c401f3bdd709` |
| 3 | `abbrev` | [residueClass](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/residueclass--16e68d750f9fc2e71dc91a6b.md) | 128 | `declaration-track:16e68d750f9fc2e71dc91a6bea2524337e8cb9f8f1d7e0e06a8e8b9af526d5d9` |
| 4 | `lemma` | [residueClass_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/residueclass-nonneg--56c935d20e8d7d8d0dd59a82.md) | 131 | `result-track:56c935d20e8d7d8d0dd59a82b75449f9e3a46021b4acf96b48b60cb44c7af456` |
| 5 | `lemma` | [residueClass_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/residueclass-le--ef67cae2b22afee4a1154705.md) | 134 | `result-track:ef67cae2b22afee4a11547050b2caf104ea1a462acf5dc2dbd4a8e61ec73d16b` |
| 6 | `lemma` | [residueClass_apply_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/residueclass-apply-zero--8d3df952e0be630c5e39747b.md) | 138 | `result-track:8d3df952e0be630c5e39747b4a419d4285c4d7f42d89cbd1c2f2272dfc99ee85` |
| 7 | `lemma` | [abscissaOfAbsConv_residueClass_le_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/abscissaofabsconv-residueclass-le-one--c6b52a68952e4eef58986e4b.md) | 142 | `result-track:c6b52a68952e4eef58986e4b68a99708a2595dec70a4098d885117be513adced` |
| 8 | `lemma` | [support_residueClass_prime_div](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/support-residueclass-prime-div--daf6322697734793a72b98b4.md) | 158 | `result-track:daf6322697734793a72b98b4e30a6dc819c9e72a68bbd0184d0a75e674084706` |
| 9 | `def` | [F₀](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/f--14d7604e75b0fcd64b5efffb.md) | 168 | `declaration-track:14d7604e75b0fcd64b5efffba4f6215b29618bb07a59f15fe0e3e65199524537` |
| 10 | `def` | [F'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/f--5ea46f987cd1ae334d345eb4.md) | 170 | `declaration-track:5ea46f987cd1ae334d345eb48b25e31283b55639efa41ddaebd0b799c70e3e04` |
| 11 | `def` | [F''](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/f--2df6cf66eac2be27c2ce0e62.md) | 172 | `declaration-track:2df6cf66eac2be27c2ce0e62c76e1cd9bbdc0d28e998effbf39440aacbf4baa7` |
| 12 | `lemma` | [F''_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/f-le--3513a6707f8f2e6131970f5d.md) | 174 | `result-track:3513a6707f8f2e6131970f5da220af00689f56c4c5bd869f20623a7266224fd7` |
| 13 | `lemma` | [summable_F''](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/summable-f--a386970be7890402c4d318b1.md) | 195 | `result-track:a386970be7890402c4d318b1869783b51e7698ea40585ff05bde6a81f5da6601` |
| 14 | `lemma` | [summable_residueClass_non_primes_div](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/summable-residueclass-non-primes-div--49176a577ad8d774f7fc35ce.md) | 223 | `result-track:49176a577ad8d774f7fc35ce94553ce14d1dc818c810c8f343bb4ed0d5fcc633` |
| 15 | `lemma` | [residueClass_apply](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/residueclass-apply--8f91c0658f8d3676d06cba01.md) | 261 | `result-track:8f91c0658f8d3676d06cba01a0e2abb238cc598e933142ce55c9dfe9041b0fc2` |
| 16 | `lemma` | [residueClass_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/residueclass-eq--49066c35d0bb7b09bf620605.md) | 271 | `result-track:49066c35d0bb7b09bf620605adcdb76c7bda0f3fdec176c11c4064504e021042` |
| 17 | `lemma` | [LSeries_residueClass_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/lseries-residueclass-eq--e498dd9068d3f47c6289edff.md) | 281 | `result-track:e498dd9068d3f47c6289edff1d1549e920fa0716c7b91554a9a0d9bb018777b5` |
| 18 | `abbrev` | [LFunctionResidueClassAux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/lfunctionresidueclassaux--e57a658e2feec713799ff99b.md) | 303 | `declaration-track:e57a658e2feec713799ff99b7f888ae804cbd0e2320e9034627b75fb35cc4bfc` |
| 19 | `lemma` | [continuousOn_LFunctionResidueClassAux'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/continuouson-lfunctionresidueclassaux--1f353950781a41701422ac9a.md) | 309 | `result-track:1f353950781a41701422ac9a8a92b142348a3fb7cbd8cedc4a56301fa8baa249` |
| 20 | `lemma` | [continuousOn_LFunctionResidueClassAux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/continuouson-lfunctionresidueclassaux--6bbacc7d68b1a77427d01829.md) | 333 | `result-track:6bbacc7d68b1a77427d0182936e1baeab28ece5b78cade9f5dea609f0af10257` |
| 21 | `lemma` | [eqOn_LFunctionResidueClassAux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/eqon-lfunctionresidueclassaux--a9e6be6398b127cd0cd942e8.md) | 348 | `result-track:a9e6be6398b127cd0cd942e83b5cfb8b59589d40e9f46e3e2a97fcd598710c9f` |
| 22 | `lemma` | [LFunctionResidueClassAux_real](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/lfunctionresidueclassaux-real--413e26e34f550d0b51893814.md) | 372 | `result-track:413e26e34f550d0b518938148aeeff83d093353c4c41b3e0a1b44ac8e2f45064` |
| 23 | `lemma` | [LSeries_residueClass_lower_bound](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/lseries-residueclass-lower-bound--e91ca40405cb13706dc5b301.md) | 392 | `result-track:e91ca40405cb13706dc5b3012a9933df23d0843738ba4c0699a86733f13b8393` |
| 24 | `lemma` | [not_summable_residueClass_prime_div](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/not-summable-residueclass-prime-div--343acb2b14daa1a0b04e7af5.md) | 423 | `result-track:343acb2b14daa1a0b04e7af5be9239f7b68cd6110b867d4455883ace164e86e2` |
| 25 | `theorem` | [setOf_prime_and_eq_mod_infinite](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/setof-prime-and-eq-mod-infinite--55540cf8f02750a03aa6ae21.md) | 475 | `result-track:55540cf8f02750a03aa6ae21531db7bbeff0f2bd780472ff74335bace5590ea0` |
| 26 | `theorem` | [forall_exists_prime_gt_and_eq_mod](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/declarations/forall-exists-prime-gt-and-eq-mod--07c31336453796c22eacd821.md) | 485 | `result-track:07c31336453796c22eacd821c2b68f9995d68b927359c319fed988204f328c5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
