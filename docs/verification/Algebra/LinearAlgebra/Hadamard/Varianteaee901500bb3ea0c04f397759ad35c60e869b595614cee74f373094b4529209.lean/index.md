# Verification target: GRWTSK.Algebra.LinearAlgebra.Hadamard.Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c870679cf91ca1ef0f8474a05f29675802513df0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c870679cf91ca1ef0f8474a05f29675802513df0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hadamard](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/declarations/hadamard--c54d95c02c30874cdb6e15a2.md) | 48 | `declaration-track:c54d95c02c30874cdb6e15a234aa155ed1f3a845452bcfc37852fef07652b1b1` |
| 2 | `theorem` | [hadamard_apply](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/declarations/hadamard-apply--ab184511734029a9816a736e.md) | 53 | `result-track:ab184511734029a9816a736e0713842b199b777eb50ff4884a5ed78c782fa411` |
| 3 | `theorem` | [hadamard_comm](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/declarations/hadamard-comm--443c66187aec0540061d1777.md) | 64 | `result-track:443c66187aec0540061d1777ae3ab2a5a3b652b6d85e134dda3ff0e6a14b6369` |
| 4 | `theorem` | [hadamard_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/declarations/hadamard-assoc--27b8f0e4e2d10287e7f58507.md) | 68 | `result-track:27b8f0e4e2d10287e7f5850728ad75760b56cc764e49ef0cec361cad2f6f33ca` |
| 5 | `theorem` | [hadamard_add](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/declarations/hadamard-add--ecac5b77e0fd941b17a567c8.md) | 72 | `result-track:ecac5b77e0fd941b17a567c8c7733e2357d0606287e6c3da0f35e6d3aee60386` |
| 6 | `theorem` | [add_hadamard](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/declarations/add-hadamard--f05749d70503f36406aa14c4.md) | 75 | `result-track:f05749d70503f36406aa14c4eb6e7d7b92a2db790f22af53dbc95da780597caf` |
| 7 | `theorem` | [smul_hadamard](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/declarations/smul-hadamard--a53b775c05b99894080b6ed4.md) | 82 | `result-track:a53b775c05b99894080b6ed45eb76620ca8f01ddd20d76700f6ca3ffdc356e72` |
| 8 | `theorem` | [hadamard_smul](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/declarations/hadamard-smul--4df6c49a5630c154df9945f7.md) | 86 | `result-track:4df6c49a5630c154df9945f76ffac60be9abed2cc36effdf3e84082fc5882dbf` |
| 9 | `theorem` | [hadamard_zero](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/declarations/hadamard-zero--6344028ea36dc44cfc301929.md) | 96 | `result-track:6344028ea36dc44cfc3019299b298544704255dbadad45ae8fa689123f31415c` |
| 10 | `theorem` | [zero_hadamard](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/declarations/zero-hadamard--b6ab7c8caa1860babb5d7e56.md) | 100 | `result-track:b6ab7c8caa1860babb5d7e56fd2ec9b419f3715eda440be3f8fbb9e4c4f8b1ff` |
| 11 | `theorem` | [hadamard_one](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/declarations/hadamard-one--e5e44c59d7a10fa6f3c6c98f.md) | 110 | `result-track:e5e44c59d7a10fa6f3c6c98f8420524d04babb7073598de79999da6d2bee4e49` |
| 12 | `theorem` | [one_hadamard](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/declarations/one-hadamard--66d94d4d214b639b2b4defd1.md) | 114 | `result-track:66d94d4d214b639b2b4defd103f37942a180e374d46bc7b8839fb1f8d0abbebf` |
| 13 | `theorem` | [single_hadamard_single_eq](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/declarations/single-hadamard-single-eq--45d663939f44c33ca5102e6a.md) | 124 | `result-track:45d663939f44c33ca5102e6a8ad22f6daaea16e4334f5baeadb69e55d5fcf3b2` |
| 14 | `theorem` | [single_hadamard_single_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/declarations/single-hadamard-single-of-ne--ff98ae54e6f8e2c4c810c9d5.md) | 131 | `result-track:ff98ae54e6f8e2c4c810c9d50f415aa909a0bb4eb35e672d45bf418f0707a150` |
| 15 | `theorem` | [diagonal_hadamard_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/declarations/diagonal-hadamard-diagonal--9cfe27fb258f64c390e25d91.md) | 143 | `result-track:9cfe27fb258f64c390e25d917527dc604fa63dd54d02b4a840ae4544bf2ee4e9` |
| 16 | `theorem` | [sum_hadamard_eq](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/declarations/sum-hadamard-eq--0b73417cf24840c2aba481a3.md) | 154 | `result-track:0b73417cf24840c2aba481a34ec7640b9f44c2def1420dfcb1a855f4c5822328` |
| 17 | `theorem` | [dotProduct_vecMul_hadamard](../../../../../mathematics/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean/declarations/dotproduct-vecmul-hadamard--7b0bc968c977bb932a302632.md) | 157 | `result-track:7b0bc968c977bb932a30263275fa4f6bba700e085f1ab42825429d606728ac96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
