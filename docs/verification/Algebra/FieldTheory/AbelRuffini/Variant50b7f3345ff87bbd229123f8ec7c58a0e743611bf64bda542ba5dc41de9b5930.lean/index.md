# Verification target: GRWTSK.Algebra.FieldTheory.AbelRuffini.Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d6d7951c2c9ae73c653ba91d01c67a2f323b262",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/index.md) · [Full source](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d6d7951c2c9ae73c653ba91d01c67a2f323b262`.

Source path: `GRWTSK/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Solvable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PolynomialGaloisGroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gal_zero_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/gal-zero-issolvable--ce0e98471edf0f45bfbc74ff.md) | 42 | `result-track:ce0e98471edf0f45bfbc74ff4cee412a2aa3865f4b97686edc05e5dcdf222a44` |
| 2 | `theorem` | [gal_one_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/gal-one-issolvable--f5a676b94ab9882530790a3e.md) | 44 | `result-track:f5a676b94ab9882530790a3eb642814677bb5ac2c59d031328644e25b2343bbd` |
| 3 | `theorem` | [gal_C_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/gal-c-issolvable--3b064b4f390bbc79473b592f.md) | 46 | `result-track:3b064b4f390bbc79473b592f7ff7a71bec6297fc1447d2a449a8859c1260cb23` |
| 4 | `theorem` | [gal_X_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/gal-x-issolvable--1693dde6867b070150adaae9.md) | 48 | `result-track:1693dde6867b070150adaae90820ef2695094770689e950bb9fcc2daca25ccc8` |
| 5 | `theorem` | [gal_X_sub_C_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/gal-x-sub-c-issolvable--61f3f79d26d3c339f2ead5fb.md) | 50 | `result-track:61f3f79d26d3c339f2ead5fb3b1f9accd939dd3c7fa6b96b7d0cf6aca80ebd86` |
| 6 | `theorem` | [gal_X_pow_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/gal-x-pow-issolvable--25b68f92db4146815cf2d57a.md) | 52 | `result-track:25b68f92db4146815cf2d57a9f7eba8d8b3670c30bbfff4fcbae513d761567b3` |
| 7 | `theorem` | [gal_mul_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/gal-mul-issolvable--4a40589040681afbd7b4e7a8.md) | 54 | `result-track:4a40589040681afbd7b4e7a8ba6cd3284f67a1bc82d200265acba212887c8a8b` |
| 8 | `theorem` | [gal_prod_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/gal-prod-issolvable--205efe692849955a10e4e7cb.md) | 58 | `result-track:205efe692849955a10e4e7cb77486aa10b8b4fc750c675ddd04a4de6b71f27b0` |
| 9 | `theorem` | [gal_isSolvable_of_splits](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/gal-issolvable-of-splits--f4eed4b5688a521f9a9b6846.md) | 66 | `result-track:f4eed4b5688a521f9a9b6846f43d279b52b4bbf1cbba33feccc2595aef661b9d` |
| 10 | `theorem` | [gal_isSolvable_tower](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/gal-issolvable-tower--6030ace37e7d646211784e4f.md) | 72 | `result-track:6030ace37e7d646211784e4fb314eac82b3e81b661dcfabf0474aa996655d701` |
| 11 | `theorem` | [gal_X_pow_sub_one_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/gal-x-pow-sub-one-issolvable--02f7032a1d2800a6bb937f2c.md) | 87 | `result-track:02f7032a1d2800a6bb937f2c7351370237016285ecd382c55e5bc4fcedda9361` |
| 12 | `theorem` | [gal_X_pow_sub_C_isSolvable_aux](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/gal-x-pow-sub-c-issolvable-aux--521fca48203f25a36784c3db.md) | 105 | `result-track:521fca48203f25a36784c3dbb54208e33413b7f9c594dcb68370dd3d39b1b2e4` |
| 13 | `theorem` | [splits_X_pow_sub_one_of_X_pow_sub_C](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/splits-x-pow-sub-one-of-x-pow-sub-c--cd07b45407b8f803949aa893.md) | 142 | `result-track:cd07b45407b8f803949aa89352f797abb161a245e942d482dbd4e72e823bb1a4` |
| 14 | `theorem` | [gal_X_pow_sub_C_isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/gal-x-pow-sub-c-issolvable--9a7033a0ab9780b54d332329.md) | 180 | `result-track:9a7033a0ab9780b54d332329c4d085fbb64d9661f131ec8f9891e1b378652aaa` |
| 15 | `inductive` | [IsSolvableByRad](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/issolvablebyrad--bd8ec11443735f19f21cbfa1.md) | 198 | `declaration-track:bd8ec11443735f19f21cbfa1e1fa325e37092cd7469f0fd4cf6d34963e226979` |
| 16 | `def` | [solvableByRad](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/solvablebyrad--2763a448318ef9b636d74ee5.md) | 209 | `declaration-track:2763a448318ef9b636d74ee5b96bd7520b25eeb4b3dfbbdd711a0c104e5bb237` |
| 17 | `theorem` | [induction](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/induction--3f4953b2f17e74c57b664c4f.md) | 226 | `result-track:3f4953b2f17e74c57b664c4f86ad984388688e7d105d4f5d438e37dca6263088` |
| 18 | `theorem` | [isIntegral](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/isintegral--18edbbd0cc6fa7bc860ea695.md) | 260 | `result-track:18edbbd0cc6fa7bc860ea69557ef382d16319f811cabb20b455edbb8ca4e67fd` |
| 19 | `def` | [P](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/p--6549936e73229d57062ce244.md) | 277 | `declaration-track:6549936e73229d57062ce24434af99204529198d1336c9d1dda6d050e391c63f` |
| 20 | `theorem` | [induction3](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/induction3--4f1159ac4149ef5d1b513873.md) | 281 | `result-track:4f1159ac4149ef5d1b5138732952a3a1236e80ebcd16b06feabddb3de44df93d` |
| 21 | `theorem` | [induction2](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/induction2--caf487e4b3d786cfb915fb48.md) | 309 | `result-track:caf487e4b3d786cfb915fb489a0b9b606593925972588303c84283776d1e2008` |
| 22 | `theorem` | [induction1](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/induction1--6c765c2bb1ba84ba56933602.md) | 339 | `result-track:6c765c2bb1ba84ba56933602c60924b29a3377ab0e15d3a97c492acad917f034` |
| 23 | `theorem` | [isSolvable](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/issolvable--3fbed4c6017939f64604f226.md) | 342 | `result-track:3fbed4c6017939f64604f2264490202abc5a419eb3e45f5681adead5ae2e6dea` |
| 24 | `theorem` | [isSolvable'](../../../../../mathematics/Algebra/FieldTheory/AbelRuffini/Variant50b7f3345ff87bbd229123f8ec7c58a0e743611bf64bda542ba5dc41de9b5930.lean/declarations/issolvable--c9748625943f8a8a2f1b3531.md) | 356 | `result-track:c9748625943f8a8a2f1b3531dbb96d0ee6ee07a4413b05a2f349784f149977f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
