# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "899ecacbd470c8fe8663b8467d35764290e74d03",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `899ecacbd470c8fe8663b8467d35764290e74d03`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Degrees` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Small` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.VectorSpace` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/declarations/instance--fc41d2bda9b613eec0940c97.md) | 49 | `declaration-track:fc41d2bda9b613eec0940c970d0f4736a10eda4e2e4b2e3b529f733787b5faa6` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/declarations/instance--404df63ca39371129553d667.md) | 56 | `declaration-track:404df63ca39371129553d667e66524f023de6ab7ff68fe85edc2df3a2ca2d394` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/declarations/instance--a529e5238719bd08bce973eb.md) | 63 | `declaration-track:a529e5238719bd08bce973eb2e4732659a36c023a135fe0f8371a61504e262a9` |
| 4 | `theorem` | [mapRange_eq_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/declarations/maprange-eq-map--fc832718afb87259b145c253.md) | 70 | `result-track:fc832718afb87259b145c2536b86b146c96dd2597b0c4c0f157170fe5e284b4c` |
| 5 | `def` | [restrictSupport](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/declarations/restrictsupport--505a5bc430b6514171818400.md) | 83 | `declaration-track:505a5bc430b6514171818400d09b44c92c1487402a86fe6730ef10c3bf95c941` |
| 6 | `def` | [basisRestrictSupport](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/declarations/basisrestrictsupport--e4a4d52d602d6dce4dfb267b.md) | 87 | `declaration-track:e4a4d52d602d6dce4dfb267bd71f4dcb4075176b9600ad776108c0e90a6c6ac9` |
| 7 | `theorem` | [restrictSupport_mono](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/declarations/restrictsupport-mono--479fed29f7810ad0bc71509d.md) | 90 | `result-track:479fed29f7810ad0bc71509d86caebd9389c5574a7ff2f644bfaf96a59752090` |
| 8 | `def` | [restrictTotalDegree](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/declarations/restricttotaldegree--d555c720e4c35c8626b19a0e.md) | 96 | `declaration-track:d555c720e4c35c8626b19a0e9dc2494ea4c166a38b467847f4aa471072e63bb6` |
| 9 | `def` | [restrictDegree](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/declarations/restrictdegree--5bd8e6b85f1a92f1b4b8a64f.md) | 101 | `declaration-track:5bd8e6b85f1a92f1b4b8a64fd826eece293a922c5bfb8f14da639e3ac80e6150` |
| 10 | `theorem` | [mem_restrictTotalDegree](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/declarations/mem-restricttotaldegree--3c1d40b3543b7902e81069c9.md) | 106 | `result-track:3c1d40b3543b7902e81069c99706b109f4f914ddf5c087041ea2ed3ff0e97f27` |
| 11 | `theorem` | [mem_restrictDegree](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/declarations/mem-restrictdegree--78e24b48b98bdc4656c60b7b.md) | 111 | `result-track:78e24b48b98bdc4656c60b7b69ff662d5e75614c4e38e746761e84f58f4cd3f4` |
| 12 | `theorem` | [mem_restrictDegree_iff_sup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/declarations/mem-restrictdegree-iff-sup--8b01b37c3c483b1ad12a56ec.md) | 116 | `result-track:8b01b37c3c483b1ad12a56ec50fbe23c80a417a362d7c3d70c1fb9ecf810eff2` |
| 13 | `theorem` | [restrictTotalDegree_le_restrictDegree](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/declarations/restricttotaldegree-le-restrictdegree--cca9de47d12cfee423a9b962.md) | 124 | `result-track:cca9de47d12cfee423a9b962c2453bf969bfc70dfafc8610974a2ea10db1015b` |
| 14 | `def` | [basisMonomials](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/declarations/basismonomials--d992a8761d40d7087e714009.md) | 130 | `declaration-track:d992a8761d40d7087e714009f6462b1498695b14ec7571109cf6c9eae1091a5c` |
| 15 | `theorem` | [coe_basisMonomials](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/declarations/coe-basismonomials--c372709473f276705002da56.md) | 134 | `result-track:c372709473f276705002da56e6d414026b3c1426cec5390f7c206b2abfcac9f7` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/declarations/instance--c6f36e5f0b2bad1f25d5f842.md) | 139 | `declaration-track:c6f36e5f0b2bad1f25d5f842b5759b4f74649a6362bd5fd59b86afd7e8cf6dda` |
| 17 | `theorem` | [linearIndependent_X](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/declarations/linearindependent-x--cb370fd029295a527c9cc3db.md) | 142 | `result-track:cb370fd029295a527c9cc3db388b47a7ed49db8d154adc8a224c8c9e1b7b0b22` |
| 18 | `lemma` | [finite_setOf_bounded](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/declarations/finite-setof-bounded--b391d3c2dd3919acd3b5dd28.md) | 146 | `result-track:b391d3c2dd3919acd3b5dd287ff1e973d48bc4586cf793e8a21a9cb6c57fc9a3` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/declarations/instance--c2f7f1504a922d7c9bfbe3c6.md) | 149 | `declaration-track:c2f7f1504a922d7c9bfbe3c6114c6640d0a17999f92597efccc8d6e8a30dfd0e` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant0106933ee011fb104a5b90422b47d513655417c9d963ebe5a9c068555b7bffad.lean/declarations/instance--902f4218a41bbfa4d4169b2c.md) | 153 | `declaration-track:902f4218a41bbfa4d4169b2cf02c62ceb48fc44d34e56826a823cb6ba6b943f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
