# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TruncLEHomology.Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91a716adb3890c01167006011c05a1e1591b27c4",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91a716adb3890c01167006011c05a1e1591b27c4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.TruncGEHomology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Embedding.TruncLE` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomologySequence` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.Abelian` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomologicalComplexAbelian` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [quasiIsoAt_truncLE'ToRestriction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean/declarations/quasiisoat-truncle-torestriction--5d859d4d5c4cbe5bdab437b7.md) | 52 | `result-track:5d859d4d5c4cbe5bdab437b74a93c1dd56b7963423848b20d2001b6d18fa054d` |
| 2 | `instance` | [truncLE'_hasHomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean/declarations/truncle-hashomology--fac07105b9731e841077d082.md) | 61 | `declaration-track:fac07105b9731e841077d082a0d0ddad6ccbf443d4e541f7f6ec7e7bce571c3c` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean/declarations/instance--093a427bdd7a0f25c8857a85.md) | 68 | `declaration-track:093a427bdd7a0f25c8857a850cd756e08d5c07866afd6390dca046176d230cf6` |
| 4 | `lemma` | [quasiIsoAt_ιTruncLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean/declarations/quasiisoat-truncle--c40c5e022fce07fd7a613fad.md) | 71 | `result-track:c40c5e022fce07fd7a613fadf0cd07747e57918d4198a52f48ee254cd1e02e18` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean/declarations/instance--7834e823c274a31bc0e1bc15.md) | 76 | `declaration-track:7834e823c274a31bc0e1bc15dfb22d7425cc7fdce00aa2b54740596f591ce2ba` |
| 6 | `lemma` | [quasiIso_ιTruncLE_iff_isSupported](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean/declarations/quasiiso-truncle-iff-issupported--6df4e27f865df161717d45f2.md) | 78 | `result-track:6df4e27f865df161717d45f27303100fd622d0792b8b920644bdd6efd3a6b707` |
| 7 | `lemma` | [acyclic_truncLE_iff_isSupportedOutside](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean/declarations/acyclic-truncle-iff-issupportedoutside--88dc1da0a2e3c86fb1161a3e.md) | 83 | `result-track:88dc1da0a2e3c86fb1161a3ec34e0b7420c09d29789f49d358d8bc4e855c71d5` |
| 8 | `lemma` | [quasiIso_truncLEMap_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean/declarations/quasiiso-trunclemap-iff--adcc6e9561af0be22a3ba778.md) | 90 | `result-track:adcc6e9561af0be22a3ba77829a95a032537397be30dba4cb8337aff4bbfcc47` |
| 9 | `def` | [shortComplexTruncLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean/declarations/shortcomplextruncle--95d49a73b5a92b849eab4d3f.md) | 104 | `declaration-track:95d49a73b5a92b849eab4d3f01994e1076ce5e2b827f6014b268204c61252994` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean/declarations/instance--a02f1ab85a69ded612985f03.md) | 107 | `declaration-track:a02f1ab85a69ded612985f03f0c796aee7b2e6c1ff782cd20cc284dddbc7a344` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean/declarations/instance--c8dd9150d7ed8616fa8bb684.md) | 111 | `declaration-track:c8dd9150d7ed8616fa8bb6845633b2eab6dbcfd50fb5d32a609a8fee7618b495` |
| 12 | `lemma` | [shortComplexTruncLE_shortExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean/declarations/shortcomplextruncle-shortexact--ebcba4c65dd261e9e271d0e9.md) | 115 | `result-track:ebcba4c65dd261e9e271d0e936892f69c25d213cb0df509d224a6f6db9f5d5b7` |
| 13 | `lemma` | [mono_homologyMap_shortComplexTruncLE_g](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean/declarations/mono-homologymap-shortcomplextruncle-g--beb24a6fc545a3e59769bad2.md) | 119 | `result-track:beb24a6fc545a3e59769bad224b2aec666c5a1dc162951bedb033c2f08477b39` |
| 14 | `lemma` | [shortComplexTruncLE_shortExact_δ_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean/declarations/shortcomplextruncle-shortexact-eq-zero--49bfa130c465db19cb777c50.md) | 125 | `result-track:49bfa130c465db19cb777c500f7c0314c4937e3a0918f121e72b95d98308d1de` |
| 15 | `instance` | [epi_homologyMap_shortComplexTruncLE_g](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean/declarations/epi-homologymap-shortcomplextruncle-g--b4e821563593b8c79aeb5ce4.md) | 134 | `declaration-track:b4e821563593b8c79aeb5ce405f3271eb63bfb0cd918a66bb1cfe561c24aa62b` |
| 16 | `lemma` | [isIso_homologyMap_shortComplexTruncLE_g](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean/declarations/isiso-homologymap-shortcomplextruncle-g--aff6204432564498f3f7a5ed.md) | 141 | `result-track:aff6204432564498f3f7a5edf59b57527038f05f2ca5b63d7f728e33209c2425` |
| 17 | `lemma` | [quasiIsoAt_shortComplexTruncLE_g](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean/declarations/quasiisoat-shortcomplextruncle-g--72aa5db326feb3476cec3829.md) | 146 | `result-track:72aa5db326feb3476cec3829f510402af66c0fd34466156be7db183b9aa965a8` |
| 18 | `lemma` | [shortComplexTruncLE_X₃_isSupportedOutside](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLEHomology/Variant224c89c9d86703bc9867afe22fdd2be8b01882af2706d2e37db1e8c0aaf478b8.lean/declarations/shortcomplextruncle-x-issupportedoutside--53e1a3ad932e63b38d168a17.md) | 151 | `result-track:53e1a3ad932e63b38d168a17b43a0d328dcafd468810e1b3413e8e1dfd5fb436` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
