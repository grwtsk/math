# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.MobiusDirichletSeries.Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fdc210f71905814fcd3fed69e4395429f805a7c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fdc210f71905814fcd3fed69e4395429f805a7c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.NumberTheory.Mobius` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.NumberTheory.DirichletConvolution` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.ComplexDirichletSeries` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Convolution` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mobiusComplex](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba.lean/declarations/mobiuscomplex--88281bfeaa6b279a564a4a97.md) | 23 | `declaration-track:88281bfeaa6b279a564a4a97f71b38f8067d23e49ec3a94dfdc76175d3949d78` |
| 2 | `def` | [mobiusDirichletSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba.lean/declarations/mobiusdirichletseries--b85a32a7089da9e83fc909f0.md) | 26 | `declaration-track:b85a32a7089da9e83fc909f04fad590edc6fdc6fb62ae31aff6d27bd1083ee10` |
| 3 | `theorem` | [norm_mobiusComplex_le_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba.lean/declarations/norm-mobiuscomplex-le-one--237690f4cbd852d8ee683ad1.md) | 30 | `result-track:237690f4cbd852d8ee683ad1b600a64f0f02af2de4552aa0d4d1030ff2058ba6` |
| 4 | `theorem` | [mobiusDirichlet_absSummable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba.lean/declarations/mobiusdirichlet-abssummable--bc95ef7d34dbc20df9f2145f.md) | 44 | `result-track:bc95ef7d34dbc20df9f2145fd314e79e10993e77f1adfc887ded047d6d1846cc` |
| 5 | `theorem` | [mobiusDirichletSeries_eq_tsum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba.lean/declarations/mobiusdirichletseries-eq-tsum--f808d2422a51592b2ffdf2fe.md) | 56 | `result-track:f808d2422a51592b2ffdf2fe639b3ace341e7ea445d24f9ca9b63a0157482df9` |
| 6 | `def` | [epsilonComplex](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba.lean/declarations/epsiloncomplex--c257ea9b135526e958c837ae.md) | 62 | `declaration-track:c257ea9b135526e958c837ae69b423922568d2575a4f64be33cc2136c0c88224` |
| 7 | `theorem` | [one_conv_mobius_eq_epsilon_complex](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba.lean/declarations/one-conv-mobius-eq-epsilon-complex--f02f4e0426fc2730dfa1e424.md) | 65 | `result-track:f02f4e0426fc2730dfa1e424baaf75e3c9617398ea05921fdb3f99cf64053936` |
| 8 | `theorem` | [lseries_one_convolution_mobius_eq_delta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MobiusDirichletSeries/Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba.lean/declarations/lseries-one-convolution-mobius-eq-delta--fd49d6e32bbd07bd184d2b8e.md) | 94 | `result-track:fd49d6e32bbd07bd184d2b8ec9d09700273807fdb55f5031c65a490674e85aaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
