# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Valuation.Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58592676acc0596675f52af5a51b17a2916304d1",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58592676acc0596675f52af5a51b17a2916304d1`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inftyValuationDef](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/inftyvaluationdef--629856ebc5dd8aefa432ecb0.md) | 51 | `declaration-track:629856ebc5dd8aefa432ecb0e9aeefa3ea7e4d90deda4319496a7d0f4d2c6fc4` |
| 2 | `theorem` | [InftyValuation.map_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/inftyvaluation-map-zero--0ede673b9a6f4046f7191dbd.md) | 54 | `result-track:0ede673b9a6f4046f7191dbd6e36cde40e733bc6bc9a3468a9155561f2b358f1` |
| 3 | `theorem` | [InftyValuation.map_one'](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/inftyvaluation-map-one--9e20d5fc5732cff4aa317b6e.md) | 57 | `result-track:9e20d5fc5732cff4aa317b6eee05149ba359fed2467fb95b07872e10dfb80f2f` |
| 4 | `theorem` | [InftyValuation.map_mul'](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/inftyvaluation-map-mul--43136b216d9d235763bb7291.md) | 60 | `result-track:43136b216d9d235763bb7291fb0f7e83fb4afaca5dff1dac7de3ec72346dab0e` |
| 5 | `theorem` | [InftyValuation.map_add_le_max'](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/inftyvaluation-map-add-le-max--4bf63f705c9b6b19f443cacd.md) | 69 | `result-track:4bf63f705c9b6b19f443cacdcf7e26e40e36dd6817ad57594f837f1d94b70d1b` |
| 6 | `theorem` | [inftyValuation_of_nonzero](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/inftyvaluation-of-nonzero--0f91b2675a93269bca0b8a9b.md) | 76 | `result-track:0f91b2675a93269bca0b8a9b5f1636cdf168956b745a28b0cec9214af07cc484` |
| 7 | `def` | [inftyValuation](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/inftyvaluation--d65b86f8cb36d1ac14e8ccc7.md) | 81 | `declaration-track:d65b86f8cb36d1ac14e8ccc77ddfa719f0699d272f4eb06c2e8b217858fdc348` |
| 8 | `theorem` | [inftyValuation_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/inftyvaluation-apply--40cf352d65b3cb22e7f3438b.md) | 88 | `result-track:40cf352d65b3cb22e7f3438bc23b1112df6fc7bb2aecb2088b6b4af9e0ef5885` |
| 9 | `theorem` | [inftyValuation.C](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/inftyvaluation-c--cc697f8e5c70f2a98e175350.md) | 92 | `result-track:cc697f8e5c70f2a98e1753504dbfb56f6631e08abf4a68824ace4d0d196e6524` |
| 10 | `theorem` | [inftyValuation.X](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/inftyvaluation-x--9d9ca70954c3ea15862b9dfb.md) | 97 | `result-track:9d9ca70954c3ea15862b9dfb06e66cbc3ab6f9101283c6d8f21f675204bcf811` |
| 11 | `lemma` | [inftyValuation.X_zpow](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/inftyvaluation-x-zpow--c1e29ef2d1051df4ddb3f052.md) | 101 | `result-track:c1e29ef2d1051df4ddb3f05237e880962c28c28d4173a513aea6d76dc2d7c656` |
| 12 | `theorem` | [inftyValuation.X_inv](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/inftyvaluation-x-inv--85e3f69ceaaa67229bfd7546.md) | 103 | `result-track:85e3f69ceaaa67229bfd7546d3f26ea9640dbde49d531c5aadcacce83bb3f9da` |
| 13 | `theorem` | [inftyValuation.polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/inftyvaluation-polynomial--c75819c16e1bd124843fc7ca.md) | 108 | `result-track:c75819c16e1bd124843fc7ca8321f74f574122d9857b014f094a86e3752eb15e` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/instance--af6ad2d36208702fd65dd3ae.md) | 112 | `declaration-track:af6ad2d36208702fd65dd3aef0aed63fa6b4cd4081a83855bc544bbfc0f64d68` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/instance--ac59beec9606d846e04d5aeb.md) | 114 | `declaration-track:ac59beec9606d846e04d5aeba03823626e7bf60bbb6caee5d4fd320784a8115f` |
| 16 | `def` | [inftyValued](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/inftyvalued--838f3728bc9df2f0ffd67c2c.md) | 119 | `declaration-track:838f3728bc9df2f0ffd67c2cb4e3d972fa0f5de007f9a7e29745a035c2c1c34c` |
| 17 | `theorem` | [inftyValued.def](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/inftyvalued-def--27036ead80dd24403d0be928.md) | 122 | `result-track:27036ead80dd24403d0be928213680a9bd36ca1a2d2831c48ca69ef34bf24527` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/instance--ee793b18ec4085834b3354bb.md) | 135 | `declaration-track:ee793b18ec4085834b3354bbd1f4fcd168d01031f2ed3e20305ad550dd1e0f8a` |
| 19 | `def` | [_root_.RatFunc.CompletionAtInfty](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/root-ratfunc-completionatinfty--585596ccf8c439834ad18022.md) | 138 | `declaration-track:585596ccf8c439834ad180227e840ec11cb9fb0f323eefc781804001ec64bb69` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/instance--19a9bd6b4b7b47d2df844cca.md) | 142 | `declaration-track:19a9bd6b4b7b47d2df844cca80eecbd48296b7f5112be58dfb6016a4cdf2ae5b` |
| 21 | `theorem` | [valuedCompletionAtInfty.def](../../../../../mathematics/Algebra/CommutativeAlgebra/Valuation/Variant40555bfe3ac5ec2510aa04f47980923dfe24a33882c79897f4009e3c97101d55.lean/declarations/valuedcompletionatinfty-def--3e5e0dc151cab77b26950a96.md) | 147 | `result-track:3e5e0dc151cab77b26950a96d60716ca37733e512bd7b5e279f0ca0f8b8af2e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
