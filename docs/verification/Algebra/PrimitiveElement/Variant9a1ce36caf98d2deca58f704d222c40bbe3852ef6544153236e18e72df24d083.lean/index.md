# Verification target: GRWTSK.Algebra.PrimitiveElement.Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b9546978513fabf1ef67e65f1e08c1933913002",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/index.md) · [Full source](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b9546978513fabf1ef67e65f1e08c1933913002`.

Source path: `GRWTSK/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Pigeonhole` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.SplittingField.Construction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralDomain` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.UniqueFactorization` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_primitive_element_of_finite_top](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/declarations/exists-primitive-element-of-finite-top--08e0bf8b17cbc3d26d58af7d.md) | 63 | `result-track:08e0bf8b17cbc3d26d58af7d21547303736ecf29f14e901714bdce2374ad809c` |
| 2 | `theorem` | [exists_primitive_element_of_finite_bot](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/declarations/exists-primitive-element-of-finite-bot--e83679511e8cab3595903f05.md) | 76 | `result-track:e83679511e8cab3595903f0581963ad452f245f9d86f1646a1ad166d11b6cba9` |
| 3 | `theorem` | [primitive_element_inf_aux_exists_c](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/declarations/primitive-element-inf-aux-exists-c--e831cef53ed336fc37d6f80c.md) | 90 | `result-track:e831cef53ed336fc37d6f80c8be6158ec5cafbc9bedc86bdc6e75ae445de7f91` |
| 4 | `theorem` | [primitive_element_inf_aux](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/declarations/primitive-element-inf-aux--82c60432b07e7d0bb745cc21.md) | 109 | `result-track:82c60432b07e7d0bb745cc218abd4a37eff0e83e97df9c80cabca3638b15ec3e` |
| 5 | `theorem` | [primitive_element_inf_aux_of_finite_intermediateField](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/declarations/primitive-element-inf-aux-of-finite-intermediatefield--de0046f06620ad8c586960db.md) | 179 | `result-track:de0046f06620ad8c586960db4f7a5193441773f83e05bc7fe1db9f02bef411a0` |
| 6 | `theorem` | [exists_primitive_element](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/declarations/exists-primitive-element--5b92cfb0944c7133f7abc0a0.md) | 215 | `result-track:5b92cfb0944c7133f7abc0a0ed85bcb2a3f23ecc2b9c159b2ef9ed0ff5ac23de` |
| 7 | `def` | [powerBasisOfFiniteOfSeparable](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/declarations/powerbasisoffiniteofseparable--95de38b19f84e1756d32495d.md) | 233 | `declaration-track:95de38b19f84e1756d32495dd1e2d8843c5058742999198ca1ea8af10af9fb85` |
| 8 | `theorem` | [isAlgebraic_of_adjoin_eq_adjoin](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/declarations/isalgebraic-of-adjoin-eq-adjoin--910c7e51b8b8ed4408c55dfe.md) | 244 | `result-track:910c7e51b8b8ed4408c55dfed14f85d0983d21d759b256bfedc796b9d5df7296` |
| 9 | `theorem` | [isAlgebraic_of_finite_intermediateField](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/declarations/isalgebraic-of-finite-intermediatefield--e40d694f75a4f135159af934.md) | 275 | `result-track:e40d694f75a4f135159af934906c4e323965dce27078e541fe6a5a429fe84f5f` |
| 10 | `theorem` | [FiniteDimensional.of_finite_intermediateField](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/declarations/finitedimensional-of-finite-intermediatefield--2446c505e96e859948d0376f.md) | 280 | `result-track:2446c505e96e859948d0376f382449974a41be49f0badd6a6328c1273ba09950` |
| 11 | `theorem` | [exists_primitive_element_of_finite_intermediateField](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/declarations/exists-primitive-element-of-finite-intermediatefield--a1126d2a919d7b60dbb638ca.md) | 292 | `result-track:a1126d2a919d7b60dbb638cade228c622d903b26c8d5f87552c1eed35dcede1f` |
| 12 | `theorem` | [FiniteDimensional.of_exists_primitive_element](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/declarations/finitedimensional-of-exists-primitive-element--eadfd5a625fb0d364c09bc0f.md) | 303 | `result-track:eadfd5a625fb0d364c09bc0f4eefa2a2036373bd50fe7b03e540ce0eceaa3803` |
| 13 | `theorem` | [finite_intermediateField_of_exists_primitive_element](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/declarations/finite-intermediatefield-of-exists-primitive-element--7c1ded21df3895c439c46918.md) | 311 | `result-track:7c1ded21df3895c439c4691810d829b9051ebed81bd02d39257a4a2a383e0647` |
| 14 | `theorem` | [exists_primitive_element_iff_finite_intermediateField](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/declarations/exists-primitive-element-iff-finite-intermediatefield--59ab1f18ed309c2285a9eb27.md) | 339 | `result-track:59ab1f18ed309c2285a9eb2799829f180cdf53da4dee9c09cf31389d971794c7` |
| 15 | `theorem` | [AlgHom.card_of_splits](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/declarations/alghom-card-of-splits--b24a926595451f87624e0f00.md) | 353 | `result-track:b24a926595451f87624e0f006f559ba06d3fb3251ea9e7f609cd5539ee29193b` |
| 16 | `theorem` | [AlgHom.card](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/declarations/alghom-card--c3d527c1325d3dd814ab09df.md) | 361 | `result-track:c3d527c1325d3dd814ab09df239585f12ab238e7c07b72d3d4931e79dd22793e` |
| 17 | `theorem` | [primitive_element_iff_minpoly_natDegree_eq](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/declarations/primitive-element-iff-minpoly-natdegree-eq--af8920404684e2ab29913a95.md) | 373 | `result-track:af8920404684e2ab29913a95f8950caa144213fc3c864bee0c48c88693499b9b` |
| 18 | `theorem` | [primitive_element_iff_minpoly_degree_eq](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/declarations/primitive-element-iff-minpoly-degree-eq--bc5c29318ce328c6a0f38b9a.md) | 379 | `result-track:bc5c29318ce328c6a0f38b9a7f6425af98b1009128eed9a33b17e9e9d6c6ecb1` |
| 19 | `theorem` | [primitive_element_iff_algHom_eq_of_eval'](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/declarations/primitive-element-iff-alghom-eq-of-eval--08bec2b33c8b7d0edd023310.md) | 388 | `result-track:08bec2b33c8b7d0edd023310410ad1532ef6e62c392cc1b164e2a82e27820d58` |
| 20 | `theorem` | [primitive_element_iff_algHom_eq_of_eval](../../../../mathematics/Algebra/PrimitiveElement/Variant9a1ce36caf98d2deca58f704d222c40bbe3852ef6544153236e18e72df24d083.lean/declarations/primitive-element-iff-alghom-eq-of-eval--c435514ad07eab06c2281450.md) | 397 | `result-track:c435514ad07eab06c2281450ecadecc12e663575186c91e31d9a19b434b3fdcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
