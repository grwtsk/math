# Verification target: GRWTSK.Algebra.CommutativeAlgebra.RingDivision.Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2df7ecae68f4a9c63b2c09ad5a9f9309de72151",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2df7ecae68f4a9c63b2c09ad5a9f9309de72151`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.ComputeDegree` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_pos_of_aeval_root](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/natdegree-pos-of-aeval-root--a130aefb808db769ab302b3c.md) | 42 | `result-track:a130aefb808db769ab302b3ccdfbdf98dbf3e5c964d29413c2c0a148e905c63d` |
| 2 | `theorem` | [degree_pos_of_aeval_root](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/degree-pos-of-aeval-root--e3c99e7551716eda6f5b63e7.md) | 46 | `result-track:e3c99e7551716eda6f5b63e70258ca1b0f51aa0cf984889235a4d212b5b98306` |
| 3 | `theorem` | [smul_divByMonic_modByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/smul-divbymonic-modbymonic--4cdbf8893398a821df232455.md) | 52 | `result-track:4cdbf8893398a821df2324555b979175f4274c19eab9bc984772a1ec8376e030` |
| 4 | `theorem` | [smul_divByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/smul-divbymonic--faf24c7f2783b7f045660d21.md) | 62 | `result-track:faf24c7f2783b7f045660d21a7fa871bc54771bb1f06292dd12aa6b73b98c3ad` |
| 5 | `theorem` | [smul_modByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/smul-modbymonic--ddde15689d129072a77cffc4.md) | 65 | `result-track:ddde15689d129072a77cffc4564932c2e62de49bde07ea8069ed512a8fe51f14` |
| 6 | `def` | [divByMonicHom](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/divbymonichom--d7d09d7f42c92a052f451065.md) | 70 | `declaration-track:d7d09d7f42c92a052f4510650a7eb46cdf06ccfca17502b4f2ba17cb90f41bba` |
| 7 | `theorem` | [mem_ker_divByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/mem-ker-divbymonic--3fa204812cb1c2b927b10836.md) | 75 | `result-track:3fa204812cb1c2b927b10836854729cf20ce0ad2f554cb05df5681c03a9e9826` |
| 8 | `def` | [modByMonicHom](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/modbymonichom--ec8a34d7ffcffb0f81a6dba6.md) | 81 | `declaration-track:ec8a34d7ffcffb0f81a6dba60c6006e8a7002f02c5b589d2cb8a39918c20d6ef` |
| 9 | `theorem` | [mem_ker_modByMonic](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/mem-ker-modbymonic--4be47c4275eccc75563bbfc0.md) | 86 | `result-track:4be47c4275eccc75563bbfc0402b283ed85187653ce98a731c76d371a1961069` |
| 10 | `theorem` | [aeval_modByMonic_eq_self_of_root](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/aeval-modbymonic-eq-self-of-root--013531bd8ae09ebc68d6760b.md) | 94 | `result-track:013531bd8ae09ebc68d6760b956c40ebeeae0e8b7d13dc674d223833e813638a` |
| 11 | `theorem` | [trailingDegree_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/trailingdegree-mul--adb0a8c69f4eb0ffebb062f5.md) | 107 | `result-track:adb0a8c69f4eb0ffebb062f568416207959967b2f41d5980279db4a03c53977a` |
| 12 | `theorem` | [rootMultiplicity_eq_rootMultiplicity](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/rootmultiplicity-eq-rootmultiplicity--9a8cf924089539344e7b5ba1.md) | 123 | `result-track:9a8cf924089539344e7b5ba1ca3a51385ccf9ec2def467231d34d5448e534db6` |
| 13 | `theorem` | [rootMultiplicity_eq_natTrailingDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/rootmultiplicity-eq-nattrailingdegree--0222e088ce2b3c8909a1057d.md) | 133 | `result-track:0222e088ce2b3c8909a1057d77856f97582518ed6793d910375c897681f08a65` |
| 14 | `theorem` | [Monic.mem_nonZeroDivisors](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/monic-mem-nonzerodivisors--9190e6937eea13f2cd701dfe.md) | 141 | `result-track:9190e6937eea13f2cd701dfe46292bb230c82625bd4b84a7a0c38491d39d25c8` |
| 15 | `theorem` | [mem_nonZeroDivisors_of_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/mem-nonzerodivisors-of-leadingcoeff--3e059021d9269560d5b60f61.md) | 144 | `result-track:3e059021d9269560d5b60f61de3cd9d183af3d4a7450cb479086e3134b486e1a` |
| 16 | `theorem` | [mem_nonZeroDivisors_of_trailingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/mem-nonzerodivisors-of-trailingcoeff--f71c027e90816a06edefdb91.md) | 147 | `result-track:f71c027e90816a06edefdb91bece088de88ad396533e5e0c1f72d9e226157b82` |
| 17 | `lemma` | [_root_.Irreducible.aeval_ne_zero_of_natDegree_ne_one](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/root-irreducible-aeval-ne-zero-of-natdegree-ne-one--f90157b54582c8b28d8a2e5b.md) | 152 | `result-track:f90157b54582c8b28d8a2e5b17e5ca9b36e0f31348c48bdcf5f052918538cbb9` |
| 18 | `theorem` | [natDegree_pos_of_monic_of_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/natdegree-pos-of-monic-of-aeval-eq-zero--91a62123b6c9bb99ae18d2be.md) | 160 | `result-track:91a62123b6c9bb99ae18d2beb24301573b76ce7832d64dabba53c97b862b7524` |
| 19 | `theorem` | [rootMultiplicity_mul_X_sub_C_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/rootmultiplicity-mul-x-sub-c-pow--9728295fd0a0ea385f86de86.md) | 166 | `result-track:9728295fd0a0ea385f86de862634863a9659169abc2e243c62a3289c58ea2877` |
| 20 | `theorem` | [rootMultiplicity_X_sub_C_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/rootmultiplicity-x-sub-c-pow--281df3f7b41101b9824e9595.md) | 177 | `result-track:281df3f7b41101b9824e9595b644421d43f0848ca9cbf32e710d8ff458e92e66` |
| 21 | `theorem` | [rootMultiplicity_X_sub_C_self](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/rootmultiplicity-x-sub-c-self--6e8bd71ebc93e9ac61c445ed.md) | 182 | `result-track:6e8bd71ebc93e9ac61c445edf01f03e74d3aadf408c345007b9580120abfeee3` |
| 22 | `theorem` | [rootMultiplicity_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/rootmultiplicity-x-sub-c--c42d85e10be9adac4032d6fa.md) | 186 | `result-track:c42d85e10be9adac4032d6faa3540fb25492ee4b348dbe93a7c78d6147f653b0` |
| 23 | `theorem` | [rootMultiplicity_comp_C_mul_X_add_C_le](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/rootmultiplicity-comp-c-mul-x-add-c-le--d6875214ffa6f176e62ec1f5.md) | 193 | `result-track:d6875214ffa6f176e62ec1f50b941f446317f6f53af76dc5731823ace1381d74` |
| 24 | `theorem` | [rootMultiplicity_comp_C_mul_X_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/rootmultiplicity-comp-c-mul-x-add-c--b474ac38187331f6acf9dc9d.md) | 203 | `result-track:b474ac38187331f6acf9dc9d06ff275329598eea54a2fe890d4028cb12dd6ff9` |
| 25 | `theorem` | [rootMultiplicity_mul'](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/rootmultiplicity-mul--af5eda92f52f8932ccc2a0e7.md) | 211 | `result-track:af5eda92f52f8932ccc2a0e7388565d424405ec514cfd31c4082ae69c3143e60` |
| 26 | `theorem` | [Monic.neg_one_pow_natDegree_mul_comp_neg_X](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/monic-neg-one-pow-natdegree-mul-comp-neg-x--cc23a8444f42159acd12a592.md) | 218 | `result-track:cc23a8444f42159acd12a592c795d36a209ca450f99f57e9029f9afda72ceb73` |
| 27 | `theorem` | [degree_eq_degree_of_associated](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/degree-eq-degree-of-associated--0ba83d436d2636278ec27e15.md) | 231 | `result-track:0ba83d436d2636278ec27e15fd75b8d88a30008e7647b916d7b88a2cc9cfe53b` |
| 28 | `theorem` | [prime_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/prime-x-sub-c--5ab6ee2de9092118e37e4cbf.md) | 235 | `result-track:5ab6ee2de9092118e37e4cbf806dca9f8e0ee93b7387596a2222f824831616bb` |
| 29 | `theorem` | [prime_X](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/prime-x--1332fe9c1c3405b33b5e891d.md) | 240 | `result-track:1332fe9c1c3405b33b5e891d5c6dc4a2ea57636e35e73e8f810098661984eb72` |
| 30 | `theorem` | [Monic.prime_of_degree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/monic-prime-of-degree-eq-one--59d4dc76d438d193230f0236.md) | 244 | `result-track:59d4dc76d438d193230f02360322973388ec416149a9abd7c360e6dcd5d0d95e` |
| 31 | `theorem` | [irreducible_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/irreducible-x-sub-c--614c1f6015d50d9505b4710b.md) | 248 | `result-track:614c1f6015d50d9505b4710b62dcfc06887e29bb6a397a567aaba83ccda26cda` |
| 32 | `theorem` | [irreducible_X](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/irreducible-x--d517abafd630ad4b1d363383.md) | 251 | `result-track:d517abafd630ad4b1d3633835dda8a6266d5af27622789d784af5b0801c4ebae` |
| 33 | `theorem` | [Monic.irreducible_of_degree_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/monic-irreducible-of-degree-eq-one--4ebcb48ff33658be3d4f4f63.md) | 254 | `result-track:4ebcb48ff33658be3d4f4f63c880937195613e819b24c12b4bfe95d03db30011` |
| 34 | `theorem` | [irreducible_of_degree_eq_one_of_isRelPrime_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/irreducible-of-degree-eq-one-of-isrelprime-coeff--365ec12c92506b60268bccfb.md) | 259 | `result-track:365ec12c92506b60268bccfbdb14b29bbf0502e2b6adc9b677c2b1d5a230c36e` |
| 35 | `theorem` | [irreducible_C_mul_X_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/irreducible-c-mul-x-add-c--099dff5d5d571ddf88c85d13.md) | 280 | `result-track:099dff5d5d571ddf88c85d13e831571608172ba69350569268922e8f1fb79279` |
| 36 | `lemma` | [aeval_ne_zero_of_isCoprime](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/aeval-ne-zero-of-iscoprime--ef3846e0b070618f56a0ade9.md) | 286 | `result-track:ef3846e0b070618f56a0ade930a958f783a38729601fea931b64b8683fa53d45` |
| 37 | `theorem` | [isCoprime_X_sub_C_of_isUnit_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/iscoprime-x-sub-c-of-isunit-sub--82e72ac79700987656d76ae9.md) | 293 | `result-track:82e72ac79700987656d76ae9cff656c212b6088040cbad3c3d44e72d20bd013e` |
| 38 | `theorem` | [pairwise_coprime_X_sub_C](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/pairwise-coprime-x-sub-c--b28562b2fbd78f9bb849e991.md) | 302 | `result-track:b28562b2fbd78f9bb849e9911bc14db51d61b47f69e782fabc7d55b0eec29fd7` |
| 39 | `theorem` | [rootMultiplicity_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/rootmultiplicity-mul--89a28eb75d5e97f404e38ace.md) | 306 | `result-track:89a28eb75d5e97f404e38acec14d58c540bf54c609f49618e2c9b94fd1a775a8` |
| 40 | `theorem` | [exists_multiset_roots](../../../../../mathematics/Algebra/CommutativeAlgebra/RingDivision/Variantdf4efea17d794d79fe46161ccf7b3434189a86e1b24eef6ceab3a8885e3abe0e.lean/declarations/exists-multiset-roots--c337f2c3ba0afde8a519d0a2.md) | 316 | `result-track:c337f2c3ba0afde8a519d0a25bebac6d703930b93b3445e12937371fb392160e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
