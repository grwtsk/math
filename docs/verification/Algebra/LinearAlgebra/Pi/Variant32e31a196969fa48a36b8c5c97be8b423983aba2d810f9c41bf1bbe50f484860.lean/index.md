# Verification target: GRWTSK.Algebra.LinearAlgebra.Pi.Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4648d1d4f1687f4695fa3e89ac84f6fd2afdb046",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4648d1d4f1687f4695fa3e89ac84f6fd2afdb046`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piRightHomBil](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/declarations/pirighthombil--9625c371df69118d5d237218.md) | 42 | `declaration-track:9625c371df69118d5d23721837062d707be8812450df0ba579d180fded3390ce` |
| 2 | `def` | [piRightHom](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/declarations/pirighthom--442fd9261491c9d638cc6e53.md) | 51 | `declaration-track:442fd9261491c9d638cc6e53e056bac5f2af57d9a05874344f4ea0ee0102ea17` |
| 3 | `lemma` | [piRightHom_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/declarations/pirighthom-tmul--22615273ede4f09c41197c21.md) | 55 | `result-track:22615273ede4f09c41197c216df854e581749c8f1463401bcff78578213af5d6` |
| 4 | `def` | [piRightInv](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/declarations/pirightinv--b387f232b6397529d6a23f65.md) | 62 | `declaration-track:b387f232b6397529d6a23f656c92e1d5367f402d3b8091d49a9ce322b9d2e646` |
| 5 | `lemma` | [piRightInv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/declarations/pirightinv-apply--ab1418e7a4f217efd6ae539f.md) | 67 | `result-track:ab1418e7a4f217efd6ae539f9eee1fba2ca9cc74baf1f3cb337c7827a509cc9e` |
| 6 | `lemma` | [piRightInv_single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/declarations/pirightinv-single--e679152f3f018af0512d0a45.md) | 77 | `result-track:e679152f3f018af0512d0a4579f8922e1fef1ade85c1ba690c41e329366a3506` |
| 7 | `def` | [piRight](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/declarations/piright--79e9b2963a317abf5dce8594.md) | 86 | `declaration-track:79e9b2963a317abf5dce8594c5c8a4eb66476cf4a5290d6f49d44c7d8b764cfb` |
| 8 | `lemma` | [piRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/declarations/piright-apply--407bd542cbd8870e6edff5a6.md) | 94 | `result-track:407bd542cbd8870e6edff5a6da435f8112c683a30328bd82301995ad36188f6c` |
| 9 | `lemma` | [piRight_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/declarations/piright-symm-apply--ec06c1ba081af4ad6a5567bf.md) | 99 | `result-track:ec06c1ba081af4ad6a5567bf54e1b0efacf4c566ea7a936788531eab9832bb54` |
| 10 | `lemma` | [piRight_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/declarations/piright-symm-single--6e87f97950f16cd20f5b5e97.md) | 104 | `result-track:6e87f97950f16cd20f5b5e974f449541528cea38615b0a9752972dad5938aae6` |
| 11 | `def` | [piScalarRightHomBil](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/declarations/piscalarrighthombil--5598af132fa99986682b52f4.md) | 110 | `declaration-track:5598af132fa99986682b52f48fd7da98c5b942360a922d454ebcc56076f9b861` |
| 12 | `def` | [piScalarRightHom](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/declarations/piscalarrighthom--f33b2f85a51951978ff5418e.md) | 124 | `declaration-track:f33b2f85a51951978ff5418e8bdf6034f5dd42f21c9b1c0d889d2cca19497ee0` |
| 13 | `lemma` | [piScalarRightHom_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/declarations/piscalarrighthom-tmul--39f7621d43de8fb80797a6d7.md) | 128 | `result-track:39f7621d43de8fb80797a6d74e22a2352a50d5cfbd05dbdd20ce34fb98f6fb92` |
| 14 | `def` | [piScalarRightInv](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/declarations/piscalarrightinv--b4c670c2e12c35f7706a8e41.md) | 136 | `declaration-track:b4c670c2e12c35f7706a8e41790b9a2ff9f0fdffd59c3869dc23966dabc7dc4d` |
| 15 | `lemma` | [piScalarRightInv_single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/declarations/piscalarrightinv-single--b3cb79a0c56371113ba096ec.md) | 144 | `result-track:b3cb79a0c56371113ba096ec5dcf44a5920d85d01bbd834862489d4cc5756fd7` |
| 16 | `def` | [piScalarRight](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/declarations/piscalarright--880705039c831c23dd9ea287.md) | 150 | `declaration-track:880705039c831c23dd9ea2878c86a7757644ace774f10c96ae1250a53052286f` |
| 17 | `lemma` | [piScalarRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/declarations/piscalarright-apply--7e5fc42189a2134c2e047efb.md) | 158 | `result-track:7e5fc42189a2134c2e047efb25d2bcc31c7ed4c72747a80818e51d50705cbe49` |
| 18 | `lemma` | [piScalarRight_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant32e31a196969fa48a36b8c5c97be8b423983aba2d810f9c41bf1bbe50f484860.lean/declarations/piscalarright-symm-single--6e04b06aa795e76abbe15b8b.md) | 163 | `result-track:6e04b06aa795e76abbe15b8b83c728bddd3df3ab02ae7220d107ac51203f7627` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
