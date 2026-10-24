# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17b596868b11994da8be0db56e187531611209e3",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17b596868b11994da8be0db56e187531611209e3`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DomMulAct](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/dommulact--ba39cc6038845f6d745326f7.md) | 92 | `declaration-track:ba39cc6038845f6d745326f7bc2b88dfb981bd458dec17e97fbbe849fa5076bd` |
| 2 | `def` | [mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/mk--a20a674dd88b84dc25e46313.md) | 101 | `declaration-track:a20a674dd88b84dc25e46313d1e836ea9460f8da6c3b8d2385306eb152ce8077` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--e095190692709c3fcfe275bc.md) | 115 | `declaration-track:e095190692709c3fcfe275bcab966707a8bba27bdf5bec57cced6c0a623aa999` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--b7526fa12ce77938bdd3e096.md) | 118 | `declaration-track:b7526fa12ce77938bdd3e096d0ce48a2e16493ed0881f720b8ec27b5acaef05d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--582c3c1958a01eb47b558059.md) | 119 | `declaration-track:582c3c1958a01eb47b55805921f2f0985921cfe487a9686893186d2edac19584` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--2632626d6d3185c28a92de6f.md) | 120 | `declaration-track:2632626d6d3185c28a92de6fc5b043ef20ac2c9510b0a391924385fc45a16034` |
| 7 | `lemma` | [mk_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/mk-one--2bb0619f42e701b0343d79df.md) | 123 | `result-track:2bb0619f42e701b0343d79df3f02ce2187cd1400f78471e9f1e118a1bf46cb85` |
| 8 | `lemma` | [symm_mk_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/symm-mk-one--606929b9072462bb84e879ed.md) | 126 | `result-track:606929b9072462bb84e879edca34a1a24a4143f56fed15ab04b4896fd637d0fd` |
| 9 | `lemma` | [mk_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/mk-mul--ad6ff8cee8741c8f744df5f4.md) | 129 | `result-track:ad6ff8cee8741c8f744df5f45dd6597712987858038b57200310d2ef722bfe02` |
| 10 | `lemma` | [symm_mk_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/symm-mk-mul--12cc98103723747dd7c95d12.md) | 132 | `result-track:12cc98103723747dd7c95d1266ce03cb834a90da1ba9061754aae2a66aea3e4d` |
| 11 | `lemma` | [mk_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/mk-inv--8ee75904ce7e32b3c39e997b.md) | 135 | `result-track:8ee75904ce7e32b3c39e997b235e45c8d0d842e9dd9a8cfb88d60dc23b47b5cd` |
| 12 | `lemma` | [symm_mk_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/symm-mk-inv--34b46ba0909e53b02cc91bf1.md) | 138 | `result-track:34b46ba0909e53b02cc91bf18c135d776e84c7d9835c0b334eae7ef9f748ce0c` |
| 13 | `lemma` | [mk_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/mk-pow--0044a0ba22cab444ce7b3298.md) | 141 | `result-track:0044a0ba22cab444ce7b3298f6cfe5390705cea14d71a22f605e4e6bb5736f21` |
| 14 | `lemma` | [symm_mk_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/symm-mk-pow--c831413b78111d9bcf31f383.md) | 144 | `result-track:c831413b78111d9bcf31f3836d1d245ff6e4ec3401a653c889eaadeed45aab71` |
| 15 | `lemma` | [mk_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/mk-zpow--9e271be8676d6f1433719fc5.md) | 147 | `result-track:9e271be8676d6f1433719fc542ac5b4be814666daed52e1eec82907c4a68d599` |
| 16 | `lemma` | [symm_mk_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/symm-mk-zpow--318d00abd5f1eacfbfcaa697.md) | 150 | `result-track:318d00abd5f1eacfbfcaa69790141d78ad5644648093cb492e317366839400be` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--b6b738800f267eeb0d49a702.md) | 155 | `declaration-track:b6b738800f267eeb0d49a702473c89a14c4610ed6f769cef94d0242e79436997` |
| 18 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/smul-apply--508540400192add148858f6e.md) | 159 | `result-track:508540400192add148858f6e48b47c904440fc45c903e3dea180fa3410957547` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--26d4a7a72c8e8bed4d8efa4c.md) | 162 | `declaration-track:26d4a7a72c8e8bed4d8efa4cbb01be5ea53f8e9e487f9f346865d77ab31572b2` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--f9439d5e132432506576a18b.md) | 166 | `declaration-track:f9439d5e132432506576a18b7f49756fa7386a0586b66ec0b7994d36be9d78db` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--4aa71c9fb67d0d1e34a2f8f3.md) | 170 | `declaration-track:4aa71c9fb67d0d1e34a2f8f3f5cf01c3d1fa90eeb1cd81ca8579872c63bf5971` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--72762cc076eebbf92f23bbfb.md) | 174 | `declaration-track:72762cc076eebbf92f23bbfb1efde7d675369a23495252264a315b2cf4112f74` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--d3cf1a80a0d597cb6f7b794e.md) | 182 | `declaration-track:d3cf1a80a0d597cb6f7b794ed389861663e2910c3ac2dd77b7c152089ff532c2` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--69453db347ea46f7199e7abd.md) | 185 | `declaration-track:69453db347ea46f7199e7abd5ba1018dff632739e737d7b90ef3127bd6cdea06` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--4bc1b6ba3e7ad6e061ccafb0.md) | 189 | `declaration-track:4bc1b6ba3e7ad6e061ccafb0d6ae80e9f1394cb3dead6a28011644dcc370f033` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--2042c64e781317f894bbafa1.md) | 193 | `declaration-track:2042c64e781317f894bbafa1b0d6c4fa8e5ce96c53f0f6b7dd61f42a47d10657` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--f5ce09aa5ed52b8ae37ed71f.md) | 201 | `declaration-track:f5ce09aa5ed52b8ae37ed71f80b637ce0fbb92492fa05261e2c78a06b720cd06` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--1eca17cf924bdd1ca9533fad.md) | 204 | `declaration-track:1eca17cf924bdd1ca9533fadefe87fccaabdf9b8a5f8c1191671b0cbdc9f1c3f` |
| 29 | `theorem` | [smul_monoidHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/smul-monoidhom-apply--efc97222f69fb0cf62f7eb08.md) | 208 | `result-track:efc97222f69fb0cf62f7eb0892a479946e5b1e8351c9aaae94cb72318df3d638` |
| 30 | `theorem` | [mk_smul_monoidHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/mk-smul-monoidhom-apply--643cc9caa0edcb77a2e4d5aa.md) | 212 | `result-track:643cc9caa0edcb77a2e4d5aa57b44292b3086b5a2ed851f012676a0b89e1e7d8` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--b891afd4c9b6a2dbc7943bf0.md) | 214 | `declaration-track:b891afd4c9b6a2dbc7943bf0a6fdc33bad271c9e1566968dadf881582c33ec7a` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--bcfd9fe08489ccd608603584.md) | 224 | `declaration-track:bcfd9fe08489ccd608603584aa68bdadb70b1e13f59283b909b6b6479123254b` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--82a08de4bbd0977e21673dc5.md) | 227 | `declaration-track:82a08de4bbd0977e21673dc57fcbdd38d8d0fe78d454aefc040f071b97fd67ee` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--0466657fe20c496794db673e.md) | 230 | `declaration-track:0466657fe20c496794db673e7974c869d2805291226c842d011286307d1fbb96` |
| 35 | `theorem` | [smul_addMonoidHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/smul-addmonoidhom-apply--524a929bcd1ddb58ba797130.md) | 233 | `result-track:524a929bcd1ddb58ba7971301dac95c8adfa6740a2c55089c3f2764c59589d3e` |
| 36 | `theorem` | [mk_smul_addMonoidHom_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/mk-smul-addmonoidhom-apply--11bdcb59096ee68d3cbf5c88.md) | 237 | `result-track:11bdcb59096ee68d3cbf5c88f6eeea88cf1ed7d5e74e2627114529dd5ac55233` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--c65916a36584d83cb630b214.md) | 241 | `declaration-track:c65916a36584d83cb630b2143c76c994c8e634b866157a21e005451fabb4d64b` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant675e5f0c411c92631a33b3e7ba4f00f522a8269ad93337ad42e689990f45dc5f.lean/declarations/instance--dbe2e6feb1128dfb825abfa9.md) | 244 | `declaration-track:dbe2e6feb1128dfb825abfa96052fbd444160f8bfb29a0dabb9b99b5a1aef88c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
