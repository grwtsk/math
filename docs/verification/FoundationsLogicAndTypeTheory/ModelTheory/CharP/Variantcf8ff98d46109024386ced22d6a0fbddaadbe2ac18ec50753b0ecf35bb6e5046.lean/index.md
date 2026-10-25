# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.CharP.Variantcf8ff98d46109024386ced22d6a0fbddaadbe2ac18ec50753b0ecf35bb6e5046

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26fcf8157d79417016ca7d9bf610afa6324974a3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantcf8ff98d46109024386ced22d6a0fbddaadbe2ac18ec50753b0ecf35bb6e5046.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantcf8ff98d46109024386ced22d6a0fbddaadbe2ac18ec50753b0ecf35bb6e5046.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantcf8ff98d46109024386ced22d6a0fbddaadbe2ac18ec50753b0ecf35bb6e5046.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26fcf8157d79417016ca7d9bf610afa6324974a3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantcf8ff98d46109024386ced22d6a0fbddaadbe2ac18ec50753b0ecf35bb6e5046.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantcf8ff98d46109024386ced22d6a0fbddaadbe2ac18ec50753b0ecf35bb6e5046.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Algebra.Ring.FreeCommRing` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Algebra.Field.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eqZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantcf8ff98d46109024386ced22d6a0fbddaadbe2ac18ec50753b0ecf35bb6e5046.lean/declarations/eqzero--ff130cd113edd8d30ae01348.md) | 41 | `declaration-track:ff130cd113edd8d30ae01348475843246f2c36e6aaba2b00a3bdd37d74b31e34` |
| 2 | `theorem` | [realize_eqZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantcf8ff98d46109024386ced22d6a0fbddaadbe2ac18ec50753b0ecf35bb6e5046.lean/declarations/realize-eqzero--01b3060e5f99649b80e19f11.md) | 44 | `result-track:01b3060e5f99649b80e19f110bdb941f9f1486f1aa95662be7959236baf1d2f7` |
| 3 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.EqZero.Variantc1eedcf7fe9da412390245d37b8a49ad15cbcaf8d3cd674950773e9ae4e2b0ec.FirstOrder.Language.Theory.fieldOfChar](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantcf8ff98d46109024386ced22d6a0fbddaadbe2ac18ec50753b0ecf35bb6e5046.lean/declarations/root-grwtsk-foundationslogicandtypetheory-modeltheory-eqzero-variantc1ee--8bdd9c8da1fc0b3133c27065.md) | 49 | `declaration-track:8bdd9c8da1fc0b3133c27065a560f5db8f44d264bbafd3bb91fc1766602ecb63` |
| 4 | `instance` | [model_hasChar_of_charP](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantcf8ff98d46109024386ced22d6a0fbddaadbe2ac18ec50753b0ecf35bb6e5046.lean/declarations/model-haschar-of-charp--f30461199b811279035b53d3.md) | 56 | `declaration-track:f30461199b811279035b53d3f18a0981bec114b618b7044f0af04de7378e5ee5` |
| 5 | `theorem` | [charP_iff_model_fieldOfChar](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantcf8ff98d46109024386ced22d6a0fbddaadbe2ac18ec50753b0ecf35bb6e5046.lean/declarations/charp-iff-model-fieldofchar--6d4ca1533efda7add483af20.md) | 69 | `result-track:6d4ca1533efda7add483af2092fe27df4b29dacbe5ac6652c2fbce2c36bbda1a` |
| 6 | `instance` | [model_fieldOfChar_of_charP](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantcf8ff98d46109024386ced22d6a0fbddaadbe2ac18ec50753b0ecf35bb6e5046.lean/declarations/model-fieldofchar-of-charp--b5fb0d58692ec7cb307c5510.md) | 86 | `declaration-track:b5fb0d58692ec7cb307c5510e14615f2e61ae19e36b7b2fc36534cc27126e825` |
| 7 | `theorem` | [charP_of_model_fieldOfChar](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/CharP/Variantcf8ff98d46109024386ced22d6a0fbddaadbe2ac18ec50753b0ecf35bb6e5046.lean/declarations/charp-of-model-fieldofchar--586cfd552c140edc1347b936.md) | 92 | `result-track:586cfd552c140edc1347b936962b3bc449732a6096e4655e3966ea792bbbb6cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
