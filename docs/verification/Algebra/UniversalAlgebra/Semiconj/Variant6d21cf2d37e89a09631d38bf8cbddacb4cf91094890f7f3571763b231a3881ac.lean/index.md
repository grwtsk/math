# Verification target: GRWTSK.Algebra.UniversalAlgebra.Semiconj.Variant6d21cf2d37e89a09631d38bf8cbddacb4cf91094890f7f3571763b231a3881ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdaed30810e0055754c603beff0f8cd6f01d01e8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Semiconj/Variant6d21cf2d37e89a09631d38bf8cbddacb4cf91094890f7f3571763b231a3881ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant6d21cf2d37e89a09631d38bf8cbddacb4cf91094890f7f3571763b231a3881ac.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant6d21cf2d37e89a09631d38bf8cbddacb4cf91094890f7f3571763b231a3881ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdaed30810e0055754c603beff0f8cd6f01d01e8`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Semiconj/Variant6d21cf2d37e89a09631d38bf8cbddacb4cf91094890f7f3571763b231a3881ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Semiconj/Variant6d21cf2d37e89a09631d38bf8cbddacb4cf91094890f7f3571763b231a3881ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Semiconj` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Classical` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_right](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant6d21cf2d37e89a09631d38bf8cbddacb4cf91094890f7f3571763b231a3881ac.lean/declarations/zero-right--d8e79ebc33db0e66c4bcc25f.md) | 31 | `result-track:d8e79ebc33db0e66c4bcc25f127264cc2f4e74d786856a802cef1bcdc566470f` |
| 2 | `theorem` | [zero_left](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant6d21cf2d37e89a09631d38bf8cbddacb4cf91094890f7f3571763b231a3881ac.lean/declarations/zero-left--2914b4080b7cf4bae4f6837b.md) | 36 | `result-track:2914b4080b7cf4bae4f6837b09fa671eb09e6a773a8362bf6ead12535e87a44b` |
| 3 | `theorem` | [inv_symm_left_iff₀](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant6d21cf2d37e89a09631d38bf8cbddacb4cf91094890f7f3571763b231a3881ac.lean/declarations/inv-symm-left-iff--45c6105803fd8d8a569b64d1.md) | 43 | `result-track:45c6105803fd8d8a569b64d101cf638ebb728774e4745a413db6cc7552aed264` |
| 4 | `theorem` | [inv_symm_left₀](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant6d21cf2d37e89a09631d38bf8cbddacb4cf91094890f7f3571763b231a3881ac.lean/declarations/inv-symm-left--e244ce7d4986f3d7b12a3f2c.md) | 48 | `result-track:e244ce7d4986f3d7b12a3f2cbee8e5e48f23dcf1a9c18bd4a0affa2beef5b76a` |
| 5 | `theorem` | [inv_right₀](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant6d21cf2d37e89a09631d38bf8cbddacb4cf91094890f7f3571763b231a3881ac.lean/declarations/inv-right--0041dc7072aad20a2f63bd9c.md) | 52 | `result-track:0041dc7072aad20a2f63bd9c2280a970082b353a795b2eceadb8662d58af7c15` |
| 6 | `theorem` | [inv_right_iff₀](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant6d21cf2d37e89a09631d38bf8cbddacb4cf91094890f7f3571763b231a3881ac.lean/declarations/inv-right-iff--f3626709f0c8315f9a329109.md) | 65 | `result-track:f3626709f0c8315f9a329109bafaa188ff3240dafb020c1e9aabe1a0b552ca58` |
| 7 | `theorem` | [div_right](../../../../../mathematics/Algebra/UniversalAlgebra/Semiconj/Variant6d21cf2d37e89a09631d38bf8cbddacb4cf91094890f7f3571763b231a3881ac.lean/declarations/div-right--d0732111be03a9ec25ca367f.md) | 69 | `result-track:d0732111be03a9ec25ca367f39ca94d29eb7c611651c7d7d3990a896fec3dfd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
