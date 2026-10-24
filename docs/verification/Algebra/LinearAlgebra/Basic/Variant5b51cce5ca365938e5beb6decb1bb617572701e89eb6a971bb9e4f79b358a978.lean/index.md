# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db4c889b1149f5b2b4a567d0913aa896612df039",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db4c889b1149f5b2b4a567d0913aa896612df039`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean.json)

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
| 1 | `structure` | [Basis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/basis--c718a49a601edeb50cf01025.md) | 52 | `declaration-track:c718a49a601edeb50cf01025276f52a6fe71ddcbfe9450f5aef8974f4c81b617` |
| 2 | `lemma` | [A_diag_eq_two](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/a-diag-eq-two--3caefbf015491c9f91f1eb11.md) | 79 | `result-track:3caefbf015491c9f91f1eb116ccbe616d0eb3e3c08be7feacb6cb2094435b360` |
| 3 | `lemma` | [coe_cartan_eq_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/coe-cartan-eq-span--07f1fee3a10352970d7f8a4d.md) | 85 | `result-track:07f1fee3a10352970d7f8a4d80ec6e5ae50e069fbc4fd086c1c2a50e98996eb5` |
| 4 | `theorem` | [isLieAbelian_cartan](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/islieabelian-cartan--36ad76b3db2037e4954e3cfd.md) | 93 | `result-track:36ad76b3db2037e4954e3cfd0309c59ab7a90fc11f9e47fcdb81ec58d67fb827` |
| 5 | `def` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/symm--ce2baba572092cf8086b9cda.md) | 100 | `declaration-track:ce2baba572092cf8086b9cdaebb30dd036609265e7f6a426c661daa05cdd902c` |
| 6 | `lemma` | [symm_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/symm-symm--08048ee139d81dcf0edba27d.md) | 117 | `result-track:08048ee139d81dcf0edba27d093c36c9ea747fcf72543772ed08326319a9bd1b` |
| 7 | `def` | [h'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/h--8515d2afb63bac7c56d2d34d.md) | 120 | `declaration-track:8515d2afb63bac7c56d2d34d224e7d79fee7246038099da24de90f550ce11543` |
| 8 | `lemma` | [symm_h'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/symm-h--2779f28f931f2916fd9d0dfd.md) | 122 | `result-track:2779f28f931f2916fd9d0dfd976565fec62b079a10dd4beee3f7e324dd087f1c` |
| 9 | `lemma` | [cartan_lie_mem_lieSpan_e](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/cartan-lie-mem-liespan-e--7bb68cb007452300f497ca1b.md) | 124 | `result-track:7bb68cb007452300f497ca1b48fe2f20050dfeed1d060c398bf06008174a2343` |
| 10 | `def` | [borelUpper](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/borelupper--08cd733ad2a128026005893a.md) | 147 | `declaration-track:08cd733ad2a128026005893afdc38104f6a85145854726709ae4cbc14a78e042` |
| 11 | `def` | [borelLower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/borellower--4b849d0bde25eb06e681e818.md) | 154 | `declaration-track:4b849d0bde25eb06e681e81804aa3e3d0250efe7c42a1eb8aa9d9fbd7ef7efcb` |
| 12 | `lemma` | [iSup_cartan_borelLower_borelUpper_eq_top_aux](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/isup-cartan-borellower-borelupper-eq-top-aux--0cacd39131cd145ed024ae44.md) | 158 | `result-track:0cacd39131cd145ed024ae44497ae2a18260938da567e4a1bfa36654459e221d` |
| 13 | `lemma` | [iSup_cartan_borelLower_borelUpper_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/isup-cartan-borellower-borelupper-eq-top--8c2ab7d10795fac2ea9ab376.md) | 220 | `result-track:8c2ab7d10795fac2ea9ab3764f986a467a106821cc70f650bffe0be512865ee6` |
| 14 | `def` | [baseSupp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/basesupp--0f2fa25a13ede359ee3580e3.md) | 261 | `declaration-track:0f2fa25a13ede359ee3580e3427128b7d00a374a0db539a2a548553d56e38bcb` |
| 15 | `lemma` | [baseSupp_apply_h'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/basesupp-apply-h--ec2ee17f5b378580a4f2b807.md) | 265 | `result-track:ec2ee17f5b378580a4f2b807d904997110f242354d632c9ba76d17f9e48ed758` |
| 16 | `lemma` | [symm_baseSupp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/symm-basesupp--18b1017cddc817b066320e77.md) | 279 | `result-track:18b1017cddc817b066320e778e452d6fd508ec4c7ceded27a61658ce053cd869` |
| 17 | `lemma` | [linearIndependent_baseSupp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/linearindependent-basesupp--25d687aaddfa9934351d7ec5.md) | 292 | `result-track:25d687aaddfa9934351d7ec529264bca4dafd51ff2438aed449077d236f54e28` |
| 18 | `lemma` | [baseSupp_apply_smul_e](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/basesupp-apply-smul-e--f656295511b7067206db1d6a.md) | 303 | `result-track:f656295511b7067206db1d6aeaad7c41c74d063881c0465281129005f93b1259` |
| 19 | `lemma` | [baseSupp_apply_smul_f](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/basesupp-apply-smul-f--906a7013c7d53eee33ac40a7.md) | 324 | `result-track:906a7013c7d53eee33ac40a79ca39a0b8cc5b70acbfda808d262e8fabb344c73` |
| 20 | `lemma` | [borelUpper_le_biSup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/borelupper-le-bisup--78e517b1c338967130b545e5.md) | 334 | `result-track:78e517b1c338967130b545e5776975bd1b26913c24c39b83cce27c82cc2102ab` |
| 21 | `lemma` | [borelLower_le_biSup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/borellower-le-bisup--e132a0253f6d522dd32d3f70.md) | 378 | `result-track:e132a0253f6d522dd32d3f70c43e1fce195999dbf0c74d8230e8fbf63aa669b7` |
| 22 | `lemma` | [cartan_borelLower_borelUpper_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/cartan-borellower-borelupper-le--d64e3d8e7e68bb79bf06444c.md) | 383 | `result-track:d64e3d8e7e68bb79bf06444c04582d4c45105816cd05e15b7cc22a9db68a0f04` |
| 23 | `lemma` | [iSupIndep_rootSpace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/isupindep-rootspace--68d084feb57bdcbaad497361.md) | 397 | `result-track:68d084feb57bdcbaad49736165489f57bcf311ccdb76ce86c8213136291bde85` |
| 24 | `lemma` | [cartan_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/cartan-eq--a1b7b00e7bc206b2302c90b8.md) | 470 | `result-track:a1b7b00e7bc206b2302c90b81cd217abbb027bae1242cf34b74e05289ebdf8c0` |
| 25 | `lemma` | [borelLower_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/borellower-eq--3f17052ff626b852b04030d6.md) | 476 | `result-track:3f17052ff626b852b04030d6c94c22e85e0e72ff3143b38f94b1613375913365` |
| 26 | `lemma` | [borelUpper_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/borelupper-eq--c15e262fc20cb25484733b13.md) | 482 | `result-track:c15e262fc20cb25484733b13e10b4fcd554459096c77ee241c78849a62af4e84` |
| 27 | `lemma` | [isCartanSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/declarations/iscartansubalgebra--ae5c46ef2943cd1d55d1b0e3.md) | 490 | `result-track:ae5c46ef2943cd1d55d1b0e3b728e453c277fa6db63fa2c412636b7d9f62ca48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
