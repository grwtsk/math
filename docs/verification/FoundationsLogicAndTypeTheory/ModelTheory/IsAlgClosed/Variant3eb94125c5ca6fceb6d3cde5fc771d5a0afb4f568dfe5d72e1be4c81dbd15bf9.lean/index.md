# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.IsAlgClosed.Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f9e5c9d76f9a8c2ae9c8eef9eed291cd6b1889a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f9e5c9d76f9a8c2ae9c8eef9eed291cd6b1889a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.PrimeFin` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Classification` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Algebra.Field.CharP` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Satisfiability` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [genericMonicPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/declarations/genericmonicpoly--4fa0ddc0a6e3b5f0cef9e2f1.md) | 66 | `declaration-track:4fa0ddc0a6e3b5f0cef9e2f173e798b137ecafc126928cb2146c6802d141ed3f` |
| 2 | `theorem` | [lift_genericMonicPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/declarations/lift-genericmonicpoly--e06803fdb5551d57e63ec8aa.md) | 69 | `result-track:e06803fdb5551d57e63ec8aab4161421898da0d40430a3d8cbc79a7bf0c94ae5` |
| 3 | `def` | [genericMonicPolyHasRoot](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/declarations/genericmonicpolyhasroot--c22c84ef60bd340cd62ef72c.md) | 79 | `declaration-track:c22c84ef60bd340cd62ef72c69205182988bd1e9923a1fdbe229b4669822237a` |
| 4 | `theorem` | [realize_genericMonicPolyHasRoot](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/declarations/realize-genericmonicpolyhasroot--cd6331a8e4351c6cdf6455a0.md) | 82 | `result-track:cd6331a8e4351c6cdf6455a092230cb6875bdcf3a24d2eae664eaf2904d8d733` |
| 5 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.GenericMonicPoly.Varianta443c2ae37d5b7874e2b791b97da12ca0b2416c6a1bf1c3523cee8e5f3bea6e9.FirstOrder.Language.Theory.ACF](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/declarations/root-grwtsk-foundationslogicandtypetheory-modeltheory-genericmonicpoly-v--b8fb2eff8ddb4ea912f404d3.md) | 91 | `declaration-track:b8fb2eff8ddb4ea912f404d3317b46c81253833a61fd52f205d43c61ee22f3dd` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/declarations/instance--9c9d640eec24d10e00fde044.md) | 94 | `declaration-track:9c9d640eec24d10e00fde0444c559d6db67a0464dbff6da2a295ec058c1b8907` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/declarations/instance--d15a4f0f1d656fc0db4aa058.md) | 98 | `declaration-track:d15a4f0f1d656fc0db4aa05818da538c9709e27410b9cc44fb7b2dcd1fa41b04` |
| 8 | `theorem` | [modelField_of_modelACF](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/declarations/modelfield-of-modelacf--8dc3c0e4494db8ef029d55ea.md) | 109 | `result-track:8dc3c0e4494db8ef029d55ea6234a6b3b35ac23ca8f42142cb726c64e46b7a52` |
| 9 | `def` | [fieldOfModelACF](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/declarations/fieldofmodelacf--49322cbd8e6dbaffb8c5558a.md) | 117 | `declaration-track:49322cbd8e6dbaffb8c5558a6890f750a98a4fc65e67e3b01bd80af2eae6b0c0` |
| 10 | `theorem` | [isAlgClosed_of_model_ACF](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/declarations/isalgclosed-of-model-acf--587b44181664474a52775498.md) | 123 | `result-track:587b44181664474a5277549823fd1124b00591566454257846b9cc9bc07a2723` |
| 11 | `theorem` | [ACF_isSatisfiable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/declarations/acf-issatisfiable--100803d1edd7a458438dfd4a.md) | 137 | `result-track:100803d1edd7a458438dfd4a0f02652e927943f2215eaa45d7c7e76d1721ed68` |
| 12 | `theorem` | [ACF_categorical](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/declarations/acf-categorical--bff2987e6d622aeb3955788f.md) | 158 | `result-track:bff2987e6d622aeb3955788fc42fa467498a1572d481301ebe8e518721597f08` |
| 13 | `theorem` | [ACF_isComplete](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/declarations/acf-iscomplete--fae00091c5370831d379a31c.md) | 178 | `result-track:fae00091c5370831d379a31cb864f2e1eed8f7640d7916ae221737632e6688dd` |
| 14 | `theorem` | [finite_ACF_prime_not_realize_of_ACF_zero_realize](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/declarations/finite-acf-prime-not-realize-of-acf-zero-realize--431984ad0f766ec6257ca0eb.md) | 193 | `result-track:431984ad0f766ec6257ca0eba02c17362ebe1e13fe1ff1b385722ab8c7ab289b` |
| 15 | `theorem` | [ACF_zero_realize_iff_infinite_ACF_prime_realize](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/declarations/acf-zero-realize-iff-infinite-acf-prime-realize--d17597b1bcef50838bc951f9.md) | 235 | `result-track:d17597b1bcef50838bc951f918cd481a248bbc14885e4b5d79e871df55169f9b` |
| 16 | `theorem` | [ACF_zero_realize_iff_finite_ACF_prime_not_realize](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant3eb94125c5ca6fceb6d3cde5fc771d5a0afb4f568dfe5d72e1be4c81dbd15bf9.lean/declarations/acf-zero-realize-iff-finite-acf-prime-not-realize--b530f118bf1eb75a32c97c11.md) | 248 | `result-track:b530f118bf1eb75a32c97c11b29737f7cf0e63761523bc7822bbab661308505f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
