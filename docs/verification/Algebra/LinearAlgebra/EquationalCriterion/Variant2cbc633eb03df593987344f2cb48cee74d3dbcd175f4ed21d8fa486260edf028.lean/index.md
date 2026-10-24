# Verification target: GRWTSK.Algebra.LinearAlgebra.EquationalCriterion.Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19b54be750c72568162d817d87416d94f9298328",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19b54be750c72568162d817d87416d94f9298328`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Flat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Vanishing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.FinitePresentation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsTrivialRelation](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/declarations/istrivialrelation--dfed74afca09ef6281ddb1d9.md) | 71 | `declaration-track:dfed74afca09ef6281ddb1d92ebaaa9874c761a3425536cfb2286ef6d6d01b4a` |
| 2 | `theorem` | [isTrivialRelation_iff_vanishesTrivially](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/declarations/istrivialrelation-iff-vanishestrivially--40e519721f8df50bd0a3d287.md) | 79 | `result-track:40e519721f8df50bd0a3d287f1f7d955646b282fe19fb962aaaf4f91b8cee1cb` |
| 3 | `theorem` | [_root_.Equiv.isTrivialRelation_comp](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/declarations/root-equiv-istrivialrelation-comp--d7e2986ee2ba3d482d2cd4bf.md) | 83 | `result-track:d7e2986ee2ba3d482d2cd4bf66d2e283d2484e1a70b8b1dce9edd43885f52f3a` |
| 4 | `theorem` | [sum_smul_eq_zero_of_isTrivialRelation](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/declarations/sum-smul-eq-zero-of-istrivialrelation--7c49759c339052fbd2452aa2.md) | 89 | `result-track:7c49759c339052fbd2452aa212ef9dfee6ec30b432e0544643bb520325c6c96f` |
| 5 | `theorem` | [tfae_equational_criterion](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/declarations/tfae-equational-criterion--d7cecc265f110ef8ca89d30a.md) | 113 | `result-track:d7cecc265f110ef8ca89d30ac857342f839f33e8587bfebd67480c25d7f7ca41` |
| 6 | `theorem` | [iff_forall_isTrivialRelation](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/declarations/iff-forall-istrivialrelation--e18f75b984126c41ed480f38.md) | 167 | `result-track:e18f75b984126c41ed480f3869f5bfc5b2d6728afb40f96221c9f13d8e696c03` |
| 7 | `theorem` | [isTrivialRelation_of_sum_smul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/declarations/istrivialrelation-of-sum-smul-eq-zero--9e29dff15504419f68b15dc3.md) | 175 | `result-track:9e29dff15504419f68b15dc383546626406893bd461584bdf3bf1806750eed84` |
| 8 | `theorem` | [of_forall_isTrivialRelation](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/declarations/of-forall-istrivialrelation--5f68ed4ebe6c15502dffd263.md) | 184 | `result-track:5f68ed4ebe6c15502dffd26369267720193334f099339ddbe8fa49b433dcd277` |
| 9 | `theorem` | [iff_forall_exists_factorization](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/declarations/iff-forall-exists-factorization--af4b3f2d69fc5e9d83e36d22.md) | 195 | `result-track:af4b3f2d69fc5e9d83e36d226553938cf013822c8cd140a85d2b5194db91c591` |
| 10 | `theorem` | [of_forall_exists_factorization](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/declarations/of-forall-exists-factorization--eabc59dbbaa1cc25187e8b8a.md) | 207 | `result-track:eabc59dbbaa1cc25187e8b8ae53adbd934f75e9b34d080c58fbf2b18fc00ff08` |
| 11 | `theorem` | [exists_factorization_of_apply_eq_zero_of_free](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/declarations/exists-factorization-of-apply-eq-zero-of-free--8cc0809b87370a03829da42c.md) | 219 | `result-track:8cc0809b87370a03829da42c0f5f91e49a3d9e80f8486cc7e4cb98fb69e5f4bd` |
| 12 | `theorem` | [exists_factorization_of_comp_eq_zero_of_free_aux](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/declarations/exists-factorization-of-comp-eq-zero-of-free-aux--79bc13f86041cf9aeeb76d19.md) | 230 | `result-track:79bc13f86041cf9aeeb76d194e1038078b776ae74e6e7f3bfae818ddc040b723` |
| 13 | `theorem` | [exists_factorization_of_comp_eq_zero_of_free](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/declarations/exists-factorization-of-comp-eq-zero-of-free--173555b55cff278d3a9da783.md) | 258 | `result-track:173555b55cff278d3a9da783943f6d6b83d8b87fb5fdb034a0020ee12460880f` |
| 14 | `theorem` | [exists_factorization_of_isFinitelyPresented](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/declarations/exists-factorization-of-isfinitelypresented--bbb7653867eec8b8686390df.md) | 272 | `result-track:bbb7653867eec8b8686390dfa2c7bf4ff9688e0309043ca0185fcc5921c0b8d4` |
| 15 | `theorem` | [projective_of_finitePresentation](../../../../../mathematics/Algebra/LinearAlgebra/EquationalCriterion/Variant2cbc633eb03df593987344f2cb48cee74d3dbcd175f4ed21d8fa486260edf028.lean/declarations/projective-of-finitepresentation--83299b1fb88766ae53054583.md) | 286 | `result-track:83299b1fb88766ae53054583d1b29d2c5873f22d18b5a732686af363d52d259a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
