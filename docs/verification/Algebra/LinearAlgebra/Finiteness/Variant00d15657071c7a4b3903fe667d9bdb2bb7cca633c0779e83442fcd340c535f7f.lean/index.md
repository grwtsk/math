# Verification target: GRWTSK.Algebra.LinearAlgebra.Finiteness.Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1dc3f35a6ea19b87c2c0e27b6e397972290bccc",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1dc3f35a6ea19b87c2c0e27b6e397972290bccc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.DFinsupp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_multiset](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean/declarations/exists-multiset--84dbdc4612ccac85709d9356.md) | 61 | `result-track:84dbdc4612ccac85709d93567ca29f424feb3df057a5bafadd0214e63ec3fc9b` |
| 2 | `theorem` | [exists_finsupp_left](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean/declarations/exists-finsupp-left--3af6445e77e2d2330cd352f1.md) | 74 | `result-track:3af6445e77e2d2330cd352f13209fa80231b9e6636d07fa880241607b908eaef` |
| 3 | `theorem` | [exists_finsupp_right](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean/declarations/exists-finsupp-right--afcdb1ff9b83f3c53ef5bce4.md) | 89 | `result-track:afcdb1ff9b83f3c53ef5bce47a0ffc4c448618e874e1fa62141bd1cc34898556` |
| 4 | `theorem` | [exists_finset](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean/declarations/exists-finset--34471affb4dac13aa9592058.md) | 97 | `result-track:34471affb4dac13aa959205831387d8a28ce2a59dec18f8ae2dcc9eb1f04274a` |
| 5 | `theorem` | [exists_finite_submodule_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean/declarations/exists-finite-submodule-of-finite--cb062288043575f153be3ebf.md) | 107 | `result-track:cb062288043575f153be3ebf4658e82f158ab59ea33735710e0a9e2b0e033492` |
| 6 | `theorem` | [exists_finite_submodule_left_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean/declarations/exists-finite-submodule-left-of-finite--bb2630c9bce7ccc260fe0e52.md) | 132 | `result-track:bb2630c9bce7ccc260fe0e52a4171ddaccae2402bbdcd7bbcc7765f4f8058d97` |
| 7 | `theorem` | [exists_finite_submodule_right_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean/declarations/exists-finite-submodule-right-of-finite--33c3735f078e420253ac41fc.md) | 142 | `result-track:33c3735f078e420253ac41fc57df1a40dc883360facb4ca6f54433f42a5b3c94` |
| 8 | `theorem` | [exists_finite_submodule_of_finite'](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean/declarations/exists-finite-submodule-of-finite--c5996a3e5d862d3fba5e3582.md) | 151 | `result-track:c5996a3e5d862d3fba5e3582831759f8dc734f2812cc54efda798d9184857d28` |
| 9 | `theorem` | [exists_finite_submodule_left_of_finite'](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean/declarations/exists-finite-submodule-left-of-finite--083f18905b4040664367cd11.md) | 167 | `result-track:083f18905b4040664367cd11e98f3ca0a2f9be73bfa5867a965dc8c049285a1f` |
| 10 | `theorem` | [exists_finite_submodule_right_of_finite'](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant00d15657071c7a4b3903fe667d9bdb2bb7cca633c0779e83442fcd340c535f7f.lean/declarations/exists-finite-submodule-right-of-finite--ae36e2c348fcd88e281e7bce.md) | 177 | `result-track:ae36e2c348fcd88e281e7bced2898a449dcbfeadf034bc225a466c0d50385452` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
