# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Fibration.Variant1948c8a42fc4e3bb0441ba1f9f7645d23c906bd40bf64949b6f47d6853e9c009

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79a1e7c541cfe4ea4e2ee78486c3adfaa85dc1c3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant1948c8a42fc4e3bb0441ba1f9f7645d23c906bd40bf64949b6f47d6853e9c009.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant1948c8a42fc4e3bb0441ba1f9f7645d23c906bd40bf64949b6f47d6853e9c009.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant1948c8a42fc4e3bb0441ba1f9f7645d23c906bd40bf64949b6f47d6853e9c009.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79a1e7c541cfe4ea4e2ee78486c3adfaa85dc1c3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant1948c8a42fc4e3bb0441ba1f9f7645d23c906bd40bf64949b6f47d6853e9c009.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant1948c8a42fc4e3bb0441ba1f9f7645d23c906bd40bf64949b6f47d6853e9c009.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.UpperLower.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Fibration.isLowerSet_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant1948c8a42fc4e3bb0441ba1f9f7645d23c906bd40bf64949b6f47d6853e9c009.lean/declarations/fibration-islowerset-image--642ef9e77fcd4fb138cacc2a.md) | 26 | `result-track:642ef9e77fcd4fb138cacc2a6fded4fae28ea5bc686df132e22d2b4460311aa7` |
| 2 | `lemma` | [fibration_iff_isLowerSet_image_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant1948c8a42fc4e3bb0441ba1f9f7645d23c906bd40bf64949b6f47d6853e9c009.lean/declarations/fibration-iff-islowerset-image-iic--7109e0feeb3cf56cf0cc88cb.md) | 32 | `result-track:7109e0feeb3cf56cf0cc88cb2f364fc08866b4625973dc66352e167b5a84c9f9` |
| 3 | `lemma` | [fibration_iff_isLowerSet_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant1948c8a42fc4e3bb0441ba1f9f7645d23c906bd40bf64949b6f47d6853e9c009.lean/declarations/fibration-iff-islowerset-image--63117dd468a06d51cca3afd0.md) | 36 | `result-track:63117dd468a06d51cca3afd0f24bfa0dea5c09ddb326d5547d865167106be40a` |
| 4 | `lemma` | [fibration_iff_image_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant1948c8a42fc4e3bb0441ba1f9f7645d23c906bd40bf64949b6f47d6853e9c009.lean/declarations/fibration-iff-image-iic--3b5be9bedbd8b46823ab9373.md) | 41 | `result-track:3b5be9bedbd8b46823ab9373ac75ec02c2bd1efe25624802f2d8de1e840de419` |
| 5 | `lemma` | [Fibration.isUpperSet_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant1948c8a42fc4e3bb0441ba1f9f7645d23c906bd40bf64949b6f47d6853e9c009.lean/declarations/fibration-isupperset-image--d47b0ca295be2879d1463e24.md) | 47 | `result-track:d47b0ca295be2879d1463e248a3419e0affc368e22ca9e035fda738883433cd9` |
| 6 | `lemma` | [fibration_iff_isUpperSet_image_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant1948c8a42fc4e3bb0441ba1f9f7645d23c906bd40bf64949b6f47d6853e9c009.lean/declarations/fibration-iff-isupperset-image-ici--6beb4c5f6c4d7b858f9f189d.md) | 53 | `result-track:6beb4c5f6c4d7b858f9f189db2f9ceb6e80349f364a196a5ccde82acc14bb0fc` |
| 7 | `lemma` | [fibration_iff_isUpperSet_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant1948c8a42fc4e3bb0441ba1f9f7645d23c906bd40bf64949b6f47d6853e9c009.lean/declarations/fibration-iff-isupperset-image--e5d483f4f33ce69860b899c1.md) | 57 | `result-track:e5d483f4f33ce69860b899c1c1ca2121ca5a28b2fee0682f96fa049f5398748e` |
| 8 | `lemma` | [fibration_iff_image_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Fibration/Variant1948c8a42fc4e3bb0441ba1f9f7645d23c906bd40bf64949b6f47d6853e9c009.lean/declarations/fibration-iff-image-ici--244d7414227b2ba10ffc4d83.md) | 61 | `result-track:244d7414227b2ba10ffc4d830d8b67f6b2c049a35cba2f4cb0626150e52eabab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
