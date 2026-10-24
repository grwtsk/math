# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EssSurj.Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fcfabe2d1396c1c6065c46909fd981163e2644d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fcfabe2d1396c1c6065c46909fd981163e2644d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Galois.Full` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Galois.Topology` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.OpenSubgroup` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [fintypeQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean/declarations/fintypequotient--86f2cc864b2dd8ef595e6f50.md) | 62 | `declaration-track:86f2cc864b2dd8ef595e6f50c3bc6f3cfd3fa8dde99c27c499ca88a30857595a` |
| 2 | `instance` | [fintypeQuotientStabilizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean/declarations/fintypequotientstabilizer--0183edbb21696a36df724e8e.md) | 67 | `declaration-track:0183edbb21696a36df724e8e5520d69e8c8c62057d5d55e6240bb0c242c57151` |
| 3 | `lemma` | [has_decomp_quotients](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean/declarations/has-decomp-quotients--2eb441cc34e7669d8dac2b85.md) | 75 | `result-track:2eb441cc34e7669d8dac2b85f3015aa876933306526259cb43841bbdeece1b83` |
| 4 | `def` | [fiberIsoQuotientStabilizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean/declarations/fiberisoquotientstabilizer--a9ebfd5cc6f8d6c312a49d1b.md) | 109 | `declaration-track:a9ebfd5cc6f8d6c312a49d1b96c5a9aa0cbca240110f9cd927638221d212db13` |
| 5 | `def` | [quotientToEndObjectHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean/declarations/quotienttoendobjecthom--a6f84a7dc26cfe8bf313b66b.md) | 134 | `declaration-track:a6f84a7dc26cfe8bf313b66bb11dda1772df7f833822a525656015bf94389af0` |
| 6 | `lemma` | [functorToAction_map_quotientToEndObjectHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean/declarations/functortoaction-map-quotienttoendobjecthom--b87236e208fd2d453c521ba3.md) | 140 | `result-track:b87236e208fd2d453c521ba3e7ad26eeed37949bd549a87c922d0918f0965611` |
| 7 | `def` | [quotientDiag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean/declarations/quotientdiag--166e6711f830cad3986947b7.md) | 148 | `declaration-track:166e6711f830cad3986947b757b4fe4d55576ba0d0f9f5af104a5628339cfb9c` |
| 8 | `def` | [coconeQuotientDiag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean/declarations/coconequotientdiag--cba20df0c8d4e89d65cd88c1.md) | 154 | `declaration-track:cba20df0c8d4e89d65cd88c1dbe1d142b55cc763a16b18230cd484af4c1bec50` |
| 9 | `def` | [coconeQuotientDiagDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean/declarations/coconequotientdiagdesc--208581edeb826210b9483645.md) | 173 | `declaration-track:208581edeb826210b948364543fe6cd48e44e015f0a550d43de620c4b3d5b8de` |
| 10 | `def` | [coconeQuotientDiagIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean/declarations/coconequotientdiagiscolimit--11acf6af9d80c0742bff391c.md) | 201 | `declaration-track:11acf6af9d80c0742bff391c86ce0f959b4613a544364fd6c80e38175663b5c1` |
| 11 | `lemma` | [exists_lift_of_quotient_openSubgroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean/declarations/exists-lift-of-quotient-opensubgroup--0d7e4bf49045af35c91c621e.md) | 221 | `result-track:0d7e4bf49045af35c91c621eeea4d5adda5c5ca09722937f8c68056c7b1253de` |
| 12 | `theorem` | [exists_lift_of_continuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean/declarations/exists-lift-of-continuous--a68b70f1991c66d839288ecb.md) | 261 | `result-track:a68b70f1991c66d839288ecb80cb45b34d38a60b08958b8578be8044c381e59b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
