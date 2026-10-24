# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d172210de9343fa4a7b9f4e1acb8f6188ecce70",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d172210de9343fa4a7b9f4e1acb8f6188ecce70`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Sub.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_tsub_cancel_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/add-tsub-cancel-of-le--420c20644eaaaf849369b24b.md) | 24 | `result-track:420c20644eaaaf849369b24b9b71114c2eb312f40dbaf7cce656c41de46807b1` |
| 2 | `theorem` | [tsub_add_cancel_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-add-cancel-of-le--32fc659559365689add89fec.md) | 29 | `result-track:32fc659559365689add89fec9403b20c4093c1056ee38e0cac3e94eb5c565d8a` |
| 3 | `theorem` | [add_le_of_le_tsub_right_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/add-le-of-le-tsub-right-of-le--89e767545c9693d93a1db5b8.md) | 33 | `result-track:89e767545c9693d93a1db5b800214610eb1f6077d52e3d47e7b8a8b3916c4e70` |
| 4 | `theorem` | [add_le_of_le_tsub_left_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/add-le-of-le-tsub-left-of-le--81bc57353444d7c7abedbce5.md) | 36 | `result-track:81bc57353444d7c7abedbce5bdaba28b63f8934d1bc9d7c20dc9fe63779d0ca3` |
| 5 | `theorem` | [tsub_le_tsub_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-le-tsub-iff-right--169385e806bcaefa64a40571.md) | 39 | `result-track:169385e806bcaefa64a40571a8634ba2158030bf6c3ef9c56e9585d1df6e9e90` |
| 6 | `theorem` | [tsub_left_inj](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-left-inj--010d7de63ee16ab2e348bb02.md) | 42 | `result-track:010d7de63ee16ab2e348bb0254879532e8e1bf45473ee1c74e1500b0a5815f90` |
| 7 | `theorem` | [tsub_inj_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-inj-left--0b0032286a4c975f29fb5f87.md) | 45 | `result-track:0b0032286a4c975f29fb5f87793d249a7d0eaa3d27ad29cbcd83757aeb2a376a` |
| 8 | `theorem` | [lt_of_tsub_lt_tsub_right_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/lt-of-tsub-lt-tsub-right-of-le--e81e4125203a6eeae5d1670f.md) | 49 | `result-track:e81e4125203a6eeae5d1670fb6cca39c92eecd0e078c4f80922ca6c71b69e750` |
| 9 | `theorem` | [tsub_add_tsub_cancel](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-add-tsub-cancel--23ccb80489e5108301fc58c4.md) | 54 | `result-track:23ccb80489e5108301fc58c477b7722a19589687706de1c06367127edeccaf06` |
| 10 | `theorem` | [tsub_tsub_tsub_cancel_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-tsub-tsub-cancel-right--4231622845177356410feb2d.md) | 58 | `result-track:4231622845177356410feb2dc76c44a3609ea15557080a5208e15f446b004e3c` |
| 11 | `theorem` | [eq_tsub_iff_add_eq_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/eq-tsub-iff-add-eq-of-le--175fb888673da60a5251e7d2.md) | 66 | `result-track:175fb888673da60a5251e7d231048f8a302e42996068ee2e8220cf65aee2d5d1` |
| 12 | `theorem` | [tsub_eq_iff_eq_add_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-eq-iff-eq-add-of-le--96504d29f42253bb234d9285.md) | 72 | `result-track:96504d29f42253bb234d928517291ecb7506e96dd5a87a32fd382d7cbc2f92c1` |
| 13 | `theorem` | [add_tsub_assoc_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/add-tsub-assoc-of-le--6ae318634288edca0341fafe.md) | 75 | `result-track:6ae318634288edca0341fafe3afb71394bd3a666d9496fdba451c7d6cd391e55` |
| 14 | `theorem` | [tsub_add_eq_add_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-add-eq-add-tsub--3b3f6d1f87dbc2872a510ef5.md) | 79 | `result-track:3b3f6d1f87dbc2872a510ef52e378557dbedcd33817fc35340ae7e072d6e93a6` |
| 15 | `theorem` | [tsub_tsub_assoc](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-tsub-assoc--4ced2e952e8cca39088d8a05.md) | 82 | `result-track:4ced2e952e8cca39088d8a0510bbd9eed8dc357c0126672c5a0c5593b68f592f` |
| 16 | `theorem` | [tsub_add_tsub_comm](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-add-tsub-comm--80bf73bb21398e69293d49e8.md) | 86 | `result-track:80bf73bb21398e69293d49e89ab76fd047510870881b4b2b66a6102feabad8ee` |
| 17 | `theorem` | [le_tsub_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/le-tsub-iff-left--73df35eb2fdb15b9783a48c7.md) | 90 | `result-track:73df35eb2fdb15b9783a48c7fe220dd234bfd46dc8808977191d15242d822df8` |
| 18 | `theorem` | [le_tsub_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/le-tsub-iff-right--7a944bcb837854b4760d88a3.md) | 93 | `result-track:7a944bcb837854b4760d88a3a03fe608fbc60e307b89f19e8b162fb7829a8cb4` |
| 19 | `theorem` | [tsub_lt_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-lt-iff-left--e049b14afc9bfc103a2ba4f9.md) | 98 | `result-track:e049b14afc9bfc103a2ba4f9667274ff240a6f7b4691a2bc3b8ac87c95047e23` |
| 20 | `theorem` | [tsub_lt_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-lt-iff-right--6816b41c437b064046530bff.md) | 104 | `result-track:6816b41c437b064046530bff7c8a98ccd9c747763e7851b3049596b26ee233d2` |
| 21 | `theorem` | [tsub_lt_iff_tsub_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-lt-iff-tsub-lt--0b3a61e1e6f5177e9fc80fea.md) | 109 | `result-track:0b3a61e1e6f5177e9fc80fea3437f9df31187bd3bea5dc39bc9c8d309326cb42` |
| 22 | `theorem` | [le_tsub_iff_le_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/le-tsub-iff-le-tsub--bd21b91a0e8d958be94171d5.md) | 113 | `result-track:bd21b91a0e8d958be94171d55cdac7a6fbe98442037c8e2c2af0ed2fcdc3ad92` |
| 23 | `theorem` | [lt_tsub_iff_right_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/lt-tsub-iff-right-of-le--7884c05f076ce96f4fcf58c7.md) | 117 | `result-track:7884c05f076ce96f4fcf58c746632592175fe0a98f998a39854822b232f5ad7e` |
| 24 | `theorem` | [lt_tsub_iff_left_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/lt-tsub-iff-left-of-le--c058c930298e049547a733ce.md) | 123 | `result-track:c058c930298e049547a733cebe1a7e3833766ee7e66388c344087a4b3ecfa9c6` |
| 25 | `theorem` | [tsub_inj_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-inj-right--943d07411b6f351359071b7b.md) | 128 | `result-track:943d07411b6f351359071b7bf3e0d9164fa73c7ef9cdadbc5a4466fcef6929c6` |
| 26 | `theorem` | [lt_of_tsub_lt_tsub_left_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/lt-of-tsub-lt-tsub-left-of-le--5c085a11e767680d59a2acd2.md) | 133 | `result-track:5c085a11e767680d59a2acd26039fff9583502334a04bdb855a1d487f5875255` |
| 27 | `theorem` | [tsub_lt_tsub_left_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-lt-tsub-left-of-le--2e8e56af24128ea51e8d0f09.md) | 138 | `result-track:2e8e56af24128ea51e8d0f09dfbba896a08945397b10c01a353ab955f0e5756b` |
| 28 | `theorem` | [tsub_lt_tsub_right_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-lt-tsub-right-of-le--3319686a909f3d04ecd9c724.md) | 142 | `result-track:3319686a909f3d04ecd9c724f238b3232f72bf3a3223ba80975a88783ae82814` |
| 29 | `theorem` | [tsub_lt_tsub_iff_left_of_le_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-lt-tsub-iff-left-of-le-of-le--58d02d2e82ca2c32ae2cbf53.md) | 147 | `result-track:58d02d2e82ca2c32ae2cbf532b6ca13d2e67ed7b895d0ad88d1e0d14de30c6dc` |
| 30 | `lemma` | [add_add_tsub_cancel](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/add-add-tsub-cancel--a535ad1457b81b2801bf9a48.md) | 153 | `result-track:a535ad1457b81b2801bf9a4845ac0fcc15c5a90222dfb6169c6dcbea07ebfccc` |
| 31 | `theorem` | [add_tsub_tsub_cancel](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/add-tsub-tsub-cancel--b1d683c64fcbb67b42931a1b.md) | 158 | `result-track:b1d683c64fcbb67b42931a1b26fd7ca6764fd36c4c95940ffdef703f185b8704` |
| 32 | `theorem` | [tsub_tsub_cancel_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-tsub-cancel-of-le--eb3003cc0198750bdf91858a.md) | 162 | `result-track:eb3003cc0198750bdf91858a97a1317d4cc8485db70653d0b2f8f2a42338506a` |
| 33 | `theorem` | [tsub_tsub_tsub_cancel_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-tsub-tsub-cancel-left--534ed77810370b09e1f352e4.md) | 166 | `result-track:534ed77810370b09e1f352e4c21cb7147bd4ca35b42bc37215b9cdc599ae46a4` |
| 34 | `theorem` | [eq_tsub_iff_add_eq_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/eq-tsub-iff-add-eq-of-le--584b60d8ac0bd7625a5a0e40.md) | 178 | `result-track:584b60d8ac0bd7625a5a0e401de525b48534bcabb76fe4ae2e27d54312a03133` |
| 35 | `theorem` | [tsub_eq_iff_eq_add_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-eq-iff-eq-add-of-le--a84812a29458ee9417622033.md) | 181 | `result-track:a84812a29458ee94176220331b4cfb7a3a19b5c3dc093372e96d054d3dfdcc0c` |
| 36 | `theorem` | [add_tsub_assoc_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/add-tsub-assoc-of-le--16af43cf05bb83ae3248196d.md) | 185 | `result-track:16af43cf05bb83ae3248196dc14818d5f85e813fe78e00ef22c65adc01b4c307` |
| 37 | `theorem` | [tsub_add_eq_add_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-add-eq-add-tsub--c2a56c1e4e32f308efb57aad.md) | 188 | `result-track:c2a56c1e4e32f308efb57aadd1ff1e360faf0a31ae9fd1785ab3af9b6463cce0` |
| 38 | `theorem` | [tsub_tsub_assoc](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-tsub-assoc--43d69df7099d40901e4aff28.md) | 191 | `result-track:43d69df7099d40901e4aff2825b905936dad1130b7e9727f9d4f7787318edf4e` |
| 39 | `theorem` | [tsub_add_tsub_comm](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-add-tsub-comm--6ebdd74baddfe858cb07e76e.md) | 194 | `result-track:6ebdd74baddfe858cb07e76e5f4d46e9f0ec655f25dbd07d264c16bc62d758bb` |
| 40 | `theorem` | [le_tsub_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/le-tsub-iff-left--1686594b4457957ddb8fc166.md) | 197 | `result-track:1686594b4457957ddb8fc166849decd1a80d6c6f08fed3356db6b59696a76ff0` |
| 41 | `theorem` | [le_tsub_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/le-tsub-iff-right--36e7d013245112852ee63928.md) | 200 | `result-track:36e7d013245112852ee63928e5354bd3e579592021737743e930ddb12998b528` |
| 42 | `theorem` | [tsub_lt_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-lt-iff-left--985769f5c4dd5e73f1419ccc.md) | 203 | `result-track:985769f5c4dd5e73f1419ccc425adda35d775e99782ef86898b3447aef54d1b2` |
| 43 | `theorem` | [tsub_lt_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-lt-iff-right--4976419eae60b2eb70c3c375.md) | 206 | `result-track:4976419eae60b2eb70c3c375e2dad07dbd4208a0d677cdf6bf3576f49ceb12b2` |
| 44 | `theorem` | [tsub_lt_iff_tsub_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-lt-iff-tsub-lt--6b13906b535b6e23993c9797.md) | 209 | `result-track:6b13906b535b6e23993c97972187f1ca5996e0f9a6aaa60652f55e51d4c9029a` |
| 45 | `theorem` | [le_tsub_iff_le_tsub](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/le-tsub-iff-le-tsub--b42b4a01eba2ce5e289d1cce.md) | 212 | `result-track:b42b4a01eba2ce5e289d1cce2a9608922cf561ad3f81909f9d52a9a31a20f5e0` |
| 46 | `theorem` | [lt_tsub_iff_right_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/lt-tsub-iff-right-of-le--fd373a5391d7070a3759d3ce.md) | 216 | `result-track:fd373a5391d7070a3759d3ce1fe1524caa25d586e25eec13f707a3dab95f8bdd` |
| 47 | `theorem` | [lt_tsub_iff_left_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/lt-tsub-iff-left-of-le--e7d23da3d775979b7beb7530.md) | 220 | `result-track:e7d23da3d775979b7beb75305ff2c51cd2e66aa7f5b281fce2d4eb85a4319f88` |
| 48 | `theorem` | [lt_of_tsub_lt_tsub_left_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/lt-of-tsub-lt-tsub-left-of-le--9615e399ea00735e7096e4e6.md) | 224 | `result-track:9615e399ea00735e7096e4e6d03a8d6dadcf202534c2573aab6048780a8a9cd5` |
| 49 | `theorem` | [tsub_lt_tsub_left_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-lt-tsub-left-of-le--586ac174f41d6af07f2ce74b.md) | 228 | `result-track:586ac174f41d6af07f2ce74b69a020fc6169677ac6f220b58be1bfcad0b51e3c` |
| 50 | `theorem` | [tsub_lt_tsub_right_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-lt-tsub-right-of-le--53aa0be1c6804718a952eda3.md) | 231 | `result-track:53aa0be1c6804718a952eda3f6fa97a976786d7aa3a07e1a51797e1fb7f1578b` |
| 51 | `theorem` | [tsub_inj_right](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-inj-right--7ff9eafc6e76103e6fbbc632.md) | 234 | `result-track:7ff9eafc6e76103e6fbbc632ec7ca93c635ef6c3f88b9d6b88fc85ad275e2d47` |
| 52 | `theorem` | [tsub_lt_tsub_iff_left_of_le_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-lt-tsub-iff-left-of-le-of-le--4d44e543531afe472c9ac873.md) | 238 | `result-track:4d44e543531afe472c9ac8731244ce77c461d6984786205237e458dc94e036e7` |
| 53 | `lemma` | [add_add_tsub_cancel](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/add-add-tsub-cancel--7cd88342809d7c71fd20f2bb.md) | 244 | `result-track:7cd88342809d7c71fd20f2bb6eef1fecf7e66830e5c81ff863885f16738397aa` |
| 54 | `theorem` | [add_tsub_tsub_cancel](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/add-tsub-tsub-cancel--d864b2b4705a28adc84f3f31.md) | 248 | `result-track:d864b2b4705a28adc84f3f312d8f55b2fc644d927d087773bcad6cd72cc9c9f0` |
| 55 | `theorem` | [tsub_tsub_cancel_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-tsub-cancel-of-le--4c16a9549fe11300680e4148.md) | 252 | `result-track:4c16a9549fe11300680e41482b3bf5e9205543893e04179decfd9aa9b47a84f6` |
| 56 | `theorem` | [tsub_tsub_tsub_cancel_left](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-tsub-tsub-cancel-left--a6deb7940bc81dd2a55968de.md) | 255 | `result-track:a6deb7940bc81dd2a55968de66d5ca6173e340ff1ab222772a8280a6d6bc377b` |
| 57 | `theorem` | [tsub_tsub_eq_add_tsub_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variant8c2b4d05e0f48e21207bc60981918f9068210bd6c2afc20e50334018eff81138.lean/declarations/tsub-tsub-eq-add-tsub-of-le--cdb6c56f73c119f16b842563.md) | 260 | `result-track:cdb6c56f73c119f16b842563855e11b5ae11d46ce5819d8f70dd15ee763db473` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
