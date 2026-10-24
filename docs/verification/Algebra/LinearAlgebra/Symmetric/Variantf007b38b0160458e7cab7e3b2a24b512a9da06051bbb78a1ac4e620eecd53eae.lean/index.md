# Verification target: GRWTSK.Algebra.LinearAlgebra.Symmetric.Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29239d844297654f8a7d4a8eb1d76333074269b1",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29239d844297654f8a7d4a8eb1d76333074269b1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Symmetric/Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Symmetric/Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [braiding](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae.lean/declarations/braiding--cdd397b2e710f25b3c64214b.md) | 32 | `declaration-track:cdd397b2e710f25b3c64214b1e7ea01de09e32027d97501db1f8d7fb1f3f0830` |
| 2 | `theorem` | [braiding_naturality](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae.lean/declarations/braiding-naturality--601b66f4e7f0de797e99b955.md) | 38 | `result-track:601b66f4e7f0de797e99b9551f5bda4b723be972718543e67019a802166a9682` |
| 3 | `theorem` | [braiding_naturality_left](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae.lean/declarations/braiding-naturality-left--b5ce135127de703e1ff2a8c4.md) | 46 | `result-track:b5ce135127de703e1ff2a8c41a38c0556a0d224148b05770c2d910d294843839` |
| 4 | `theorem` | [braiding_naturality_right](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae.lean/declarations/braiding-naturality-right--670fb20b042f4d1a2a4b2c08.md) | 52 | `result-track:670fb20b042f4d1a2a4b2c08bf1b59e7b847fb29e01ee215530f1562075e5491` |
| 5 | `theorem` | [hexagon_forward](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae.lean/declarations/hexagon-forward--022f3e5d0900d4067025cf9a.md) | 58 | `result-track:022f3e5d0900d4067025cf9a877ddcfe44627247b4a79cb3932dcb5a45223e48` |
| 6 | `theorem` | [hexagon_reverse](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae.lean/declarations/hexagon-reverse--9da379be30afa082c810b50d.md) | 67 | `result-track:9da379be30afa082c810b50d272688a224dc437bf4cc3b1c8d2cd343908468ce` |
| 7 | `instance` | [symmetricCategory](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae.lean/declarations/symmetriccategory--77987a501c8506a7730a70ca.md) | 79 | `declaration-track:77987a501c8506a7730a70cac7fb1cf72c17528e2863f2df3d50ae382ab7a699` |
| 8 | `theorem` | [braiding_hom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae.lean/declarations/braiding-hom-apply--f823240ff73271866d9950d3.md) | 93 | `result-track:f823240ff73271866d9950d32acc47d3b1229f5e429b20cec9b25f4a7fee1373` |
| 9 | `theorem` | [braiding_inv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae.lean/declarations/braiding-inv-apply--294706257197178c75b78427.md) | 98 | `result-track:294706257197178c75b784278738f150a31966fa937f89c6bbe427b83b1a3933` |
| 10 | `theorem` | [tensorμ_eq_tensorTensorTensorComm](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae.lean/declarations/tensor-eq-tensortensortensorcomm--90b154b63ef31f02e1591f3e.md) | 102 | `result-track:90b154b63ef31f02e1591f3e65564190d7ad346ec44d1e6d55209e793a9c0c51` |
| 11 | `theorem` | [tensorμ_apply](../../../../../mathematics/Algebra/LinearAlgebra/Symmetric/Variantf007b38b0160458e7cab7e3b2a24b512a9da06051bbb78a1ac4e620eecd53eae.lean/declarations/tensor-apply--cce53692884d1bcbe7e998f8.md) | 108 | `result-track:cce53692884d1bcbe7e998f822b18215596ae493ec881620a082d81df14f391a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
