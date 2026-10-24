# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CompatibleSheafification.Variant90ad1559b13602556a9215837d371229a6d1b0bcd81a6a62a282d4d64814b9ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5ed6cb5abfc06ead422206adc69341a9ecdd6b6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant90ad1559b13602556a9215837d371229a6d1b0bcd81a6a62a282d4d64814b9ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant90ad1559b13602556a9215837d371229a6d1b0bcd81a6a62a282d4d64814b9ba.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant90ad1559b13602556a9215837d371229a6d1b0bcd81a6a62a282d4d64814b9ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5ed6cb5abfc06ead422206adc69341a9ecdd6b6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant90ad1559b13602556a9215837d371229a6d1b0bcd81a6a62a282d4d64814b9ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant90ad1559b13602556a9215837d371229a6d1b0bcd81a6a62a282d4d64814b9ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.CompatiblePlus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sheafifyCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant90ad1559b13602556a9215837d371229a6d1b0bcd81a6a62a282d4d64814b9ba.lean/declarations/sheafifycompiso--70bc54f79788d24b0069e9b2.md) | 61 | `declaration-track:70bc54f79788d24b0069e9b2c2950b6f70aa9dd4867b0d0c020455dee42412bd` |
| 2 | `def` | [sheafificationWhiskerLeftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant90ad1559b13602556a9215837d371229a6d1b0bcd81a6a62a282d4d64814b9ba.lean/declarations/sheafificationwhiskerleftiso--fff641f5c1a8519d2f854fdc.md) | 67 | `declaration-track:fff641f5c1a8519d2f854fdc6f8348fee64fab03c9f8fce8d736f7c1c07d4240` |
| 3 | `theorem` | [sheafificationWhiskerLeftIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant90ad1559b13602556a9215837d371229a6d1b0bcd81a6a62a282d4d64814b9ba.lean/declarations/sheafificationwhiskerleftiso-hom-app--7cb5214944c106a24cb2c3fc.md) | 79 | `result-track:7cb5214944c106a24cb2c3fcc797249faf001a7ddd2f834b635aad06baeb8246` |
| 4 | `theorem` | [sheafificationWhiskerLeftIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant90ad1559b13602556a9215837d371229a6d1b0bcd81a6a62a282d4d64814b9ba.lean/declarations/sheafificationwhiskerleftiso-inv-app--ae7aed8feae7877af8048a26.md) | 89 | `result-track:ae7aed8feae7877af8048a26c05480733f5fa2710a35703922f4b74ec39b4266` |
| 5 | `def` | [sheafificationWhiskerRightIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant90ad1559b13602556a9215837d371229a6d1b0bcd81a6a62a282d4d64814b9ba.lean/declarations/sheafificationwhiskerrightiso--fc0f28d367907f5d39308363.md) | 100 | `declaration-track:fc0f28d367907f5d39308363cf5ba561c690e777aeff39dce395fec019855f8e` |
| 6 | `theorem` | [sheafificationWhiskerRightIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant90ad1559b13602556a9215837d371229a6d1b0bcd81a6a62a282d4d64814b9ba.lean/declarations/sheafificationwhiskerrightiso-hom-app--fff08adf76297868793004f9.md) | 111 | `result-track:fff08adf76297868793004f9330bafae0af941c1d1e8016d79ab26b311acc1f7` |
| 7 | `theorem` | [sheafificationWhiskerRightIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant90ad1559b13602556a9215837d371229a6d1b0bcd81a6a62a282d4d64814b9ba.lean/declarations/sheafificationwhiskerrightiso-inv-app--9b68936ef84c9567c0b2fc54.md) | 119 | `result-track:9b68936ef84c9567c0b2fc5495ec07941bbfe80f24e122bcb42596d92e428b77` |
| 8 | `theorem` | [whiskerRight_toSheafify_sheafifyCompIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant90ad1559b13602556a9215837d371229a6d1b0bcd81a6a62a282d4d64814b9ba.lean/declarations/whiskerright-tosheafify-sheafifycompiso-hom--8aa32a2452054343610bda68.md) | 127 | `result-track:8aa32a2452054343610bda6874bc801f3761aef9f8aac8ccbc12b4e51c3a5f18` |
| 9 | `theorem` | [toSheafify_comp_sheafifyCompIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant90ad1559b13602556a9215837d371229a6d1b0bcd81a6a62a282d4d64814b9ba.lean/declarations/tosheafify-comp-sheafifycompiso-inv--2b77c77bb8a89fa924e6f912.md) | 138 | `result-track:2b77c77bb8a89fa924e6f912ee7ba8d950019c56b40f143a7822c9febc780597` |
| 10 | `theorem` | [sheafifyCompIso_inv_eq_sheafifyLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant90ad1559b13602556a9215837d371229a6d1b0bcd81a6a62a282d4d64814b9ba.lean/declarations/sheafifycompiso-inv-eq-sheafifylift--caaaab20d60ebbe50071c898.md) | 150 | `result-track:caaaab20d60ebbe50071c898dc074b4ea45d4242f79ea54d5f7ff05648d02062` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
