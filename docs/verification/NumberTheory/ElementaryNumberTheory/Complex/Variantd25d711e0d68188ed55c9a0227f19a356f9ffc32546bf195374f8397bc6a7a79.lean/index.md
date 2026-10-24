# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Complex.Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c45dfe9713a82e6500b0b4f2a9df82e924006f5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c45dfe9713a82e6500b0b4f2a9df82e924006f5`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.Log` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isPrimitiveRoot_exp_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean/declarations/isprimitiveroot-exp-of-coprime--bb3c67ded577cd27fedbd714.md) | 32 | `result-track:bb3c67ded577cd27fedbd714faad7373a51f5c4e785461410e9ace2f053ae45e` |
| 2 | `theorem` | [isPrimitiveRoot_exp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean/declarations/isprimitiveroot-exp--5a4210c07321d1e47ae1cd02.md) | 52 | `result-track:5a4210c07321d1e47ae1cd02896938f3a17b924a1847805a132daab9b17bb318` |
| 3 | `theorem` | [isPrimitiveRoot_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean/declarations/isprimitiveroot-iff--373cb63d6e7c4150a96b020c.md) | 57 | `result-track:373cb63d6e7c4150a96b020c76613fcdbea4053217439ce5f2261fc62fdffec4` |
| 4 | `theorem` | [mem_rootsOfUnity](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean/declarations/mem-rootsofunity--d96d0f6180a3a2b6eb839dfd.md) | 73 | `result-track:d96d0f6180a3a2b6eb839dfd0ec88281cae60b7982201e770df2446a644ac378` |
| 5 | `theorem` | [card_rootsOfUnity](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean/declarations/card-rootsofunity--25b0fb490284588613b54199.md) | 91 | `result-track:25b0fb490284588613b5419936996591cf2a8505231a265ee06231d9ea686b14` |
| 6 | `theorem` | [card_primitiveRoots](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean/declarations/card-primitiveroots--30300a525b136eb5f3b85ae9.md) | 95 | `result-track:30300a525b136eb5f3b85ae9732904f69cbaeb08fd509523a6c47bda33c23c96` |
| 7 | `theorem` | [IsPrimitiveRoot.norm'_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean/declarations/isprimitiveroot-norm-eq-one--6838024f9ee0583a5fb17bd5.md) | 103 | `result-track:6838024f9ee0583a5fb17bd57b5e76a648fb709e51fd9836c116af8cf1f85eff` |
| 8 | `theorem` | [IsPrimitiveRoot.nnnorm_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean/declarations/isprimitiveroot-nnnorm-eq-one--4708cf51215710e69afa57ef.md) | 108 | `result-track:4708cf51215710e69afa57efaedaa003c9787ae40d88a9692872f32f8b98cf18` |
| 9 | `theorem` | [IsPrimitiveRoot.arg_ext](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean/declarations/isprimitiveroot-arg-ext--472a6f12fe6906fbb2c0139c.md) | 113 | `result-track:472a6f12fe6906fbb2c0139ccb4220991bc8bf90a0de4b6469d5d577a125465e` |
| 10 | `theorem` | [IsPrimitiveRoot.arg_eq_zero_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean/declarations/isprimitiveroot-arg-eq-zero-iff--e731b5c0895ba74d5f24a827.md) | 118 | `result-track:e731b5c0895ba74d5f24a8273d66734d1fb489e1fdd9dd88c01816e08808b4a3` |
| 11 | `theorem` | [IsPrimitiveRoot.arg_eq_pi_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean/declarations/isprimitiveroot-arg-eq-pi-iff--7dea47c620b8291ee5ec8000.md) | 124 | `result-track:7dea47c620b8291ee5ec80004b2fb89d3ff51417ba2353a0a677d6b61fcc2487` |
| 12 | `theorem` | [IsPrimitiveRoot.arg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variantd25d711e0d68188ed55c9a0227f19a356f9ffc32546bf195374f8397bc6a7a79.lean/declarations/isprimitiveroot-arg--a3df0b975773ccd28671f440.md) | 132 | `result-track:a3df0b975773ccd28671f44022d3de7fd62fc10a7c294f04f0bcf4c6353165b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
