# Verification target: GRWTSK.Geometry.DifferentialGeometry.MfldSetTac.Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "436c675e2da6c70ea92f0d2985598eb168b5714d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `436c675e2da6c70ea92f0d2985598eb168b5714d`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.LocalEquiv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalHomeomorph](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean/declarations/localhomeomorph--4997c99a08935140e628459d.md) | 31 | `declaration-track:4997c99a08935140e628459dd5c440c41ddddb837cc8c8a72d50a550baa6d3f0` |
| 2 | `instance` | [LocalHomeomorph.has_coe_to_fun](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean/declarations/localhomeomorph-has-coe-to-fun--05ed3595568afa6dbacf7640.md) | 33 | `declaration-track:05ed3595568afa6dbacf7640cfeda98e90124454bb3acb736568b9dec728861c` |
| 3 | `def` | [LocalHomeomorph.symm](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean/declarations/localhomeomorph-symm--01e2443417de05964ade51b6.md) | 35 | `declaration-track:01e2443417de05964ade51b60cea3f2563ec36dac6902a3bd308f99148c99248` |
| 4 | `lemma` | [LocalHomeomorph.left_inv](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean/declarations/localhomeomorph-left-inv--4a77c9669efbfe15c758f404.md) | 37 | `result-track:4a77c9669efbfe15c758f404a319db48e6b638654383676c973ab7f9c58000f9` |
| 5 | `theorem` | [LocalHomeomorph.symm_to_LocalEquiv](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean/declarations/localhomeomorph-symm-to-localequiv--ce56ceea14e0714ca850e193.md) | 42 | `result-track:ce56ceea14e0714ca850e1938c3a610a6a4d6ab6cf45cbf277e01ebbb11ff495` |
| 6 | `lemma` | [LocalHomeomorph.coe_coe](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean/declarations/localhomeomorph-coe-coe--387ce8cb42d3e1dc99dd70aa.md) | 46 | `result-track:387ce8cb42d3e1dc99dd70aa49f1ffb46d4ab3b26bf8847a285b963ee6d56a36` |
| 7 | `lemma` | [LocalHomeomorph.coe_coe_symm](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean/declarations/localhomeomorph-coe-coe-symm--98d2d61df4f513adb6929223.md) | 50 | `result-track:98d2d61df4f513adb6929223b53651bfede53952a0930d4b3ef4f6cb8766b4a1` |
| 8 | `structure` | [ModelWithCorners](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean/declarations/modelwithcorners--4ce30bb445cc0126dd08b853.md) | 54 | `declaration-track:4ce30bb445cc0126dd08b8539530109749842af41d30863520a97455e3f2b672` |
| 9 | `def` | [ModelWithCorners.symm](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean/declarations/modelwithcorners-symm--62580041fb3fdfbbf09e4b03.md) | 59 | `declaration-track:62580041fb3fdfbbf09e4b039e82e7bb9e95f8fbf4cc0b11515c7ed761f3dfc6` |
| 10 | `instance` | [ModelWithCorners.has_coe_to_fun](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean/declarations/modelwithcorners-has-coe-to-fun--77c6b24c1b191aa17137ff77.md) | 61 | `declaration-track:77c6b24c1b191aa17137ff77de43cf689a82df39fb204fc623dcc6109098b87f` |
| 11 | `lemma` | [ModelWithCorners.left_inv](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean/declarations/modelwithcorners-left-inv--fbc44ffb02b4b4becb489b21.md) | 63 | `result-track:fbc44ffb02b4b4becb489b219f2a1ec2b0bcd42b9b2fad1643e8e5555d72f6aa` |
| 12 | `lemma` | [ModelWithCorners.to_local_equiv_coe](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean/declarations/modelwithcorners-to-local-equiv-coe--d52872f14fb04c1099f67c1f.md) | 67 | `result-track:d52872f14fb04c1099f67c1fa81512e68dac09caba6e9d6ce74cc698458d1dc9` |
| 13 | `lemma` | [ModelWithCorners.to_local_equiv_coe_symm](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean/declarations/modelwithcorners-to-local-equiv-coe-symm--35e49d0ef03e1746dff2853d.md) | 71 | `result-track:35e49d0ef03e1746dff2853d381318c674ac72ed825cfdb1c1bd6c8f7413416a` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean/declarations/example--051dfb080d889221891b8237.md) | 81 | `declaration-track:051dfb080d889221891b8237fc908575e52fe1fb845fe1c3ab54b89ce67638e1` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean/declarations/example--e12819c51b95275df9e01bf3.md) | 85 | `declaration-track:e12819c51b95275df9e01bf337a47c64450f5ccb13a516105c46d398c64204eb` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean/declarations/example--f193dd1cae8d47deee8c46b4.md) | 87 | `declaration-track:f193dd1cae8d47deee8c46b4c97031eac531be6ab321e269d4953f6f7d311168` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/MfldSetTac/Variantb74b2a38db53b0280b7b26bc0eb9ba491633edd67a0bc2137da1eda332ff33fa.lean/declarations/example--0ef30af761abc0f8c0f28905.md) | 91 | `declaration-track:0ef30af761abc0f8c0f2890577a289710afdd212f252f7c0f4c6a9ef1c87f9b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
