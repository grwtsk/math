# Verification target: GRWTSK.Topology.AlgebraicTopology.CategoryWithFibrations.Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41aeb3f4bf3efc1049317218d9fb4b3d82addd5c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41aeb3f4bf3efc1049317218d9fb4b3d82addd5c`.

Source path: `GRWTSK/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.ModelCategory.CategoryWithCofibrations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.Boundary` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.Horn` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.LiftingProperty` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [I](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean/declarations/i--300d3c7131247d5b641ec8ae.md) | 42 | `declaration-track:300d3c7131247d5b641ec8ae636da7d140f78ee436f7bbc11ed9b72b6b531e97` |
| 2 | `lemma` | [boundary_ι_mem_I](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean/declarations/boundary-mem-i--a753c51aedb02c7f725a529e.md) | 45 | `result-track:a753c51aedb02c7f725a529e2ce8a84b8ac85b92a1842998995d9cf87a32d320` |
| 3 | `def` | [J](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean/declarations/j--ae032532d764147ca50d2208.md) | 50 | `declaration-track:ae032532d764147ca50d2208176ff787971531c3bbca41494eac223a294351e5` |
| 4 | `lemma` | [horn_ι_mem_J](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean/declarations/horn-mem-j--d5af45173524a4be79985a32.md) | 53 | `result-track:d5af45173524a4be79985a321a22553177f0a3a69ef12012511781e5a155a411` |
| 5 | `lemma` | [I_le_monomorphisms](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean/declarations/i-le-monomorphisms--aa5097f679eb6f0ee7acd8ea.md) | 58 | `result-track:aa5097f679eb6f0ee7acd8ea19fb1dff5124862650a9182bfb59e002956f953c` |
| 6 | `lemma` | [J_le_monomorphisms](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean/declarations/j-le-monomorphisms--510a1413378871271742decf.md) | 62 | `result-track:510a1413378871271742decf3b3b822780a121fc93cc60abad7d71c29622d30d` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean/declarations/instance--de547bcb4b45aa0d9e79a523.md) | 70 | `declaration-track:de547bcb4b45aa0d9e79a523f4d0a9caf42ee5b645c4cda1aaba56d961282071` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean/declarations/instance--341f79d7018ae1970ba52c68.md) | 76 | `declaration-track:341f79d7018ae1970ba52c68f7a7cad017ef746688736e65be7e767271774b46` |
| 9 | `lemma` | [cofibrations_eq](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean/declarations/cofibrations-eq--8bc8bac4190ee4168d5b66ef.md) | 79 | `result-track:8bc8bac4190ee4168d5b66ef4e0425c5bb07a69937945641861b2c433ad37ee9` |
| 10 | `lemma` | [fibrations_eq](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean/declarations/fibrations-eq--c8d6c7aec2c91b3eedbeb347.md) | 81 | `result-track:c8d6c7aec2c91b3eedbeb3478a8f294db9b3ee5463b825e847acd344f143c777` |
| 11 | `lemma` | [cofibration_iff](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean/declarations/cofibration-iff--5a321f40f0b4e733ad3dee39.md) | 87 | `result-track:5a321f40f0b4e733ad3dee390ee4e45fe53caef47cecdf9cb746fe99695decb5` |
| 12 | `lemma` | [fibration_iff](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean/declarations/fibration-iff--60067ec069ffdb406eafdfad.md) | 91 | `result-track:60067ec069ffdb406eafdfad95fa8c34cfa2040ab9c326b9731bc1662e6e555d` |
| 13 | `instance` | [mono_of_cofibration](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean/declarations/mono-of-cofibration--cf5ad8135daef135d40a25d9.md) | 95 | `declaration-track:cf5ad8135daef135d40a25d98966b6c104dc2f7ebeb9ecc56608820c51a26ca6` |
| 14 | `lemma` | [cofibration_of_mono](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean/declarations/cofibration-of-mono--90c4717d4483f0f96ba3eb89.md) | 97 | `result-track:90c4717d4483f0f96ba3eb89ab6f6fc604ac81ceddd6ada9a4844641dac47b67` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/CategoryWithFibrations/Variant2fb577db0b82ecad7e694c5363c413e6176e64aad88e72f7f2dabc6b9dbb71a5.lean/declarations/instance--e162eda11b8216ba1c3ad8cb.md) | 99 | `declaration-track:e162eda11b8216ba1c3ad8cb2d0bc9f3aab9a5ce8390f7b913a629e1a55a42e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
