# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.TotallyRealComplex.Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17a3626a0cf6d40f8c26469b262eb6a3a2856c22",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17a3626a0cf6d40f8c26469b262eb6a3a2856c22`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.InfinitePlace.Ramification` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsTotallyReal](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/declarations/istotallyreal--693e2d41cbbdaefbe6e1e0c0.md) | 43 | `declaration-track:693e2d41cbbdaefbe6e1e0c08ecb2ccd31a72afff4e6d5275ac032e347ed6a65` |
| 2 | `theorem` | [nrComplexPlaces_eq_zero_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/declarations/nrcomplexplaces-eq-zero-iff--52ea4c6ef83d7c7418978f9f.md) | 48 | `result-track:52ea4c6ef83d7c7418978f9f08dba01bcf0a72bbc231bd50bd9ab4a4dafd6ca8` |
| 3 | `theorem` | [IsTotallyReal.ofRingEquiv](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/declarations/istotallyreal-ofringequiv--16e5fe88366b0bf5e2a9369c.md) | 52 | `result-track:16e5fe88366b0bf5e2a9369cc9186363ff9fa37ffbde65ece9d0f16d52a547a7` |
| 4 | `theorem` | [IsTotallyReal.of_algebra](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/declarations/istotallyreal-of-algebra--f2a038f245f6bcfed40ad99b.md) | 56 | `result-track:f2a038f245f6bcfed40ad99b332133dfbe66f2917af15bb37d08ba2ab4ace40d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/declarations/instance--7930f1603e3f7cb49617b86a.md) | 61 | `declaration-track:7930f1603e3f7cb49617b86ab73f56bfd326307713a6251c354e2e243990ea16` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/declarations/instance--8ee1e5d7b0c992c096f717a7.md) | 64 | `declaration-track:8ee1e5d7b0c992c096f717a7d83062d4ac134dcb4ca10d496a7045b3b4c6a9e5` |
| 7 | `theorem` | [IsTotallyReal.nrComplexPlaces_eq_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/declarations/istotallyreal-nrcomplexplaces-eq-zero--3954440dba9256315f56c634.md) | 70 | `result-track:3954440dba9256315f56c634678b3615f0769138f67ecc37128564bc9187ce4a` |
| 8 | `theorem` | [IsTotallyReal.finrank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/declarations/istotallyreal-finrank--76843caa715fa117777284fc.md) | 74 | `result-track:76843caa715fa117777284fc903c412a9c766e7e7138190798275732c8f1c347` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/declarations/instance--66a390d313d214f505340c4b.md) | 78 | `declaration-track:66a390d313d214f505340c4ba73507276aae184a3004b6acdd9637fd7563b102` |
| 10 | `def` | [maximalRealSubfield](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/declarations/maximalrealsubfield--ef3bed4172e6a6cef6235bba.md) | 92 | `declaration-track:ef3bed4172e6a6cef6235bba6f03421ab4582951a0d8721ed7306518404ff15b` |
| 11 | `instance` | [isTotallyReal_maximalRealSubfield](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/declarations/istotallyreal-maximalrealsubfield--561e2bd830fe56a2ed90b685.md) | 101 | `declaration-track:561e2bd830fe56a2ed90b6852b693d873e9217d52b6560d321bbc34a4f5dc3ff` |
| 12 | `theorem` | [IsTotallyReal.le_maximalRealSubfield](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/declarations/istotallyreal-le-maximalrealsubfield--3c2929ae6932597fc1ec8c39.md) | 111 | `result-track:3c2929ae6932597fc1ec8c39d5ffe26858854d498aa17b93a2f72e5138edfccf` |
| 13 | `theorem` | [isTotallyReal_iff_le_maximalRealSubfield](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/declarations/istotallyreal-iff-le-maximalrealsubfield--c8eab6522bf77020c157aa26.md) | 118 | `result-track:c8eab6522bf77020c157aa26202831873cee090edb601bab1cbacbb56308d3e3` |
| 14 | `instance` | [isTotallyReal_sup](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/declarations/istotallyreal-sup--8ed7a5c346a24282845eca7a.md) | 123 | `declaration-track:8ed7a5c346a24282845eca7a1ef242fa2f378b0bb9e8518659ef7ba410fe566b` |
| 15 | `instance` | [isTotallyReal_iSup](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/declarations/istotallyreal-isup--30a68088798839e893aeb319.md) | 127 | `declaration-track:30a68088798839e893aeb319fca3834e55b51ab5cd1216dd1094d022c0f41df9` |
| 16 | `class` | [IsTotallyComplex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/declarations/istotallycomplex--6157fc3d8a53c4b01b72d9f5.md) | 146 | `declaration-track:6157fc3d8a53c4b01b72d9f5f2ca75336f2aeb461d45310a5bfa6fc68d61f19a` |
| 17 | `theorem` | [nrRealPlaces_eq_zero_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/declarations/nrrealplaces-eq-zero-iff--0dc91532c675b2dcd0265283.md) | 151 | `result-track:0dc91532c675b2dcd026528324a57b195d76257be42a7bef7197450f6af32448` |
| 18 | `theorem` | [IsTotallyComplex.nrRealPlaces_eq_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/declarations/istotallycomplex-nrrealplaces-eq-zero--5d9e35a977383a4e8bb5dc8f.md) | 158 | `result-track:5d9e35a977383a4e8bb5dc8f819b40ffeba2d2526242ea348917e0407bbb817a` |
| 19 | `theorem` | [IsTotallyComplex.finrank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/TotallyRealComplex/Variant2dfafef3f823133628118096d74d4a05c1db6b52cfa9992ad8b50cd70621a166.lean/declarations/istotallycomplex-finrank--39478a098af83959f7d092e8.md) | 162 | `result-track:39478a098af83959f7d092e8c9befc834ba2b65631c54212c3d3fbeda809e30a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
