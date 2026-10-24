# Verification target: GRWTSK.Algebra.LinearAlgebra.VectorSpace.Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1f20e3d0c2150fd4a57c503f59065e809d11e9e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1f20e3d0c2150fd4a57c503f59065e809d11e9e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DFinsupp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean/declarations/basis--be45a4d44ba4cd78615a5722.md) | 33 | `declaration-track:be45a4d44ba4cd78615a5722fe65b30bf875989b466542c7f602177bdfd90f3a` |
| 2 | `instance` | [_root_.Module.Free.dfinsupp](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean/declarations/root-module-free-dfinsupp--80f670e5fc1d09a7a0339792.md) | 39 | `declaration-track:80f670e5fc1d09a7a033979259cad7dfe4deff6e12ae5933d8202172b634046f` |
| 3 | `theorem` | [linearIndependent_single](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean/declarations/linearindependent-single--f2c3ccf6b37d738d63733915.md) | 46 | `result-track:f2c3ccf6b37d738d63733915cbcbd1985190f5d68e6ce72c1b4435d6091c909a` |
| 4 | `lemma` | [linearIndependent_single_iff](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean/declarations/linearindependent-single-iff--b1e4fe049dbc1f17cc166d47.md) | 55 | `result-track:b1e4fe049dbc1f17cc166d475d85659c8869d50c1f92bbf5d39abbe5c52ed5ec` |
| 5 | `theorem` | [linearIndependent_single](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean/declarations/linearindependent-single--87848275a02e2010379ea883.md) | 69 | `result-track:87848275a02e2010379ea8832afdf17f1d4f4f9cc733681bf27447b379e52777` |
| 6 | `lemma` | [linearIndependent_single_iff](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean/declarations/linearindependent-single-iff--dac254e1b5b905638ef3ae3a.md) | 77 | `result-track:dac254e1b5b905638ef3ae3a01d6964afea6a690dbf0ab1266b9b9a230ede0bd` |
| 7 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean/declarations/basis--e4d022892c017c79e8cf98b2.md) | 86 | `declaration-track:e4d022892c017c79e8cf98b2906eae664b050d9a6820d20caa5e4a4bb1027e3f` |
| 8 | `theorem` | [basis_repr](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean/declarations/basis-repr--2a4a1faf564559f53ecba118.md) | 91 | `result-track:2a4a1faf564559f53ecba118b9d1d968a8e6ab29c69e2382074e2a9e4687170c` |
| 9 | `theorem` | [coe_basis](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean/declarations/coe-basis--bff744a5fe846800b20345ed.md) | 96 | `result-track:bff744a5fe846800b20345ed3466b118b7f566d3abc3d3735c983b483a7757a7` |
| 10 | `instance` | [_root_.Module.Free.finsupp](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean/declarations/root-module-free-finsupp--d07222165301f48ea9b122be.md) | 107 | `declaration-track:d07222165301f48ea9b122be8aa6fcd47577866cb219bfe0241f1904ce4f73a8` |
| 11 | `def` | [basisSingleOne](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean/declarations/basissingleone--40e25a0b192a7af23dd71842.md) | 112 | `declaration-track:40e25a0b192a7af23dd718427081b6f833ae24b69046d92817fe32b47ae9b1db` |
| 12 | `theorem` | [coe_basisSingleOne](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean/declarations/coe-basissingleone--46969231a8a2e2c2e6ed935b.md) | 116 | `result-track:46969231a8a2e2c2e6ed935bbee5bb7e675d1ef3b84c69b93fa6951d861a941c` |
| 13 | `lemma` | [linearIndependent_single_one](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean/declarations/linearindependent-single-one--aeb799ee86e769883f6903e5.md) | 120 | `result-track:aeb799ee86e769883f6903e5fd7a68d2866696383b6dd6875fb52ee6a9d4d8a9` |
| 14 | `lemma` | [linearIndependent_single_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean/declarations/linearindependent-single-of-ne-zero--e5d552b6bc3427186d72625d.md) | 130 | `result-track:e5d552b6bc3427186d72625d2e4de9f69731f1391dd29e6b4d3ed47d60861bba` |
| 15 | `lemma` | [Module.Free.trans](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean/declarations/module-free-trans--6969e8de90f9088a3dacb758.md) | 140 | `result-track:6969e8de90f9088a3dacb758b71067a7e5edf397aa9b2e4619ce4d89588e5c8e` |
| 16 | `theorem` | [_root_.Finset.sum_single_ite](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean/declarations/root-finset-sum-single-ite--d64c1ca0d2339aaf65a2c212.md) | 158 | `result-track:d64c1ca0d2339aaf65a2c212615af69a04c6d0bcb965a316edd31bb129e55225` |
| 17 | `theorem` | [equivFun_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean/declarations/equivfun-symm-single--f0c2718966915e3ef6768ddc.md) | 164 | `result-track:f0c2718966915e3ef6768ddcbe40ee37a561935a9425f2f386267b00653d8bb6` |
| 18 | `theorem` | [Basis.repr_smul'](../../../../../mathematics/Algebra/LinearAlgebra/VectorSpace/Varianteb0d9b7c33b1cfbe454fb4307779ca9114eff68cba687137427d0bb833204251.lean/declarations/basis-repr-smul--4cabe60c92cd2d3ccbe09af0.md) | 177 | `result-track:4cabe60c92cd2d3ccbe09af0478c59d6a183cce75e0804438cab8996459cef34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
