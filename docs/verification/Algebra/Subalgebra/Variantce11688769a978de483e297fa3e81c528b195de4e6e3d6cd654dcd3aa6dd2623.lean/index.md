# Verification target: GRWTSK.Algebra.Subalgebra.Variantce11688769a978de483e297fa3e81c528b195de4e6e3d6cd654dcd3aa6dd2623

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fcb947857734cfa95be8da4d2f65acf4b1ea319",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Subalgebra/Variantce11688769a978de483e297fa3e81c528b195de4e6e3d6cd654dcd3aa6dd2623.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Subalgebra/Variantce11688769a978de483e297fa3e81c528b195de4e6e3d6cd654dcd3aa6dd2623.lean/index.md) · [Full source](../../../../mathematics/Algebra/Subalgebra/Variantce11688769a978de483e297fa3e81c528b195de4e6e3d6cd654dcd3aa6dd2623.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fcb947857734cfa95be8da4d2f65acf4b1ea319`.

Source path: `GRWTSK/Algebra/Subalgebra/Variantce11688769a978de483e297fa3e81c528b195de4e6e3d6cd654dcd3aa6dd2623.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Subalgebra/Variantce11688769a978de483e297fa3e81c528b195de4e6e3d6cd654dcd3aa6dd2623.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Bilinear` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fg_bot_toSubmodule](../../../../mathematics/Algebra/Subalgebra/Variantce11688769a978de483e297fa3e81c528b195de4e6e3d6cd654dcd3aa6dd2623.lean/declarations/fg-bot-tosubmodule--821977ba4eca6b323df24a30.md) | 31 | `result-track:821977ba4eca6b323df24a30c5bbefab95bd60151ce374397c5046e5b085f8f1` |
| 2 | `instance` | [finite_bot](../../../../mathematics/Algebra/Subalgebra/Variantce11688769a978de483e297fa3e81c528b195de4e6e3d6cd654dcd3aa6dd2623.lean/declarations/finite-bot--b7a49f6b4d7da4aa3abbe3b0.md) | 34 | `declaration-track:b7a49f6b4d7da4aa3abbe3b0b3b93d3b8c2d2b88342b816ff8614edc3928e225` |
| 3 | `theorem` | [fg_unit](../../../../mathematics/Algebra/Subalgebra/Variantce11688769a978de483e297fa3e81c528b195de4e6e3d6cd654dcd3aa6dd2623.lean/declarations/fg-unit--2169a222d2b9731b6574a3f4.md) | 41 | `result-track:2169a222d2b9731b6574a3f4884c0f8c39676bfe5d60d5fed11e127bff489175` |
| 4 | `theorem` | [fg_of_isUnit](../../../../mathematics/Algebra/Subalgebra/Variantce11688769a978de483e297fa3e81c528b195de4e6e3d6cd654dcd3aa6dd2623.lean/declarations/fg-of-isunit--4bf676254bc83e70a21d1594.md) | 50 | `result-track:4bf676254bc83e70a21d1594f9800b08b0a3d90cf63d4f9d891ba451a55970d5` |
| 5 | `theorem` | [FG.mul](../../../../mathematics/Algebra/Subalgebra/Variantce11688769a978de483e297fa3e81c528b195de4e6e3d6cd654dcd3aa6dd2623.lean/declarations/fg-mul--108b44c620af6bc434b7e8a3.md) | 59 | `result-track:108b44c620af6bc434b7e8a322ba7b8b70bd2be8e0f2ae28400e31df2a7bea49` |
| 6 | `theorem` | [FG.pow](../../../../mathematics/Algebra/Subalgebra/Variantce11688769a978de483e297fa3e81c528b195de4e6e3d6cd654dcd3aa6dd2623.lean/declarations/fg-pow--13821a4f5512c4527a3226e8.md) | 62 | `result-track:13821a4f5512c4527a3226e89aa5bb6fa0ccf0634b5d93f3d7ce9bdcaa6b6c9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
