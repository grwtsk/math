# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Order.Variantd1718355a7092f24b5e638ed30cbf3b54a128a52c2c7733ba966b0cebc358c62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc9e8950383f77099dc47506ee3e2bf488984424",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd1718355a7092f24b5e638ed30cbf3b54a128a52c2c7733ba966b0cebc358c62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd1718355a7092f24b5e638ed30cbf3b54a128a52c2c7733ba966b0cebc358c62.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd1718355a7092f24b5e638ed30cbf3b54a128a52c2c7733ba966b0cebc358c62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc9e8950383f77099dc47506ee3e2bf488984424`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd1718355a7092f24b5e638ed30cbf3b54a128a52c2c7733ba966b0cebc358c62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd1718355a7092f24b5e638ed30cbf3b54a128a52c2c7733ba966b0cebc358c62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Algebra.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Int.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le.elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd1718355a7092f24b5e638ed30cbf3b54a128a52c2c7733ba966b0cebc358c62.lean/declarations/le-elim--68830651214bc60b985f916f.md) | 33 | `result-track:68830651214bc60b985f916fe99ae1f556fae7ae9cf730bb1e8e9e0e1f760183` |
| 2 | `theorem` | [lt.elim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd1718355a7092f24b5e638ed30cbf3b54a128a52c2c7733ba966b0cebc358c62.lean/declarations/lt-elim--8c87132ed141544ed8e5d6ed.md) | 45 | `result-track:8c87132ed141544ed8e5d6ed86d2013dc5887fde2c5798b396b2adbae508f119` |
| 3 | `instance` | [instLinearOrderInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd1718355a7092f24b5e638ed30cbf3b54a128a52c2c7733ba966b0cebc358c62.lean/declarations/instlinearorderint--3dad7d5261903db9f4f4f965.md) | 54 | `declaration-track:3dad7d5261903db9f4f4f965c66684c09ffda12a26b64c579a9cc8425ccaeab0` |
| 4 | `theorem` | [neg_mul_eq_neg_mul_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd1718355a7092f24b5e638ed30cbf3b54a128a52c2c7733ba966b0cebc358c62.lean/declarations/neg-mul-eq-neg-mul-symm--cf590c9a72743e90855cd911.md) | 71 | `result-track:cf590c9a72743e90855cd91143eb7c2b6dd9fb85021dbffbddc9d1203cc8d4e2` |
| 5 | `theorem` | [mul_neg_eq_neg_mul_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd1718355a7092f24b5e638ed30cbf3b54a128a52c2c7733ba966b0cebc358c62.lean/declarations/mul-neg-eq-neg-mul-symm--7329d0976456e5d65547d2df.md) | 74 | `result-track:7329d0976456e5d65547d2dfcaf26d6ed80851aa0b19d6374802f02b0b6fdd6d` |
| 6 | `theorem` | [eq_zero_or_eq_zero_of_mul_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd1718355a7092f24b5e638ed30cbf3b54a128a52c2c7733ba966b0cebc358c62.lean/declarations/eq-zero-or-eq-zero-of-mul-eq-zero--bd87495734e49f856c512db3.md) | 83 | `result-track:bd87495734e49f856c512db3b28afc63c009b9eb08c3602170c25b0f725be34f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
