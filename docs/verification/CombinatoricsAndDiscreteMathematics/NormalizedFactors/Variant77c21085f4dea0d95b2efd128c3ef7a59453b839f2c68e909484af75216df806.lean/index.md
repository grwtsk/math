# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NormalizedFactors.Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34a3014443f8657825a01989053f9bf03a3f9817",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34a3014443f8657825a01989053f9bf03a3f9817`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.OrderedMonoid` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/normalizedfactors--9079aa62ce019e9683e193ea.md) | 39 | `declaration-track:9079aa62ce019e9683e193ea08b795d3df715279db75f1c93acf2272371d2699` |
| 2 | `theorem` | [factors_eq_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/factors-eq-normalizedfactors--07bdd0c12afbb1fa9b986ba4.md) | 45 | `result-track:07bdd0c12afbb1fa9b986ba4df53f5539dd53f0293485cd0152e3081a0895b1c` |
| 3 | `theorem` | [prod_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/prod-normalizedfactors--d872f4f27351c3017e449ade.md) | 52 | `result-track:d872f4f27351c3017e449ade45108a4f92c577d2bd5548382fb163b114e0f3d8` |
| 4 | `theorem` | [prod_normalizedFactors_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/prod-normalizedfactors-eq--4bcba7b01d9cfb629026df3e.md) | 65 | `result-track:4bcba7b01d9cfb629026df3e9d5957ff68c6ec6cb1723839031f96087055e550` |
| 5 | `theorem` | [prime_of_normalized_factor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/prime-of-normalized-factor--028b72fb3aa47549add98af0.md) | 71 | `result-track:028b72fb3aa47549add98af0d14fb3bbf06d1e876e4135c34e28f3232895124e` |
| 6 | `theorem` | [irreducible_of_normalized_factor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/irreducible-of-normalized-factor--e0556c67d13148834c4ad4a9.md) | 78 | `result-track:e0556c67d13148834c4ad4a94009ee456e264404c42040b826927bdab3079865` |
| 7 | `theorem` | [normalize_normalized_factor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/normalize-normalized-factor--defd71e1190f50a4ffdf051d.md) | 82 | `result-track:defd71e1190f50a4ffdf051d15bd59de5aedf3381ee34c7d020a113086a2dcc8` |
| 8 | `theorem` | [dvd_of_normalized_factor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/dvd-of-normalized-factor--19a393c59ed2949bb303b128.md) | 90 | `result-track:19a393c59ed2949bb303b1281c8676719b60cdc9d9ccebff922b1da00a4de36a` |
| 9 | `theorem` | [normalizedFactors_irreducible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/normalizedfactors-irreducible--8b198ea1602dee49d6103446.md) | 95 | `result-track:8b198ea1602dee49d610344660acaa06d951f3fdc1720e64a761ce3104b4a6ea` |
| 10 | `theorem` | [normalizedFactors_eq_of_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/normalizedfactors-eq-of-dvd--b42a75007634cd059bc29402.md) | 105 | `result-track:b42a75007634cd059bc294028f0bced90ab032f3d04d5f5ac6b275356dcad6d6` |
| 11 | `theorem` | [exists_mem_normalizedFactors_of_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/exists-mem-normalizedfactors-of-dvd--72d9fa54545e8b47f0f572ee.md) | 113 | `result-track:72d9fa54545e8b47f0f572eecabb0df70fd108677b51b6f0ac2694a61fbf2bfa` |
| 12 | `theorem` | [exists_mem_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/exists-mem-normalizedfactors--68059ef168edede7094df7b3.md) | 131 | `result-track:68059ef168edede7094df7b3e7cd264a291389e5ec63135ec91f6b0419334537` |
| 13 | `theorem` | [normalizedFactors_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/normalizedfactors-zero--342396afc95c68051ca09647.md) | 138 | `result-track:342396afc95c68051ca09647c3b86f9a1fbd256b25cfa66c2e3b290d8b92eadc` |
| 14 | `theorem` | [normalizedFactors_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/normalizedfactors-one--f833d18ab0ec7042df0494a8.md) | 142 | `result-track:f833d18ab0ec7042df0494a8c181911af421ef95a83adc119e55198a330461e3` |
| 15 | `theorem` | [normalizedFactors_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/normalizedfactors-mul--47e4976fee6be9b735c0108b.md) | 154 | `result-track:47e4976fee6be9b735c0108bad051acdd03af3b11b5680e8a8d5bc538898ab6c` |
| 16 | `theorem` | [normalizedFactors_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/normalizedfactors-pow--b20e86d78e11e55a4dd77036.md) | 176 | `result-track:b20e86d78e11e55a4dd770362cecb407a21538d6ba378d94e51b3a1df25b50b5` |
| 17 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.NormalizedFactors.Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.Irreducible.normalizedFactors_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-normalizedfactors-varian--938f87b71539ee3191666efd.md) | 184 | `result-track:938f87b71539ee3191666efdf3be4c22e85dc286b871b39d59cfc0d629f843f1` |
| 18 | `theorem` | [normalizedFactors_prod_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/normalizedfactors-prod-eq--801919d75664d7a8108903f9.md) | 189 | `result-track:801919d75664d7a8108903f99725d1daa18697b8fb7b04ce738a216877ec24c1` |
| 19 | `theorem` | [dvd_iff_normalizedFactors_le_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/dvd-iff-normalizedfactors-le-normalizedfactors--cfadfc8ddcca7d0921814d4d.md) | 203 | `result-track:cfadfc8ddcca7d0921814d4d9965c116213080e89322f76ee1221e31a95c2bdd` |
| 20 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.NormalizedFactors.Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.Associated.normalizedFactors_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-normalizedfactors-varian--e9247847679364b295a34757.md) | 212 | `result-track:e9247847679364b295a34757f33c7cddd42236ccd1580e9976e34bcbed67f934` |
| 21 | `theorem` | [associated_iff_normalizedFactors_eq_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/associated-iff-normalizedfactors-eq-normalizedfactors--7ccb888725049636f1f96edb.md) | 219 | `result-track:7ccb888725049636f1f96edbbf897193fa3a3371205436706d0cf71b1b57b14f` |
| 22 | `theorem` | [normalizedFactors_of_irreducible_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/normalizedfactors-of-irreducible-pow--6f8b04fa81ba540e2cbb65e1.md) | 224 | `result-track:6f8b04fa81ba540e2cbb65e1326cb706d3cfa26e6ab2589b92d90d2b5d3b2543` |
| 23 | `theorem` | [zero_notMem_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/zero-notmem-normalizedfactors--830de5ae09545f59b6ea5877.md) | 228 | `result-track:830de5ae09545f59b6ea58776cece5649e0c17fb51604b30942278c5382317f7` |
| 24 | `theorem` | [dvd_of_mem_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/dvd-of-mem-normalizedfactors--0fd7116ae5311355baf3da74.md) | 234 | `result-track:0fd7116ae5311355baf3da7480709d22219e2ec8792d6278abf0a6c6e658c707` |
| 25 | `theorem` | [mem_normalizedFactors_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/mem-normalizedfactors-iff--f3789dde35b963a7ec2bd256.md) | 240 | `result-track:f3789dde35b963a7ec2bd256d51b12e9078420ce1c7d780b8f0c351fcbd941d4` |
| 26 | `theorem` | [mem_normalizedFactors_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/mem-normalizedfactors-iff--f3c2ca988dbb70a684a113ae.md) | 250 | `result-track:f3c2ca988dbb70a684a113ae2d472c6c2caf1f47583efd3c4366eb649fbef7e6` |
| 27 | `theorem` | [exists_associated_prime_pow_of_unique_normalized_factor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/exists-associated-prime-pow-of-unique-normalized-factor--3f44321b7007ec8465b45826.md) | 258 | `result-track:3f44321b7007ec8465b45826fe6592241b056802f3f051ce666bfa042721347a` |
| 28 | `theorem` | [normalizedFactors_prod_of_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/normalizedfactors-prod-of-prime--4190ca1a73219cbcf8bff2c2.md) | 264 | `result-track:4190ca1a73219cbcf8bff2c2b1d98a3981ab33f38eea4d11fdca8584322e7a9d` |
| 29 | `theorem` | [mem_normalizedFactors_eq_of_associated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/mem-normalizedfactors-eq-of-associated--d64ccb6792423f7e49dcd2ce.md) | 275 | `result-track:d64ccb6792423f7e49dcd2ce93e314e2a08a3d4e954e981c39a92c6f71d8914e` |
| 30 | `theorem` | [normalizedFactors_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/normalizedfactors-pos--84dbf7011988deed553866e1.md) | 282 | `result-track:84dbf7011988deed553866e1a90a2f93b5e7be005fec8938d1b49b5387170f01` |
| 31 | `theorem` | [dvdNotUnit_iff_normalizedFactors_lt_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/dvdnotunit-iff-normalizedfactors-lt-normalizedfactors--aa79c1d119cda1f425092d77.md) | 295 | `result-track:aa79c1d119cda1f425092d77543a586ed6bacf5400dc4453fc8199e4893a0f93` |
| 32 | `theorem` | [normalizedFactors_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/normalizedfactors-multiset-prod--c8247237532fa39c2cddc560.md) | 307 | `result-track:c8247237532fa39c2cddc56017ca2e128fe878f7e4b6eed46709a00d952b18b2` |
| 33 | `def` | [normalizedFactorsEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/normalizedfactorsequiv--f58fefe26b53b3d4702000ac.md) | 331 | `declaration-track:f58fefe26b53b3d4702000acf5c8396f4b620d093894b30541200a2a44ef8cb4` |
| 34 | `theorem` | [normalizedFactorsEquiv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/normalizedfactorsequiv-apply--8f4907a46ff96e355dd6e485.md) | 340 | `result-track:8f4907a46ff96e355dd6e485f0615900bfe6a437540b0e2f40a99687d9f6231a` |
| 35 | `theorem` | [normalizedFactorsEquiv_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/normalizedfactorsequiv-symm-apply--3cd24cfcc0481b833eed583c.md) | 345 | `result-track:3cd24cfcc0481b833eed583c746ccb6e96b4bdbb65e158d1b7a4c433771d2b4c` |
| 36 | `def` | [normalizationMonoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant77c21085f4dea0d95b2efd128c3ef7a59453b839f2c68e909484af75216df806.lean/declarations/normalizationmonoid--4d26fe55fa67b023886fec6c.md) | 360 | `declaration-track:4d26fe55fa67b023886fec6c32b95a649b6610c9f8595326b11bbe6f9e3ce88b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
