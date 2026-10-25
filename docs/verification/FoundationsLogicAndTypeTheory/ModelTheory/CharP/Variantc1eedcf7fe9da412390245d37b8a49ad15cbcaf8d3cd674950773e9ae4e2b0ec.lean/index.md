# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.CharP.Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "021b36838793532ba41f92974cf89003d694a47b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `021b36838793532ba41f92974cf89003d694a47b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Algebra.Ring.FreeCommRing` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Algebra.Field.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eqZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec.lean/declarations/eqzero--146233e3091683dfe1d9a847.md) | 33 | `declaration-track:146233e3091683dfe1d9a847b08db7ec75dd690638f6d05b9707c60acd468ab2` |
| 2 | `theorem` | [realize_eqZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec.lean/declarations/realize-eqzero--9aa2ac34ac2c1afd55425de4.md) | 36 | `result-track:9aa2ac34ac2c1afd55425de4be9945ea3ca256181afe69b6110323483a1e899d` |
| 3 | `def` | [_root_.FirstOrder.Language.Theory.fieldOfChar](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec.lean/declarations/root-firstorder-language-theory-fieldofchar--077a518acde02d687633fd63.md) | 41 | `declaration-track:077a518acde02d687633fd632674a78cb2bd4ce841c78f40123e9f2f6d94b2f4` |
| 4 | `instance` | [model_hasChar_of_charP](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec.lean/declarations/model-haschar-of-charp--b9a92f54253e53318bf494c0.md) | 48 | `declaration-track:b9a92f54253e53318bf494c07a5c68887da52d01820015586c8cb7fc4a5cc4a4` |
| 5 | `theorem` | [charP_iff_model_fieldOfChar](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec.lean/declarations/charp-iff-model-fieldofchar--33c3c96242c60ba175c76afe.md) | 61 | `result-track:33c3c96242c60ba175c76afed7c176e1a13f4798e5b53ad7edd51ccb252c45e9` |
| 6 | `instance` | [model_fieldOfChar_of_charP](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec.lean/declarations/model-fieldofchar-of-charp--3d1738fcc8f09768fc8244a6.md) | 78 | `declaration-track:3d1738fcc8f09768fc8244a6df682b3fd57a15c1ad364af34156468dae6f0369` |
| 7 | `theorem` | [charP_of_model_fieldOfChar](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec.lean/declarations/charp-of-model-fieldofchar--5d700b1825a6eee8378f2537.md) | 84 | `result-track:5d700b1825a6eee8378f2537cfb2ba84c10f714727a9da32f77f729df56a866d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
