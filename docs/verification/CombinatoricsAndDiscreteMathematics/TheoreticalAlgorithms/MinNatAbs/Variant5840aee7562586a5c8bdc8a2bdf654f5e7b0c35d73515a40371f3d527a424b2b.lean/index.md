# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MinNatAbs.Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f5d9e6a4323c24885a9fd75503a07ab1ad7d1e2",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f5d9e6a4323c24885a9fd75503a07ab1ad7d1e2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonzeroMinimum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean/declarations/nonzerominimum--43cdd3f9af800b3234ff7ff7.md) | 49 | `declaration-track:43cdd3f9af800b3234ff7ff703379c91dad829c593683cea385bb4ff19f12643` |
| 2 | `theorem` | [nonzeroMinimum_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean/declarations/nonzerominimum-eq-zero-iff--e23dced2a881b216a47d2ea3.md) | 52 | `result-track:e23dced2a881b216a47d2ea31672d454886c6ccda0ee94761549a2a02e3df93f` |
| 3 | `theorem` | [nonzeroMinimum_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean/declarations/nonzerominimum-mem--2da31eb3288a5b0058785d20.md) | 57 | `result-track:2da31eb3288a5b0058785d200df9b489713d9c42411e32e0040a92aad516efb8` |
| 4 | `theorem` | [nonzeroMinimum_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean/declarations/nonzerominimum-pos--47b46cdab915f8080d74647c.md) | 64 | `result-track:47b46cdab915f8080d74647c8dd8eddcdfbe1a9d0274cffe11705f02cd538460` |
| 5 | `theorem` | [nonzeroMinimum_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean/declarations/nonzerominimum-le--a75bab03826701406af0b2f8.md) | 67 | `result-track:a75bab03826701406af0b2f8b78172eda811cfe2edf58fa8d1c037128fabb639` |
| 6 | `theorem` | [nonzeroMinimum_eq_nonzero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean/declarations/nonzerominimum-eq-nonzero-iff--843c6cde9be6c3e2f385bbd0.md) | 79 | `result-track:843c6cde9be6c3e2f385bbd0efe6c2408a3d51fa2f5561d73d10be2e62e176a5` |
| 7 | `theorem` | [nonzeroMinimum_eq_of_nonzero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean/declarations/nonzerominimum-eq-of-nonzero--9ee84040f4db4056cca9da88.md) | 100 | `result-track:9ee84040f4db4056cca9da88081b350fdcb9786ead23a54e0bc53976bfb25d7c` |
| 8 | `theorem` | [nonzeroMinimum_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean/declarations/nonzerominimum-le-iff--b2d2e9e6a4137e441b020ef2.md) | 104 | `result-track:b2d2e9e6a4137e441b020ef2ca2e43a3009cb82c541a95f9984474f9ef18e85d` |
| 9 | `theorem` | [nonzeroMinimum_map_le_nonzeroMinimum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean/declarations/nonzerominimum-map-le-nonzerominimum--0cb33637228218578ee24a37.md) | 119 | `result-track:0cb33637228218578ee24a3765aee1879ed7c09be772222b5784e5aa596e37c2` |
| 10 | `def` | [minNatAbs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean/declarations/minnatabs--b3cff1e8e000688e9e116178.md) | 142 | `declaration-track:b3cff1e8e000688e9e116178a50004542411fb4505b7e0f38daaa93827f35cf6` |
| 11 | `theorem` | [minNatAbs_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean/declarations/minnatabs-eq-zero-iff--cb98cc444e5d90eb38c54c5c.md) | 144 | `result-track:cb98cc444e5d90eb38c54c5ce3396f294017abbe3b7c52716d5d129cb56768b8` |
| 12 | `theorem` | [minNatAbs_eq_nonzero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean/declarations/minnatabs-eq-nonzero-iff--d57340f8430cc27a1ba369f7.md) | 147 | `result-track:d57340f8430cc27a1ba369f781b962c3e90bb3623a95a25c2100c8d0b08e137e` |
| 13 | `theorem` | [minNatAbs_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean/declarations/minnatabs-nil--a8ed217f25b9c87f6a5664f6.md) | 151 | `result-track:a8ed217f25b9c87f6a5664f630ff5875d49a768798c2eb065df4d84834d971fe` |
| 14 | `def` | [maxNatAbs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variant5840aee7562586a5c8bdc8a2bdf654f5e7b0c35d73515a40371f3d527a424b2b.lean/declarations/maxnatabs--c26bc3e6daa8d434c8721dc0.md) | 154 | `declaration-track:c26bc3e6daa8d434c8721dc074e754ed514b1c979b5dc0fb9601e8bf3fdfa58f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
