# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EssSurj.Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "017cc222f3ec68007cfddfcd22d10a4b99e689a1",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `017cc222f3ec68007cfddfcd22d10a4b99e689a1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Galois.Full` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Galois.Topology` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.OpenSubgroup` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [fintypeQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/declarations/fintypequotient--388637e1ef77bf1dbb3e67e4.md) | 54 | `declaration-track:388637e1ef77bf1dbb3e67e4e7332662611d1d8519102f3a1843c37607c3b506` |
| 2 | `instance` | [fintypeQuotientStabilizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/declarations/fintypequotientstabilizer--449ec6f4543682fa17b0bb8f.md) | 59 | `declaration-track:449ec6f4543682fa17b0bb8f82113c964b470144c3d490b460eab676b07a43df` |
| 3 | `lemma` | [has_decomp_quotients](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/declarations/has-decomp-quotients--e4b3a83e3111c66c1621a0a7.md) | 67 | `result-track:e4b3a83e3111c66c1621a0a72f212e1be26469dc921db41ac8941b0ab058d637` |
| 4 | `def` | [fiberIsoQuotientStabilizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/declarations/fiberisoquotientstabilizer--a76d0b5a6caab2591f4dc9c9.md) | 101 | `declaration-track:a76d0b5a6caab2591f4dc9c99b660aadbbf3ad1da79a254086ffe433ded46d4a` |
| 5 | `def` | [quotientToEndObjectHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/declarations/quotienttoendobjecthom--1fb44e1052bd07dbf70a422b.md) | 126 | `declaration-track:1fb44e1052bd07dbf70a422b363244a5418786bc8e63d9a70d74307d7b2338a6` |
| 6 | `lemma` | [functorToAction_map_quotientToEndObjectHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/declarations/functortoaction-map-quotienttoendobjecthom--482d27527dcd9f96ea81bda6.md) | 132 | `result-track:482d27527dcd9f96ea81bda676e0045864cd2c6fbfc440925c5ba43045129e3f` |
| 7 | `def` | [quotientDiag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/declarations/quotientdiag--2b3e5d62510d049ad706e5ab.md) | 140 | `declaration-track:2b3e5d62510d049ad706e5ab94533670f733b6e73b0f7725a1a53b221a31565c` |
| 8 | `def` | [coconeQuotientDiag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/declarations/coconequotientdiag--04100af8dae6c0d6ebedb1f6.md) | 146 | `declaration-track:04100af8dae6c0d6ebedb1f6ad8a789a909606a3194f94581ac63779ca7b1e4d` |
| 9 | `def` | [coconeQuotientDiagDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/declarations/coconequotientdiagdesc--bd65fc41d51fe8040107fafb.md) | 165 | `declaration-track:bd65fc41d51fe8040107fafbba84dfd24f3553377f57b9db3184e313c040b70f` |
| 10 | `def` | [coconeQuotientDiagIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/declarations/coconequotientdiagiscolimit--219f01cd0711bb5551425dfc.md) | 193 | `declaration-track:219f01cd0711bb5551425dfc51c90c22018e67cd6c4e41678c7e9f99f9dc9438` |
| 11 | `lemma` | [exists_lift_of_quotient_openSubgroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/declarations/exists-lift-of-quotient-opensubgroup--ad71aee075d05bbcfbae8af0.md) | 213 | `result-track:ad71aee075d05bbcfbae8af0a9a438ea084d9b0d7d510014d45cb78f7eb4d2c0` |
| 12 | `theorem` | [exists_lift_of_continuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/declarations/exists-lift-of-continuous--bb86631c2ab45840e7215447.md) | 253 | `result-track:bb86631c2ab45840e72154476828cfc2fa02a9b902c99681b598be3fd6a957a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
