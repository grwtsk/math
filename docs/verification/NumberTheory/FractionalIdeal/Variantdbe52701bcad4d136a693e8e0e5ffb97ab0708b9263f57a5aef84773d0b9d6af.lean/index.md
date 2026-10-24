# Verification target: GRWTSK.NumberTheory.FractionalIdeal.Variantdbe52701bcad4d136a693e8e0e5ffb97ab0708b9263f57a5aef84773d0b9d6af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1444de4b7e9037cd42c7072866dfceb0eade66a0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FractionalIdeal/Variantdbe52701bcad4d136a693e8e0e5ffb97ab0708b9263f57a5aef84773d0b9d6af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FractionalIdeal/Variantdbe52701bcad4d136a693e8e0e5ffb97ab0708b9263f57a5aef84773d0b9d6af.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FractionalIdeal/Variantdbe52701bcad4d136a693e8e0e5ffb97ab0708b9263f57a5aef84773d0b9d6af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1444de4b7e9037cd42c7072866dfceb0eade66a0`.

Source path: `GRWTSK/NumberTheory/FractionalIdeal/Variantdbe52701bcad4d136a693e8e0e5ffb97ab0708b9263f57a5aef84773d0b9d6af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FractionalIdeal/Variantdbe52701bcad4d136a693e8e0e5ffb97ab0708b9263f57a5aef84773d0b9d6af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FractionalIdeal.Norm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FractionalIdeal.Operations` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/FractionalIdeal/Variantdbe52701bcad4d136a693e8e0e5ffb97ab0708b9263f57a5aef84773d0b9d6af.lean/declarations/instance--112d287829f427fc8adcb190.md) | 38 | `declaration-track:112d287829f427fc8adcb190745ed8567d196fbfade024aa1b9cd15b783d3488` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/FractionalIdeal/Variantdbe52701bcad4d136a693e8e0e5ffb97ab0708b9263f57a5aef84773d0b9d6af.lean/declarations/instance--0027eaaf3397ea6c863de2a4.md) | 42 | `declaration-track:0027eaaf3397ea6c863de2a4ebe1c100090011819e7a866bc6147729bd036a72` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/FractionalIdeal/Variantdbe52701bcad4d136a693e8e0e5ffb97ab0708b9263f57a5aef84773d0b9d6af.lean/declarations/instance--73ce996dfe9d5db8bdd4d508.md) | 47 | `declaration-track:73ce996dfe9d5db8bdd4d508666384c89fde610fc0ce443bf3ea5676ac9a68e9` |
| 4 | `def` | [fractionalIdealBasis](../../../../mathematics/NumberTheory/FractionalIdeal/Variantdbe52701bcad4d136a693e8e0e5ffb97ab0708b9263f57a5aef84773d0b9d6af.lean/declarations/fractionalidealbasis--e5c673aeb89a9dc50ef76d4a.md) | 73 | `declaration-track:e5c673aeb89a9dc50ef76d4aedd6e6b4af16ef2524d34ecaa3535087a49814cc` |
| 5 | `def` | [basisOfFractionalIdeal](../../../../mathematics/NumberTheory/FractionalIdeal/Variantdbe52701bcad4d136a693e8e0e5ffb97ab0708b9263f57a5aef84773d0b9d6af.lean/declarations/basisoffractionalideal--25381aa7ae0667ebcb81c384.md) | 77 | `declaration-track:25381aa7ae0667ebcb81c384aa612c0f01e26994ba5f922b0ae48b917ce9037a` |
| 6 | `theorem` | [basisOfFractionalIdeal_apply](../../../../mathematics/NumberTheory/FractionalIdeal/Variantdbe52701bcad4d136a693e8e0e5ffb97ab0708b9263f57a5aef84773d0b9d6af.lean/declarations/basisoffractionalideal-apply--b0faabc93d407a2a1978eed5.md) | 82 | `result-track:b0faabc93d407a2a1978eed5ae1591adb9756b9792b2ac84c94eb5da2a5b241e` |
| 7 | `theorem` | [mem_span_basisOfFractionalIdeal](../../../../mathematics/NumberTheory/FractionalIdeal/Variantdbe52701bcad4d136a693e8e0e5ffb97ab0708b9263f57a5aef84773d0b9d6af.lean/declarations/mem-span-basisoffractionalideal--39305dc3c5d9eafd2bdd1159.md) | 87 | `result-track:39305dc3c5d9eafd2bdd11591e5cfdd69c9595ed1242a4e27aa58eeac66b05da` |
| 8 | `theorem` | [fractionalIdeal_rank](../../../../mathematics/NumberTheory/FractionalIdeal/Variantdbe52701bcad4d136a693e8e0e5ffb97ab0708b9263f57a5aef84773d0b9d6af.lean/declarations/fractionalideal-rank--47c5e61c481f3d57c1a790e2.md) | 93 | `result-track:47c5e61c481f3d57c1a790e28b4e83c12483179bc7a18c8c1d4157f5ce38c901` |
| 9 | `theorem` | [det_basisOfFractionalIdeal_eq_absNorm](../../../../mathematics/NumberTheory/FractionalIdeal/Variantdbe52701bcad4d136a693e8e0e5ffb97ab0708b9263f57a5aef84773d0b9d6af.lean/declarations/det-basisoffractionalideal-eq-absnorm--8da0ca618325456918343487.md) | 106 | `result-track:8da0ca6183254569183434876c352d586e886145c64435ffb061f3ee6d66411c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
