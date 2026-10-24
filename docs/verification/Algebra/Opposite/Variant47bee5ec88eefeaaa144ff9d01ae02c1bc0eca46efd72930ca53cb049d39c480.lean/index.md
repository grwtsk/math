# Verification target: GRWTSK.Algebra.Opposite.Variant47bee5ec88eefeaaa144ff9d01ae02c1bc0eca46efd72930ca53cb049d39c480

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aefbe65c3f96d18c29fdb8e29f72331a0409b878",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Opposite/Variant47bee5ec88eefeaaa144ff9d01ae02c1bc0eca46efd72930ca53cb049d39c480.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Opposite/Variant47bee5ec88eefeaaa144ff9d01ae02c1bc0eca46efd72930ca53cb049d39c480.lean/index.md) · [Full source](../../../../mathematics/Algebra/Opposite/Variant47bee5ec88eefeaaa144ff9d01ae02c1bc0eca46efd72930ca53cb049d39c480.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aefbe65c3f96d18c29fdb8e29f72331a0409b878`.

Source path: `GRWTSK/Algebra/Opposite/Variant47bee5ec88eefeaaa144ff9d01ae02c1bc0eca46efd72930ca53cb049d39c480.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Opposite/Variant47bee5ec88eefeaaa144ff9d01ae02c1bc0eca46efd72930ca53cb049d39c480.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.TensorProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Opposite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [opAlgEquiv](../../../../mathematics/Algebra/Opposite/Variant47bee5ec88eefeaaa144ff9d01ae02c1bc0eca46efd72930ca53cb049d39c480.lean/declarations/opalgequiv--5d242a3750d2669f2c7dec0b.md) | 30 | `declaration-track:5d242a3750d2669f2c7dec0baa4ef010de9b615e073d5169fce3b93623a51381` |
| 2 | `theorem` | [opAlgEquiv_apply](../../../../mathematics/Algebra/Opposite/Variant47bee5ec88eefeaaa144ff9d01ae02c1bc0eca46efd72930ca53cb049d39c480.lean/declarations/opalgequiv-apply--f1caba0292c069c31ea5de1c.md) | 43 | `result-track:f1caba0292c069c31ea5de1ce171ecffa37b400294b8a5ac256bed7da2daf1f5` |
| 3 | `theorem` | [opAlgEquiv_symm_apply](../../../../mathematics/Algebra/Opposite/Variant47bee5ec88eefeaaa144ff9d01ae02c1bc0eca46efd72930ca53cb049d39c480.lean/declarations/opalgequiv-symm-apply--8e4086a0688559f92b171858.md) | 49 | `result-track:8e4086a0688559f92b1718589944f4628f24665d32d9ce0b8c94142323a798f9` |
| 4 | `theorem` | [opAlgEquiv_tmul](../../../../mathematics/Algebra/Opposite/Variant47bee5ec88eefeaaa144ff9d01ae02c1bc0eca46efd72930ca53cb049d39c480.lean/declarations/opalgequiv-tmul--9afbee17e9ea2ef8fce777af.md) | 55 | `result-track:9afbee17e9ea2ef8fce777afdf03584d19d72ffc9f77ab3eb37773b1b5c57800` |
| 5 | `theorem` | [opAlgEquiv_symm_tmul](../../../../mathematics/Algebra/Opposite/Variant47bee5ec88eefeaaa144ff9d01ae02c1bc0eca46efd72930ca53cb049d39c480.lean/declarations/opalgequiv-symm-tmul--c60614a7275cce405a5c015f.md) | 60 | `result-track:c60614a7275cce405a5c015fd76086f165d58de668bdde39e47baa1a23fd9d10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
