# Verification target: GRWTSK.Algebra.Engel.Varianta9199f37c7e251346b017aa56f4068262281a6645db049e817a9821a07f9aaf2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fff67cc20e6c2b041ec6061a333461f1ae4b975",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Engel/Varianta9199f37c7e251346b017aa56f4068262281a6645db049e817a9821a07f9aaf2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Engel/Varianta9199f37c7e251346b017aa56f4068262281a6645db049e817a9821a07f9aaf2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Engel/Varianta9199f37c7e251346b017aa56f4068262281a6645db049e817a9821a07f9aaf2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fff67cc20e6c2b041ec6061a333461f1ae4b975`.

Source path: `GRWTSK/Algebra/Engel/Varianta9199f37c7e251346b017aa56f4068262281a6645db049e817a9821a07f9aaf2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Engel/Varianta9199f37c7e251346b017aa56f4068262281a6645db049e817a9821a07f9aaf2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_smul_add_of_span_sup_eq_top](../../../../mathematics/Algebra/Engel/Varianta9199f37c7e251346b017aa56f4068262281a6645db049e817a9821a07f9aaf2.lean/declarations/exists-smul-add-of-span-sup-eq-top--2dd9379316ad70aa344f6cf2.md) | 86 | `result-track:2dd9379316ad70aa344f6cf271efb7451de4e93396fd1c76cc7f49d07a3b2378` |
| 2 | `theorem` | [lie_top_eq_of_span_sup_eq_top](../../../../mathematics/Algebra/Engel/Varianta9199f37c7e251346b017aa56f4068262281a6645db049e817a9821a07f9aaf2.lean/declarations/lie-top-eq-of-span-sup-eq-top--db25f86e2345f8ccbf073a32.md) | 92 | `result-track:db25f86e2345f8ccbf073a327af3411f708dc54b02e344d23a1474749986d507` |
| 3 | `theorem` | [lcs_le_lcs_of_is_nilpotent_span_sup_eq_top](../../../../mathematics/Algebra/Engel/Varianta9199f37c7e251346b017aa56f4068262281a6645db049e817a9821a07f9aaf2.lean/declarations/lcs-le-lcs-of-is-nilpotent-span-sup-eq-top--b1eb950f4c71ee028ac1f0c4.md) | 107 | `result-track:b1eb950f4c71ee028ac1f0c4530e3e03ac075b34b22e177bad77aecad50c3bd7` |
| 4 | `theorem` | [isNilpotentOfIsNilpotentSpanSupEqTop](../../../../mathematics/Algebra/Engel/Varianta9199f37c7e251346b017aa56f4068262281a6645db049e817a9821a07f9aaf2.lean/declarations/isnilpotentofisnilpotentspansupeqtop--97e7451f6216584bbe15ac13.md) | 132 | `result-track:97e7451f6216584bbe15ac133ecae383760905479fc66875d10ba7ed19273cd8` |
| 5 | `def` | [LieAlgebra.IsEngelian](../../../../mathematics/Algebra/Engel/Varianta9199f37c7e251346b017aa56f4068262281a6645db049e817a9821a07f9aaf2.lean/declarations/liealgebra-isengelian--3efd2fcc361c0ea2fa539de2.md) | 160 | `declaration-track:3efd2fcc361c0ea2fa539de25b165c6f3bc57bd82a27190732362ac54719f767` |
| 6 | `theorem` | [LieAlgebra.isEngelian_of_subsingleton](../../../../mathematics/Algebra/Engel/Varianta9199f37c7e251346b017aa56f4068262281a6645db049e817a9821a07f9aaf2.lean/declarations/liealgebra-isengelian-of-subsingleton--f4ceecc938574d993476ca47.md) | 166 | `result-track:f4ceecc938574d993476ca474c13686350b77c2c7209ed5cc87ef35eee9cc5af` |
| 7 | `theorem` | [Function.Surjective.isEngelian](../../../../mathematics/Algebra/Engel/Varianta9199f37c7e251346b017aa56f4068262281a6645db049e817a9821a07f9aaf2.lean/declarations/function-surjective-isengelian--84d9e118c34d2665fa2878e1.md) | 171 | `result-track:84d9e118c34d2665fa2878e19bdc39d5f2f356a8d2dcf4f30352c8bf8c2796d9` |
| 8 | `theorem` | [LieEquiv.isEngelian_iff](../../../../mathematics/Algebra/Engel/Varianta9199f37c7e251346b017aa56f4068262281a6645db049e817a9821a07f9aaf2.lean/declarations/lieequiv-isengelian-iff--cdc1d5a469a91961528a62fb.md) | 182 | `result-track:cdc1d5a469a91961528a62fbe8a2ae8f08872c60f49ec2885f59c2fa157bbaf8` |
| 9 | `theorem` | [LieAlgebra.exists_engelian_lieSubalgebra_of_lt_normalizer](../../../../mathematics/Algebra/Engel/Varianta9199f37c7e251346b017aa56f4068262281a6645db049e817a9821a07f9aaf2.lean/declarations/liealgebra-exists-engelian-liesubalgebra-of-lt-normalizer--19929f1db7c7ac223116dca1.md) | 186 | `result-track:19929f1db7c7ac223116dca10d0dbc225015dcf7f31b3b7f8de74a266e6844d9` |
| 10 | `theorem` | [LieAlgebra.isEngelian_of_isNoetherian](../../../../mathematics/Algebra/Engel/Varianta9199f37c7e251346b017aa56f4068262281a6645db049e817a9821a07f9aaf2.lean/declarations/liealgebra-isengelian-of-isnoetherian--9f8e87fae3c568b5269d11ea.md) | 222 | `result-track:9f8e87fae3c568b5269d11ea9817f8125c0e3de38f8f748f8dffb3cee12b1838` |
| 11 | `theorem` | [LieModule.isNilpotent_iff_forall](../../../../mathematics/Algebra/Engel/Varianta9199f37c7e251346b017aa56f4068262281a6645db049e817a9821a07f9aaf2.lean/declarations/liemodule-isnilpotent-iff-forall--194034a0a97a8105a6d57db3.md) | 264 | `result-track:194034a0a97a8105a6d57db31a0b8129a2dc262e27eec6f766785ccce97ba2c7` |
| 12 | `theorem` | [LieModule.isNilpotent_iff_forall'](../../../../mathematics/Algebra/Engel/Varianta9199f37c7e251346b017aa56f4068262281a6645db049e817a9821a07f9aaf2.lean/declarations/liemodule-isnilpotent-iff-forall--713a435bc72b86d342f6516f.md) | 270 | `result-track:713a435bc72b86d342f6516f6f0c8598647fa6ece9b5a0e5c59863db210646f3` |
| 13 | `theorem` | [LieAlgebra.isNilpotent_iff_forall](../../../../mathematics/Algebra/Engel/Varianta9199f37c7e251346b017aa56f4068262281a6645db049e817a9821a07f9aaf2.lean/declarations/liealgebra-isnilpotent-iff-forall--24433e08466723b67594e717.md) | 275 | `result-track:24433e08466723b67594e7177ad9b88f6b958759208625219779b8410e919f97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
