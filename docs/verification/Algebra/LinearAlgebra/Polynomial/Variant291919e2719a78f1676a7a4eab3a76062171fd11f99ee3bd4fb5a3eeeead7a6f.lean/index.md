# Verification target: GRWTSK.Algebra.LinearAlgebra.Polynomial.Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64e237ee9a93151674599aa63c4ec360c8c8cc86",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64e237ee9a93151674599aa63c4ec360c8c8cc86`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Expand` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [C_dvd_iff_zmod](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/c-dvd-iff-zmod--7ed54ea45aa3721c1f47b416.md) | 25 | `result-track:7ed54ea45aa3721c1f47b41679d023fd4b2e180d40d21384688ed5c27124ef51` |
| 2 | `theorem` | [frobenius_zmod](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/frobenius-zmod--74befc334141093c2f85f9c1.md) | 35 | `result-track:74befc334141093c2f85f9c1edd7e7dec6ed235940d15a1e8625011e14a7a730` |
| 3 | `theorem` | [expand_zmod](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/expand-zmod--af3eee2bd54bc42c5948fb5e.md) | 43 | `result-track:af3eee2bd54bc42c5948fb5e77572a23cb8c5aa30e944990c23c4f17733b731b` |
| 4 | `def` | [indicator](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/indicator--d4a97183b8c0313d889b21e5.md) | 66 | `declaration-track:d4a97183b8c0313d889b21e59673041d70658173cdc36012da20e2ae635856c6` |
| 5 | `theorem` | [eval_indicator_apply_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/eval-indicator-apply-eq-one--592ec5e3bc6ef0b1d09f4f52.md) | 74 | `result-track:592ec5e3bc6ef0b1d09f4f520d4e092bcdc0e73822eed6e57cb455a24b56cb7a` |
| 6 | `theorem` | [degrees_indicator](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/degrees-indicator--b0d314059e634b9dd73f2128.md) | 81 | `result-track:b0d314059e634b9dd73f2128c0b9671bc191f7eb44086e399c2d36f22cfa4747` |
| 7 | `theorem` | [indicator_mem_restrictDegree](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/indicator-mem-restrictdegree--8cdb889c1fbfcc8fe3633bee.md) | 93 | `result-track:8cdb889c1fbfcc8fe3633bee7bd578e36fa89f418da271f0e1961350d5965ae5` |
| 8 | `theorem` | [eval_indicator_apply_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/eval-indicator-apply-eq-zero--f8bff918db03e47e7d574970.md) | 112 | `result-track:f8bff918db03e47e7d574970e8134271fa14f33af9bc58692f264fc4aba145d5` |
| 9 | `def` | [evalₗ](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/eval--bf0ef1b5e3a670a0d976fe35.md) | 129 | `declaration-track:bf0ef1b5e3a670a0d976fe35939b3517b38444b70cd6b0fa46baf775bc6ff82e` |
| 10 | `theorem` | [map_restrict_dom_evalₗ](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/map-restrict-dom-eval--8e42c23442b8dd7ee621cecb.md) | 139 | `result-track:8e42c23442b8dd7ee621cecbafb3ae689419e9c30cbaf04aece850e0b5bdddcc` |
| 11 | `def` | [R](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/r--0d9a9b1d75a4105c54fddee9.md) | 174 | `declaration-track:0d9a9b1d75a4105c54fddee9b3d86df60f1c25ec2a5176ad6d8d0d9cedda94c2` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/instance--9e336cccdd8c1c34e595eb9a.md) | 179 | `declaration-track:9e336cccdd8c1c34e595eb9a8dbf85aa84b931874976d5570afee234ab9532bf` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/instance--e4adf6ea338b3e89a5b51db8.md) | 182 | `declaration-track:e4adf6ea338b3e89a5b51db88ed1ff24f374d8f0cf1fdb8915c29fc58f6e1d6a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/instance--171db72ad3d5c42e9b3f6b16.md) | 185 | `declaration-track:171db72ad3d5c42e9b3f6b1670d34ab37c9f4feb2fa224daead654b11e3c9752` |
| 15 | `def` | [evalᵢ](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/eval--45d683d0062e0df40549f1d9.md) | 189 | `declaration-track:45d683d0062e0df40549f1d9385c4cce65954eeae2571a7c1dad630cbcd81cd2` |
| 16 | `instance` | [decidableRestrictDegree](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/decidablerestrictdegree--83093957512d6e0bff1e6542.md) | 197 | `declaration-track:83093957512d6e0bff1e6542b067d7adad9813c32db283ef96c3500c82e10a7d` |
| 17 | `theorem` | [rank_R](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/rank-r--1b64116d6e450559aeeb29b3.md) | 206 | `result-track:1b64116d6e450559aeeb29b320931e075a38d8d8b111cfaf0757488c3e3725ad` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/instance--4314498c61523c02d097a48f.md) | 226 | `declaration-track:4314498c61523c02d097a48fd503867a754a760d2dcfd56de3a64e649d199f89` |
| 19 | `theorem` | [finrank_R](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/finrank-r--cbb1f51ef3c63b3352f7783e.md) | 233 | `result-track:cbb1f51ef3c63b3352f7783e9e40f56a7cfe6102c9f65ba5f4db1c27b44a0899` |
| 20 | `theorem` | [range_evalᵢ](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/range-eval--7fde346c9e10a77289534b2d.md) | 239 | `result-track:7fde346c9e10a77289534b2d466bdc469048dbdd6e1c80827886650c134a1b45` |
| 21 | `theorem` | [ker_evalₗ](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/ker-eval--ec5cf465805fd591d385788c.md) | 245 | `result-track:ec5cf465805fd591d385788cd44316747e94e59a9ad77a680a06f03ca2ec5c17` |
| 22 | `theorem` | [eq_zero_of_eval_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/declarations/eq-zero-of-eval-eq-zero--d6e72db69b44de4d3900dffb.md) | 251 | `result-track:d6e72db69b44de4d3900dffb218c60f66c31c9521ec7397810d6fcb9691851d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
