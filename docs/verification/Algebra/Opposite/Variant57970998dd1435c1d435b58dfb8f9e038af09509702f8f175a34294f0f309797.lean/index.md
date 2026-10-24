# Verification target: GRWTSK.Algebra.Opposite.Variant57970998dd1435c1d435b58dfb8f9e038af09509702f8f175a34294f0f309797

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54f687dcbd44f2353c0a94cfff3e7a04c5041cf9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Opposite/Variant57970998dd1435c1d435b58dfb8f9e038af09509702f8f175a34294f0f309797.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Opposite/Variant57970998dd1435c1d435b58dfb8f9e038af09509702f8f175a34294f0f309797.lean/index.md) · [Full source](../../../../mathematics/Algebra/Opposite/Variant57970998dd1435c1d435b58dfb8f9e038af09509702f8f175a34294f0f309797.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54f687dcbd44f2353c0a94cfff3e7a04c5041cf9`.

Source path: `GRWTSK/Algebra/Opposite/Variant57970998dd1435c1d435b58dfb8f9e038af09509702f8f175a34294f0f309797.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Opposite/Variant57970998dd1435c1d435b58dfb8f9e038af09509702f8f175a34294f0f309797.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.TensorProduct.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Opposite` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [opAlgEquiv](../../../../mathematics/Algebra/Opposite/Variant57970998dd1435c1d435b58dfb8f9e038af09509702f8f175a34294f0f309797.lean/declarations/opalgequiv--3a0ff938de5b5bdafd4c55a7.md) | 39 | `declaration-track:3a0ff938de5b5bdafd4c55a70ae49fbe816747dbaea5b82bd94799743f6c48d8` |
| 2 | `theorem` | [opAlgEquiv_apply](../../../../mathematics/Algebra/Opposite/Variant57970998dd1435c1d435b58dfb8f9e038af09509702f8f175a34294f0f309797.lean/declarations/opalgequiv-apply--5777a99e6e2df079081cf9f9.md) | 52 | `result-track:5777a99e6e2df079081cf9f93aae40b2741a4bc3e9b0ffb1fa6eb4f016164452` |
| 3 | `theorem` | [opAlgEquiv_symm_apply](../../../../mathematics/Algebra/Opposite/Variant57970998dd1435c1d435b58dfb8f9e038af09509702f8f175a34294f0f309797.lean/declarations/opalgequiv-symm-apply--79b2b3c2ed4747c21f1d0879.md) | 58 | `result-track:79b2b3c2ed4747c21f1d0879bda34262d6475acc48c37e8762b57a1e0249bf51` |
| 4 | `theorem` | [opAlgEquiv_tmul](../../../../mathematics/Algebra/Opposite/Variant57970998dd1435c1d435b58dfb8f9e038af09509702f8f175a34294f0f309797.lean/declarations/opalgequiv-tmul--43439e36ef85e6ec1b2337cf.md) | 64 | `result-track:43439e36ef85e6ec1b2337cfe7abc302576a0fff24838fe1de483d6a47918ce0` |
| 5 | `theorem` | [opAlgEquiv_symm_tmul](../../../../mathematics/Algebra/Opposite/Variant57970998dd1435c1d435b58dfb8f9e038af09509702f8f175a34294f0f309797.lean/declarations/opalgequiv-symm-tmul--a8d79d8d7cc6c0e095b6200a.md) | 69 | `result-track:a8d79d8d7cc6c0e095b6200a6bf516ed6d02adb8f22384bc15e8ec3e20f543f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
