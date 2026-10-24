# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91342700d1b5076b74ce10736c9ed4f6232834db",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91342700d1b5076b74ce10736c9ed4f6232834db`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Multiset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.FinsetOps` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Fold` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/lcm--f22a715e49b75310a468321f.md) | 46 | `declaration-track:f22a715e49b75310a468321f41c10925172f1144182a717f56a904e6478a3b21` |
| 2 | `theorem` | [lcm_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/lcm-zero--a8a498b81b44c13adf21e75b.md) | 50 | `result-track:a8a498b81b44c13adf21e75b24bdbc1583cf0cae234ef59db31fb94ba5d54555` |
| 3 | `theorem` | [lcm_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/lcm-cons--02e93a13cbc70cb2d452ec21.md) | 54 | `result-track:02e93a13cbc70cb2d452ec211f42f6f313d0812d85314312d27c2e8301f702b7` |
| 4 | `theorem` | [lcm_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/lcm-singleton--c867e9d858901a09ee9cc0ad.md) | 58 | `result-track:c867e9d858901a09ee9cc0ad58fb34e0c5f7c01337197ec1ead67dd43d245851` |
| 5 | `theorem` | [lcm_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/lcm-add--9ad69ef35642f53d68795f9c.md) | 62 | `result-track:9ad69ef35642f53d68795f9c6a9fc215e2f15786a9e852644035cf3e14840c34` |
| 6 | `theorem` | [lcm_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/lcm-dvd--8a0f6671b76719b90535681d.md) | 65 | `result-track:8a0f6671b76719b90535681d67bd0a62854ca18bafda622f412d6848df50af45` |
| 7 | `theorem` | [dvd_lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/dvd-lcm--078d43418a8a7981f30d2548.md) | 69 | `result-track:078d43418a8a7981f30d254862ca39a1956a3c44ac0d507dce645bdcaf5fd2c9` |
| 8 | `theorem` | [lcm_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/lcm-mono--07e399316318716582e69679.md) | 72 | `result-track:07e399316318716582e69679768ab85b172b482399e2877d1b7381374f9b9e72` |
| 9 | `theorem` | [normalize_lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/normalize-lcm--ae23eaf42d0bbdff4e70c818.md) | 76 | `result-track:ae23eaf42d0bbdff4e70c818e4019743ce3d9aa132d71e514187cbf8467bc9de` |
| 10 | `theorem` | [lcm_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/lcm-eq-zero-iff--329be959cf20bd99ee221f7a.md) | 80 | `result-track:329be959cf20bd99ee221f7a4867fd320a805b73a0d1fe0086abf5439212dd1b` |
| 11 | `theorem` | [lcm_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/lcm-dedup--bce69f21da8a754fb72f2b22.md) | 88 | `result-track:bce69f21da8a754fb72f2b226fb4f1af9db675b1748fa5a842822484fe84c26c` |
| 12 | `theorem` | [lcm_ndunion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/lcm-ndunion--e32bf171940584edfb785ec7.md) | 96 | `result-track:e32bf171940584edfb785ec7e6aab7f8fbbae7c6caae43ea21a46878a3f3b86e` |
| 13 | `theorem` | [lcm_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/lcm-union--5a0e8e5ea591159ff071a695.md) | 101 | `result-track:5a0e8e5ea591159ff071a695ccb60f32ff4f5071fcb0b0b1b15e12bf7a23b46e` |
| 14 | `theorem` | [lcm_ndinsert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/lcm-ndinsert--03cf750d5489ddd6ab723742.md) | 106 | `result-track:03cf750d5489ddd6ab723742c7ae7a8210aafd1bd4205b14e602ca2a2a1ad792` |
| 15 | `def` | [gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/gcd--b7b3401a3300d5fb13df9826.md) | 118 | `declaration-track:b7b3401a3300d5fb13df98262bcfe5626aaa82f151e9376e0877ae4977a8900a` |
| 16 | `theorem` | [gcd_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/gcd-zero--a8d6dbf900856c23914e989a.md) | 122 | `result-track:a8d6dbf900856c23914e989a45c0395b1ec08342d2f619a6f41804952b5300f0` |
| 17 | `theorem` | [gcd_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/gcd-cons--f5e7b4c9d6ac6d9ac04b8881.md) | 126 | `result-track:f5e7b4c9d6ac6d9ac04b88810a1eb888abada56ae44d46449fb595257a568b12` |
| 18 | `theorem` | [gcd_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/gcd-singleton--c8c100d6d4e83b27fd8813cb.md) | 130 | `result-track:c8c100d6d4e83b27fd8813cb40205b1bc59890de432c6fd0537e6025a3d96a80` |
| 19 | `theorem` | [gcd_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/gcd-add--96f5fee4e1f00e165455239c.md) | 134 | `result-track:96f5fee4e1f00e165455239c989ab8bb5088e2fb93bbb1bfe11cdb5fbd73af26` |
| 20 | `theorem` | [dvd_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/dvd-gcd--d7f3187eb04a9c24c424a36f.md) | 137 | `result-track:d7f3187eb04a9c24c424a36f5dc1e1f144e13e97fcaf6c9b53feb0fedd1fc9de` |
| 21 | `theorem` | [gcd_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/gcd-dvd--59e8d255ff7eacf07904a5bc.md) | 141 | `result-track:59e8d255ff7eacf07904a5bcb68a6d0f14d98d70da1b3a894337001508267198` |
| 22 | `theorem` | [gcd_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/gcd-mono--13b94960cd9123e30425042b.md) | 144 | `result-track:13b94960cd9123e30425042b56c0c7f57578ab268b33efbd393cf546032db6ab` |
| 23 | `theorem` | [normalize_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/normalize-gcd--89abdb6d44ef7f2c1b926193.md) | 148 | `result-track:89abdb6d44ef7f2c1b926193dbcfb30eca13ec68759dd40ec6912ed319856648` |
| 24 | `theorem` | [gcd_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/gcd-eq-zero-iff--1fc7af5d5e13c505be940180.md) | 151 | `result-track:1fc7af5d5e13c505be9401809c6b5d7074ea58fc472a62e58fd889899ac2efe6` |
| 25 | `theorem` | [gcd_map_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/gcd-map-mul--812575915da653a914e8da84.md) | 162 | `result-track:812575915da653a914e8da847bc4f1988f9eafd2ff504f3bae1900dc93e7a1fb` |
| 26 | `theorem` | [gcd_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/gcd-dedup--ac450190d04d40ed262c801e.md) | 174 | `result-track:ac450190d04d40ed262c801e8f860569f5aef2570d31069b531b22da156533b4` |
| 27 | `theorem` | [gcd_ndunion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/gcd-ndunion--04c951aaf2825bbebbf0e5ac.md) | 182 | `result-track:04c951aaf2825bbebbf0e5ac548d5b7cfe326a4dd277be187c480046cad11b86` |
| 28 | `theorem` | [gcd_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/gcd-union--2bfbb4540f47f64e385fcf5b.md) | 187 | `result-track:2bfbb4540f47f64e385fcf5bc2775c02e63b2b880ed2beb305a1901373730674` |
| 29 | `theorem` | [gcd_ndinsert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/gcd-ndinsert--a59c201e1adb2ebd58e8cdf1.md) | 192 | `result-track:a59c201e1adb2ebd58e8cdf19fbd12d5474364c54c81677fb70d0004d9e40f44` |
| 30 | `theorem` | [extract_gcd'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/extract-gcd--d40d7c8db4f1f99a7043fcfc.md) | 198 | `result-track:d40d7c8db4f1f99a7043fcfc7f4a737f7af384445fee321baf899bad6527c04e` |
| 31 | `theorem` | [extract_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant49f7c84c469727ee8752fb3804410cb7d3c9200ffbfabbcde4bf2af77e35a8e7.lean/declarations/extract-gcd--ef7f2d4a0f304be6c86ca7ab.md) | 205 | `result-track:ef7f2d4a0f304be6c86ca7ab8caa2777cf87cc53180c9341da46aefdbd6077de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
