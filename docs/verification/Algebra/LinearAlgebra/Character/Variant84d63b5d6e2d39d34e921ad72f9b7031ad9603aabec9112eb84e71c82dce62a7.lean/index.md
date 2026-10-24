# Verification target: GRWTSK.Algebra.LinearAlgebra.Character.Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "989a40488065879e42c965a423f555143a4f4e30",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Character/Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `989a40488065879e42c965a423f555143a4f4e30`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Character/Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Character/Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RepresentationTheory.FdRep` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Trace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Invariants` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [character](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7.lean/declarations/character--10174ccf294da6275a5960be.md) | 51 | `declaration-track:10174ccf294da6275a5960be9bfb798e6979bb65709fee40c85a90778af7ec1c` |
| 2 | `theorem` | [char_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7.lean/declarations/char-mul-comm--ab6eeb2adf82b53d735560f6.md) | 55 | `result-track:ab6eeb2adf82b53d735560f699631b2809e126c056e929019d4bf5060a920120` |
| 3 | `theorem` | [char_one](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7.lean/declarations/char-one--2dd2150d3d5cf78b9ec4ca63.md) | 60 | `result-track:2dd2150d3d5cf78b9ec4ca6351d6e06ca823ceb73215f72c1b05d3d1791954aa` |
| 4 | `theorem` | [char_tensor](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7.lean/declarations/char-tensor--aa9308a3420a3a70153588db.md) | 65 | `result-track:aa9308a3420a3a70153588db6b78550a91e2fe12bab637a65f70e60030397c87` |
| 5 | `theorem` | [char_tensor'](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7.lean/declarations/char-tensor--dd2ea8c1ac884ec2ec71b84d.md) | 71 | `result-track:dd2ea8c1ac884ec2ec71b84d2a15c34565a5e95b31b85a6d8a4c3b66726437ad` |
| 6 | `theorem` | [char_iso](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7.lean/declarations/char-iso--8ec162cb0fac3befaf413ad9.md) | 78 | `result-track:8ec162cb0fac3befaf413ad9433fb93188374bfae13540ac33fa35f9ec9b3494` |
| 7 | `theorem` | [char_conj](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7.lean/declarations/char-conj--e5311b083b8344ab9d084034.md) | 90 | `result-track:e5311b083b8344ab9d084034c21923563ac54f6083fac8ad72411708fc6dfb7e` |
| 8 | `theorem` | [char_dual](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7.lean/declarations/char-dual--85934eb1791af55b1baf7e81.md) | 95 | `result-track:85934eb1791af55b1baf7e81075a5ac1921f66015546839f036ca3c57d21c366` |
| 9 | `theorem` | [char_linHom](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7.lean/declarations/char-linhom--6e893b9a8ebb6cba34065e55.md) | 100 | `result-track:6e893b9a8ebb6cba34065e5576b09bc01109aac36787b5b0e3a4df46431e7bfb` |
| 10 | `theorem` | [average_char_eq_finrank_invariants](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7.lean/declarations/average-char-eq-finrank-invariants--213fcccabc9cc4c433aadfb4.md) | 107 | `result-track:213fcccabc9cc4c433aadfb43c80a89dc1c6795584cd07556e9a486cb4726a11` |
| 11 | `theorem` | [char_orthonormal](../../../../../mathematics/Algebra/LinearAlgebra/Character/Variant84d63b5d6e2d39d34e921ad72f9b7031ad9603aabec9112eb84e71c82dce62a7.lean/declarations/char-orthonormal--3b999f674e94d89b84525595.md) | 125 | `result-track:3b999f674e94d89b84525595d14727563a1deff408d0ca6ed576e4d39d2de0bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
