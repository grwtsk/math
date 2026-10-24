# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualMuntzInventoryAttempt02.Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a54d7f89cfabf46cf4637f4b5928bf2aa0bede5",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a54d7f89cfabf46cf4637f4b5928bf2aa0bede5`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualGoodKernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.NatInt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/declarations/positivesamples--37a9c235e7a0b95f3d05e83a.md) | 23 | `declaration-track:37a9c235e7a0b95f3d05e83a44122774f651c78275b03f8e0a6936376af51504` |
| 2 | `def` | [actualMuntz](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/declarations/actualmuntz--c0adea9094439dce8f73b058.md) | 27 | `declaration-track:c0adea9094439dce8f73b0589d1b56755414728b936ced5238d3421a1cb68c0f` |
| 3 | `def` | [upperInventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/declarations/upperinventory--9e33c88365312c94953721c9.md) | 31 | `declaration-track:9e33c88365312c94953721c9a160cec11643723baeac031149f28e6266b39b71` |
| 4 | `theorem` | [actualLogSource_zero_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/declarations/actuallogsource-zero-nonpos--c68642b537de41a0f50679b3.md) | 33 | `result-track:c68642b537de41a0f50679b320cd11fa5c6a465e3c38d92698be5d4f4ab61a53` |
| 5 | `theorem` | [actualLogSource_zero_at_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/declarations/actuallogsource-zero-at-zero--d8ae3db7fd7b1a0e5c41200c.md) | 37 | `result-track:d8ae3db7fd7b1a0e5c41200cc979ec005d7bfe576d35f943e7911acb74e4cf6b` |
| 6 | `theorem` | [sample_zero_above_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/declarations/sample-zero-above-inventory--912aa8f22cd5d9dcab8ef5ec.md) | 40 | `result-track:912aa8f22cd5d9dcab8ef5ec51eb1c77a91053cd409c2729d5b3c6e00cf70184` |
| 7 | `theorem` | [allSamples_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/declarations/allsamples-summable--8faa8e723933e1a89fe9ee9b.md) | 46 | `result-track:8faa8e723933e1a89fe9ee9ba94596c321a19d6f4734b41acfba18bfa2dc4811` |
| 8 | `theorem` | [positiveSamples_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/declarations/positivesamples-summable--29a2d8c2316856c71bcebf89.md) | 53 | `result-track:29a2d8c2316856c71bcebf89f867b13cda88270c11364c9a1d61145756e3adb3` |
| 9 | `theorem` | [positiveSamples_eq_allSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/declarations/positivesamples-eq-allsamples--a7c78cb79ec9d085ff2b956e.md) | 57 | `result-track:a7c78cb79ec9d085ff2b956e5549470e0c88f927cefb616a64bf73554fde2bd7` |
| 10 | `theorem` | [allSamples_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/declarations/allsamples-eq-closed-inventory--5cd2d7cde1e1537cb9be426b.md) | 62 | `result-track:5cd2d7cde1e1537cb9be426bb9eca036618a57cb6aa9767a6cb73de935e29647` |
| 11 | `theorem` | [positiveSamples_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/declarations/positivesamples-eq-closed-inventory--d33f5a6ba82331922bdf70fb.md) | 70 | `result-track:d33f5a6ba82331922bdf70fbe3cadc909592a6dc880a42db2dfc03270c98682b` |
| 12 | `theorem` | [actualMuntz_eq_positiveSamples](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/declarations/actualmuntz-eq-positivesamples--4e78d33d82a3144969727f05.md) | 79 | `result-track:4e78d33d82a3144969727f054da3cd1d71a50001d31a81f441b446006661162a` |
| 13 | `theorem` | [actualMuntz_eq_closed_inventory](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/declarations/actualmuntz-eq-closed-inventory--8b58de839ed1ab586d03156f.md) | 83 | `result-track:8b58de839ed1ab586d03156fa698b8e3240f1ecbf2de3340697321bce2ebefe1` |
| 14 | `theorem` | [touching_sample_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/declarations/touching-sample-zero--7c2185582b52998bfb756e2d.md) | 88 | `result-track:7c2185582b52998bfb756e2d02676e3d432ea030b593fe0b11648b16b4da1c09` |
| 15 | `theorem` | [positiveSamples_zero_nonpos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/declarations/positivesamples-zero-nonpos--c221d64f197177f34b9b1150.md) | 93 | `result-track:c221d64f197177f34b9b115073c5facf02737de1a974031706104d6aade9fdcf` |
| 16 | `theorem` | [positiveSamples_zero_above](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/declarations/positivesamples-zero-above--5a37397428ec9384e319e46c.md) | 100 | `result-track:5a37397428ec9384e319e46cea37afd8726857dd1b4ff478ea7542e8d5d19050` |
| 17 | `theorem` | [actualMuntz_zero_outside](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/declarations/actualmuntz-zero-outside--9f8c8da324569c503f0e26c8.md) | 112 | `result-track:9f8c8da324569c503f0e26c847f884247653ddf388460f9ae28bd9ef26c01824` |
| 18 | `theorem` | [positiveSamples_measurable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/declarations/positivesamples-measurable--cfd6c60617833126b3d16ddf.md) | 119 | `result-track:cfd6c60617833126b3d16ddfd9df91625fe49ede663fe57e24e9579ff804e8cd` |
| 19 | `theorem` | [actualMuntz_measurable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/declarations/actualmuntz-measurable--b22eef043ba4e82717461b98.md) | 123 | `result-track:b22eef043ba4e82717461b986b1cc5f7478ab9c70532a7da55e315f2c0e5fa86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
