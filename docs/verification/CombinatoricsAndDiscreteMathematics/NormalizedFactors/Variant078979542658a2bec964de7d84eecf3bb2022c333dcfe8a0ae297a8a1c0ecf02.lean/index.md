# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NormalizedFactors.Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c4263bf072a1e1bbd7d4d5edd0fd7cd315154f5",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c4263bf072a1e1bbd7d4d5edd0fd7cd315154f5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.OrderedMonoid` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/normalizedfactors--00c0ce75a94d1d0cd53b8dd5.md) | 31 | `declaration-track:00c0ce75a94d1d0cd53b8dd5fe7b67c8ff467d5265d4ddfb6bfbafe87ab77438` |
| 2 | `theorem` | [factors_eq_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/factors-eq-normalizedfactors--f9bcc47d43ea7b744c6bde82.md) | 37 | `result-track:f9bcc47d43ea7b744c6bde82b95bafd81fd4830446acc0a31f92d4568054e2b3` |
| 3 | `theorem` | [prod_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/prod-normalizedfactors--97c3677e89169ad64fd2c7df.md) | 44 | `result-track:97c3677e89169ad64fd2c7df6b7eda9ea17d792ba89ca894a0cfeb79c715ab99` |
| 4 | `theorem` | [prod_normalizedFactors_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/prod-normalizedfactors-eq--d8ccf8c87253061d19ac6da4.md) | 57 | `result-track:d8ccf8c87253061d19ac6da4deb99a796ed909347f07ce4b2876883b39a4d490` |
| 5 | `theorem` | [prime_of_normalized_factor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/prime-of-normalized-factor--1f4498328d90d8c07cfc42c8.md) | 63 | `result-track:1f4498328d90d8c07cfc42c81c0963a9f735ddc04ad8ad1e7e21ddbbee49314d` |
| 6 | `theorem` | [irreducible_of_normalized_factor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/irreducible-of-normalized-factor--0c85337cb1485fb35cbe4fb8.md) | 70 | `result-track:0c85337cb1485fb35cbe4fb85633023f852b5e6d38d08ac5f2f65e2b8ae78f64` |
| 7 | `theorem` | [normalize_normalized_factor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/normalize-normalized-factor--369d300cb655e4bab20823e2.md) | 74 | `result-track:369d300cb655e4bab20823e26e005bae8811f3d9441969aed5cd8489211f4a49` |
| 8 | `theorem` | [dvd_of_normalized_factor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/dvd-of-normalized-factor--8ad42d1ca6ef98197ee22681.md) | 82 | `result-track:8ad42d1ca6ef98197ee22681f43534e24e6c6e28566ff3d8a08eb21ae2a6c943` |
| 9 | `theorem` | [normalizedFactors_irreducible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/normalizedfactors-irreducible--55b2212bcc60e10991131cd3.md) | 87 | `result-track:55b2212bcc60e10991131cd3972919b9acd31ad5fce52357e41ad4b71b56deae` |
| 10 | `theorem` | [normalizedFactors_eq_of_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/normalizedfactors-eq-of-dvd--34f474b1c96ce239617f5ad3.md) | 97 | `result-track:34f474b1c96ce239617f5ad37ce94c55f6268fc49aa91c1bbf3efca9ef26ad91` |
| 11 | `theorem` | [exists_mem_normalizedFactors_of_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/exists-mem-normalizedfactors-of-dvd--5b782109e4dd4e41e5548ad0.md) | 105 | `result-track:5b782109e4dd4e41e5548ad0512c1b53decb951dac1e1c6c06401900db90cd81` |
| 12 | `theorem` | [exists_mem_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/exists-mem-normalizedfactors--32e288fdee74a9cf4499f8eb.md) | 123 | `result-track:32e288fdee74a9cf4499f8ebfa807d8bc1aafed9af7d6e521d7cdadc01784d02` |
| 13 | `theorem` | [normalizedFactors_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/normalizedfactors-zero--46a4a23f4971004402280624.md) | 130 | `result-track:46a4a23f4971004402280624925cbc4e937ba7c78785af9e35342d9d1cab9912` |
| 14 | `theorem` | [normalizedFactors_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/normalizedfactors-one--b811f49693ab8252994c4991.md) | 134 | `result-track:b811f49693ab8252994c4991ac468463ad80a8f93ac5f455a0ddbf4a2d5c7a61` |
| 15 | `theorem` | [normalizedFactors_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/normalizedfactors-mul--bc841aa715be31e9fdadbf85.md) | 146 | `result-track:bc841aa715be31e9fdadbf857e7bca5f40c2876ebb1fbfdefa3ae611b5939ec2` |
| 16 | `theorem` | [normalizedFactors_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/normalizedfactors-pow--f018d2da6284fb8fa55fc180.md) | 168 | `result-track:f018d2da6284fb8fa55fc18095930db4f5194651eeb2033bf649eec36bbe6a5e` |
| 17 | `theorem` | [_root_.Irreducible.normalizedFactors_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/root-irreducible-normalizedfactors-pow--cf9c8d97affa971617d5e543.md) | 176 | `result-track:cf9c8d97affa971617d5e543f04ccc26279d590d40612230b3ac50b7cfdf96ef` |
| 18 | `theorem` | [normalizedFactors_prod_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/normalizedfactors-prod-eq--6657e836a74bc850e4c930f7.md) | 181 | `result-track:6657e836a74bc850e4c930f73554ea9daefd9a0e25875d6530ac2559076d1d3d` |
| 19 | `theorem` | [dvd_iff_normalizedFactors_le_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/dvd-iff-normalizedfactors-le-normalizedfactors--6fca77bc1e00085050c309ec.md) | 195 | `result-track:6fca77bc1e00085050c309ecd566ea0069a7b16b9872e9a8c2bd7f0b69dbd205` |
| 20 | `theorem` | [_root_.Associated.normalizedFactors_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/root-associated-normalizedfactors-eq--52471c7efc5d0bfbd74858e2.md) | 204 | `result-track:52471c7efc5d0bfbd74858e28e610cc23a24c32687aa8ea22df36c10f98f8e24` |
| 21 | `theorem` | [associated_iff_normalizedFactors_eq_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/associated-iff-normalizedfactors-eq-normalizedfactors--e74edd84243c50d411321981.md) | 211 | `result-track:e74edd84243c50d41132198152a83ab26887a8bc0aed745a2847037c262cbc32` |
| 22 | `theorem` | [normalizedFactors_of_irreducible_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/normalizedfactors-of-irreducible-pow--512d1975dce7d380f743cec6.md) | 216 | `result-track:512d1975dce7d380f743cec66557ed01e3792c2dfc3268b7b8f2c47b4706595e` |
| 23 | `theorem` | [zero_notMem_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/zero-notmem-normalizedfactors--8c02982bd4a96a3f94713a44.md) | 220 | `result-track:8c02982bd4a96a3f94713a443e4888c6aa01b6b4ccaec3a08d704d3c3fd34ede` |
| 24 | `theorem` | [dvd_of_mem_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/dvd-of-mem-normalizedfactors--5801a0480c045b0b431b4077.md) | 226 | `result-track:5801a0480c045b0b431b407797d8a9c1e8b26d785cbac1c855643b4346bd24ad` |
| 25 | `theorem` | [mem_normalizedFactors_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/mem-normalizedfactors-iff--9bc371ab6c9f48c47aeda38f.md) | 232 | `result-track:9bc371ab6c9f48c47aeda38f5575182144e7ce5db45381cf8c702e7e723a601e` |
| 26 | `theorem` | [mem_normalizedFactors_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/mem-normalizedfactors-iff--f9b18bac217df95e0040d7c8.md) | 242 | `result-track:f9b18bac217df95e0040d7c86b1e7da08af8a4eefb247170af742ad8803fd177` |
| 27 | `theorem` | [exists_associated_prime_pow_of_unique_normalized_factor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/exists-associated-prime-pow-of-unique-normalized-factor--60862c1f73e5569e34859931.md) | 250 | `result-track:60862c1f73e5569e3485993157a56b9c2f7fc5da4b2a2c0ffd647d11242e3da8` |
| 28 | `theorem` | [normalizedFactors_prod_of_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/normalizedfactors-prod-of-prime--82d96d044663af38928e19dd.md) | 256 | `result-track:82d96d044663af38928e19dde64e11baa0f3c51361856ebda3b7da5e815b3a1a` |
| 29 | `theorem` | [mem_normalizedFactors_eq_of_associated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/mem-normalizedfactors-eq-of-associated--e960c6163e2cc188b565e312.md) | 267 | `result-track:e960c6163e2cc188b565e31256761d13483f463acc450bab852605231cb48a47` |
| 30 | `theorem` | [normalizedFactors_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/normalizedfactors-pos--e656c89177f10321c5c167bd.md) | 274 | `result-track:e656c89177f10321c5c167bde1a035bfda23b62323fe1f813ce076c48105e9fb` |
| 31 | `theorem` | [dvdNotUnit_iff_normalizedFactors_lt_normalizedFactors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/dvdnotunit-iff-normalizedfactors-lt-normalizedfactors--c1581c78f3db4bd2b7b99b82.md) | 287 | `result-track:c1581c78f3db4bd2b7b99b8280d88e03612ac516ee40c08574e7ef768e0edea5` |
| 32 | `theorem` | [normalizedFactors_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/normalizedfactors-multiset-prod--10cf5049a210ad72a86518a3.md) | 299 | `result-track:10cf5049a210ad72a86518a3f499b51abdccf9b1470c8a8c502d672d3ef60cc0` |
| 33 | `def` | [normalizedFactorsEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/normalizedfactorsequiv--cdc14f3cab8b5257298c0f96.md) | 323 | `declaration-track:cdc14f3cab8b5257298c0f96e70eacec0c5c48fed5d485b48e6fff6cdb3adf35` |
| 34 | `theorem` | [normalizedFactorsEquiv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/normalizedfactorsequiv-apply--063142fdb586799723d600fa.md) | 332 | `result-track:063142fdb586799723d600fafe1f9ad7abffa67ad4492782515049e8c274ba97` |
| 35 | `theorem` | [normalizedFactorsEquiv_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/normalizedfactorsequiv-symm-apply--7aed62f058ad3b419d629af4.md) | 337 | `result-track:7aed62f058ad3b419d629af433ea6526cc6e13a516fc6e5f8f0c6e386d2de33b` |
| 36 | `def` | [normalizationMonoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/declarations/normalizationmonoid--9ae768ca6bec37a44555637b.md) | 352 | `declaration-track:9ae768ca6bec37a44555637b3727a0a4cfa18bd2a8de95a143afa6c5436fcd67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
