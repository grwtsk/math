# Verification target: GRWTSK.Topology.GeneralTopology.DeltaGenerated.Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ce573d2609889b103ef82ffec012bd2e12776d3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ce573d2609889b103ef82ffec012bd2e12776d3`.

Source path: `GRWTSK/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monad.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.DeltaGeneratedSpace` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DeltaGenerated](../../../../../mathematics/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean/declarations/deltagenerated--177a95a7d90c4af8ddd99a4c.md) | 36 | `declaration-track:177a95a7d90c4af8ddd99a4cbff482004ab52e3a382ec97714eb1dc2341e979d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean/declarations/instance--f6759b9080f8474b129294be.md) | 44 | `declaration-track:f6759b9080f8474b129294be6d395ee4ece4d690d221faf7bc86ac5ef796c12f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean/declarations/instance--38393050617f9ad58fa53cd7.md) | 49 | `declaration-track:38393050617f9ad58fa53cd742a674784bca1c4d3ae478f18d1422d376f98b7f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean/declarations/instance--0046e1c94fc7f3999e53e345.md) | 52 | `declaration-track:0046e1c94fc7f3999e53e345e32e08f90751351c3da74570402221a45862fc72` |
| 5 | `abbrev` | [of](../../../../../mathematics/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean/declarations/of--680d851af63a38c193fc1a69.md) | 56 | `declaration-track:680d851af63a38c193fc1a696f6a4038399a3ba1a216946e6e324f79ace22469` |
| 6 | `def` | [deltaGeneratedToTop](../../../../../mathematics/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean/declarations/deltageneratedtotop--04be97b726fdbdb022cec414.md) | 62 | `declaration-track:04be97b726fdbdb022cec41484eabe1967597614f84e33d6a8151078c0bc1553` |
| 7 | `def` | [fullyFaithfulDeltaGeneratedToTop](../../../../../mathematics/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean/declarations/fullyfaithfuldeltageneratedtotop--131cb3f8d6a9e5ac25a0c02a.md) | 66 | `declaration-track:131cb3f8d6a9e5ac25a0c02adc761c64637742caaa2ebbdb645eb823d63e225c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean/declarations/instance--5faf414536040a711aa13b47.md) | 69 | `declaration-track:5faf414536040a711aa13b47a50732ed9e0b17fd2fc205febabddf004772a3c9` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean/declarations/instance--11f3517212920d4dc31db878.md) | 71 | `declaration-track:11f3517212920d4dc31db878c238cfbfd4c073703d5896adf551c9ddc53c7a5b` |
| 10 | `def` | [topToDeltaGenerated](../../../../../mathematics/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean/declarations/toptodeltagenerated--2ed9966919ec2a59f9cf181b.md) | 76 | `declaration-track:2ed9966919ec2a59f9cf181b6b9d436eb0b8e228dd2ee61582bb8d6bae07f9ce` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean/declarations/instance--34da1c392933018d81be6b03.md) | 81 | `declaration-track:34da1c392933018d81be6b03434493850bc46877057734e177f9fc21f67f47bf` |
| 12 | `def` | [coreflectorAdjunction](../../../../../mathematics/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean/declarations/coreflectoradjunction--cdf3e05ba5b90bb1a240b072.md) | 85 | `declaration-track:cdf3e05ba5b90bb1a240b072cf7491c87c42a32776e292a931c02acb7dd9fb52` |
| 13 | `instance` | [deltaGeneratedToTop.coreflective](../../../../../mathematics/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean/declarations/deltageneratedtotop-coreflective--69fc37ce7ad8dacf88eba0f1.md) | 93 | `declaration-track:69fc37ce7ad8dacf88eba0f19cc217440fb9fafec153ffe48ec4c7f6f921d7f6` |
| 14 | `instance` | [deltaGeneratedToTop.createsColimits](../../../../../mathematics/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean/declarations/deltageneratedtotop-createscolimits--106ed4b32fb407cde75723e4.md) | 97 | `declaration-track:106ed4b32fb407cde75723e49a3e6da4aa7a28693bbd5a25cd9cc3f8aa2d534a` |
| 15 | `instance` | [hasLimits](../../../../../mathematics/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean/declarations/haslimits--99fa56c650b1a51ce208aae7.md) | 100 | `declaration-track:99fa56c650b1a51ce208aae7890521deddcbec559c1d4c38d4e1926294eedb9c` |
| 16 | `instance` | [hasColimits](../../../../../mathematics/Topology/GeneralTopology/DeltaGenerated/Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b.lean/declarations/hascolimits--876d769cc36f57ce7fd5eb93.md) | 103 | `declaration-track:876d769cc36f57ce7fd5eb935b5c2a17f3f1e294e5013e033080f6652366d025` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
