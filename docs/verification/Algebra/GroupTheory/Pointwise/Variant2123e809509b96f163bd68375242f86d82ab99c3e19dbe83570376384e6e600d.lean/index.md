# Verification target: GRWTSK.Algebra.GroupTheory.Pointwise.Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ee7fa2272fad0f62526a353ecd8238e97e55949",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ee7fa2272fad0f62526a353ecd8238e97e55949`.

Source path: `GRWTSK/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Pointwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Pointwise.Set` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smul_mem_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/smul-mem-pointwise-smul-iff--c659ac063788483ce2ca013e.md) | 33 | `result-track:c659ac063788483ce2ca013edd2fad2b56d5805f87ae071a28cfe596fcc2a939` |
| 2 | `lemma` | [mem_pointwise_smul_iff_inv_smul_mem₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--eab2dba5f892b61dde62871a.md) | 37 | `result-track:eab2dba5f892b61dde62871a230c82b4ec13097f28a90ae347c73fbec6edda77` |
| 3 | `lemma` | [mem_inv_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/mem-inv-pointwise-smul-iff--a04f1a16a37b9780b10a093b.md) | 41 | `result-track:a04f1a16a37b9780b10a093b28114b5535b26020b6ebaf8eb1945c1c2142b00f` |
| 4 | `lemma` | [pointwise_smul_le_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/pointwise-smul-le-pointwise-smul-iff--a6f8510b341968930f493810.md) | 46 | `result-track:a6f8510b341968930f49381095191b502baf91d1fc3f6503a238b3165a21ab9e` |
| 5 | `lemma` | [pointwise_smul_le_iff₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/pointwise-smul-le-iff--1894e88176993553b9ad1728.md) | 50 | `result-track:1894e88176993553b9ad17284980476b550cb394bb8202a922768a780f724d18` |
| 6 | `lemma` | [le_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/le-pointwise-smul-iff--251e0793b6d45d401f71dd7a.md) | 53 | `result-track:251e0793b6d45d401f71dd7a51906ed3894cbafd3843fab73a253e450ee02e85` |
| 7 | `def` | [pointwiseMulAction](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/pointwisemulaction--18eabe9cde46e5650b1547fb.md) | 66 | `declaration-track:18eabe9cde46e5650b1547fbd115170ca9c0a379a9933322b85c47902e934863` |
| 8 | `lemma` | [coe_pointwise_smul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/coe-pointwise-smul--f7144468c852489396b11409.md) | 77 | `result-track:f7144468c852489396b11409bd7c5a955aec906725ab2ea670cfff6d8e8875a7` |
| 9 | `lemma` | [smul_mem_pointwise_smul](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/smul-mem-pointwise-smul--65523be0e0b97408a0248bb9.md) | 79 | `result-track:65523be0e0b97408a0248bb99de2e6147c0d349020eb419c1e1ef2452b5d66c2` |
| 10 | `lemma` | [mem_smul_pointwise_iff_exists](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/mem-smul-pointwise-iff-exists--5a8bc1a670e69a8b2af7cd90.md) | 82 | `result-track:5a8bc1a670e69a8b2af7cd909da0b25ce94937c23c58c09123f47d1e4a88a72d` |
| 11 | `lemma` | [smul_bot](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/smul-bot--6f79f0807ec8cc909c882aec.md) | 87 | `result-track:6f79f0807ec8cc909c882aecbb3213fecace94639dc8e69fa3e505edb5699523` |
| 12 | `lemma` | [smul_sup](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/smul-sup--ea1d925e20e524b484aab825.md) | 89 | `result-track:ea1d925e20e524b484aab825d8f357f1e9befafbe4767ec902fb82249b34d941` |
| 13 | `lemma` | [smul_closure](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/smul-closure--847271950a708945c59bbcd2.md) | 93 | `result-track:847271950a708945c59bbcd28334e15cea292adf42a85048a63723493ee35743` |
| 14 | `lemma` | [pointwise_isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/pointwise-iscentralscalar--da834f92d1bfc36b70453e2d.md) | 96 | `result-track:da834f92d1bfc36b70453e2dba647e0102ffca9064029b89cd936179d73c34d0` |
| 15 | `lemma` | [smul_mem_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/smul-mem-pointwise-smul-iff--75a1f9bc986ff89f7a5eb359.md) | 109 | `result-track:75a1f9bc986ff89f7a5eb35938b974a727559f9575c8915b38f9a0f767d28d48` |
| 16 | `lemma` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--6f993773e1a71705763251ed.md) | 112 | `result-track:6f993773e1a71705763251ed374d3e3c8ff0ed44b379dc638158a4ce24966f57` |
| 17 | `lemma` | [mem_inv_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/mem-inv-pointwise-smul-iff--cb4b5ad4ebe6e986ecf23758.md) | 116 | `result-track:cb4b5ad4ebe6e986ecf237588c70aa9fb0c5f65631a213eac7c4ee8b1b7fe3e7` |
| 18 | `lemma` | [pointwise_smul_le_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/pointwise-smul-le-pointwise-smul-iff--0b7cd0f7fb2144a41f5fc3ae.md) | 120 | `result-track:0b7cd0f7fb2144a41f5fc3aeb6a27f56af31a1994f3f84b388db435a5a4f3d13` |
| 19 | `lemma` | [pointwise_smul_le_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/pointwise-smul-le-iff--f4b3a6b02f688518f43994eb.md) | 124 | `result-track:f4b3a6b02f688518f43994eb83671cfe0c5fea85bd734abd8c84351a6ec64ad3` |
| 20 | `lemma` | [le_pointwise_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/le-pointwise-smul-iff--03a8a333bfc6f744adbad9cd.md) | 127 | `result-track:03a8a333bfc6f744adbad9cda0bf08f527fc7676082fd71704d64d2801ea649b` |
| 21 | `lemma` | [smul_mem_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/smul-mem-pointwise-smul-iff--4b0dada324ef2dab4d1730cd.md) | 136 | `result-track:4b0dada324ef2dab4d1730cd8e09a53cac9baa2d0abea6c667ee44d2105ad12a` |
| 22 | `lemma` | [mem_pointwise_smul_iff_inv_smul_mem₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--4f3995ca60c049f3bb12470d.md) | 140 | `result-track:4f3995ca60c049f3bb12470d22034ce2bb1c2d167cbe4089c522a524df57d8d8` |
| 23 | `lemma` | [mem_inv_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/mem-inv-pointwise-smul-iff--b4f03cc63336d1991ef3e41e.md) | 144 | `result-track:b4f03cc63336d1991ef3e41edee7d906c703a943f919ce2558010a26122ccd4e` |
| 24 | `lemma` | [pointwise_smul_le_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/pointwise-smul-le-pointwise-smul-iff--8bd7bc20d4b904139f76d7aa.md) | 149 | `result-track:8bd7bc20d4b904139f76d7aa25a1fb92796a8b578d5912a072452f19f2d62f9e` |
| 25 | `lemma` | [pointwise_smul_le_iff₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/pointwise-smul-le-iff--2a226afd14841f8564cadb70.md) | 152 | `result-track:2a226afd14841f8564cadb702b4e87c4f211249711307b7ca514cc7b899f8436` |
| 26 | `lemma` | [le_pointwise_smul_iff₀](../../../../../mathematics/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/declarations/le-pointwise-smul-iff--9598dc3a23ebb06411050c09.md) | 153 | `result-track:9598dc3a23ebb06411050c09021463d98c11cbbf7a673cc3743ef65a738b32f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
