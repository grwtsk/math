# Verification target: GRWTSK.Algebra.GroupTheory.EckmannHilton.Variante4e3b85190408b335b8a94bf1f7657edbdbf8b110a2ad8c0db72ba4435f0866d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b28693c82b5900bf70f349ddaa98b1cd51c04f86",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/EckmannHilton/Variante4e3b85190408b335b8a94bf1f7657edbdbf8b110a2ad8c0db72ba4435f0866d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variante4e3b85190408b335b8a94bf1f7657edbdbf8b110a2ad8c0db72ba4435f0866d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variante4e3b85190408b335b8a94bf1f7657edbdbf8b110a2ad8c0db72ba4435f0866d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b28693c82b5900bf70f349ddaa98b1cd51c04f86`.

Source path: `GRWTSK/Algebra/GroupTheory/EckmannHilton/Variante4e3b85190408b335b8a94bf1f7657edbdbf8b110a2ad8c0db72ba4435f0866d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/EckmannHilton/Variante4e3b85190408b335b8a94bf1f7657edbdbf8b110a2ad8c0db72ba4435f0866d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsUnital](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variante4e3b85190408b335b8a94bf1f7657edbdbf8b110a2ad8c0db72ba4435f0866d.lean/declarations/isunital--50588b2af02577bd30017ffc.md) | 37 | `declaration-track:50588b2af02577bd30017ffce4f65a69dcdc80bd0a066172411b97ddd3f3d50c` |
| 2 | `theorem` | [MulOneClass.isUnital](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variante4e3b85190408b335b8a94bf1f7657edbdbf8b110a2ad8c0db72ba4435f0866d.lean/declarations/muloneclass-isunital--b1d17b48693d83a94f48e7ed.md) | 41 | `result-track:b1d17b48693d83a94f48e7ede41b1ed406437867116b1a804ac6552a0087f521` |
| 3 | `theorem` | [one](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variante4e3b85190408b335b8a94bf1f7657edbdbf8b110a2ad8c0db72ba4435f0866d.lean/declarations/one--8e4ac06d5f3fc1b3459e3391.md) | 57 | `result-track:8e4ac06d5f3fc1b3459e33917d6ef8017e05f3124f3cf5e08e15d92e37b94c04` |
| 4 | `theorem` | [mul](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variante4e3b85190408b335b8a94bf1f7657edbdbf8b110a2ad8c0db72ba4435f0866d.lean/declarations/mul--f4562667f44b1bbffac0b9c0.md) | 65 | `result-track:f4562667f44b1bbffac0b9c06aa4f8e90c20045f56bc0d16887eefbb99f939fb` |
| 5 | `theorem` | [mul_comm](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variante4e3b85190408b335b8a94bf1f7657edbdbf8b110a2ad8c0db72ba4435f0866d.lean/declarations/mul-comm--66d35dc8fcf7cbbbc0cd7000.md) | 77 | `result-track:66d35dc8fcf7cbbbc0cd700099986df3a11ba0e538cd204797dc1c2c132e6663` |
| 6 | `theorem` | [mul_assoc](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variante4e3b85190408b335b8a94bf1f7657edbdbf8b110a2ad8c0db72ba4435f0866d.lean/declarations/mul-assoc--f1d718ccc18fecbd1e98ee06.md) | 85 | `result-track:f1d718ccc18fecbd1e98ee06ca9bffacce888a80438fc4795ae2efc1baadbfe4` |
| 7 | `def` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variante4e3b85190408b335b8a94bf1f7657edbdbf8b110a2ad8c0db72ba4435f0866d.lean/declarations/commmonoid--330340f4a1292fd867c7672a.md) | 94 | `declaration-track:330340f4a1292fd867c7672ab7989a00c99f3de5414cf55375c2e5a225cad51e` |
| 8 | `def` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variante4e3b85190408b335b8a94bf1f7657edbdbf8b110a2ad8c0db72ba4435f0866d.lean/declarations/commgroup--9cf536b03db209f187aaf6d1.md) | 107 | `declaration-track:9cf536b03db209f187aaf6d1a48a7d7b2b9e878180c33d9ec046016d4b5907d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
