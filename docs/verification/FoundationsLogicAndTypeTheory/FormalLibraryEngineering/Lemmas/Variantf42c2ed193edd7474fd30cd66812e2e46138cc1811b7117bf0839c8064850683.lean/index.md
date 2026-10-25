# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e473093e8f610e1627230ab26e824b27394bf901",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e473093e8f610e1627230ab26e824b27394bf901`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ref.gate_cast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/ref-gate-cast--8eeb623cc4b99a70450614d1.md) | 27 | `result-track:8eeb623cc4b99a70450614d114bf80336fd878602bb79befe698ac22c1ee7d29` |
| 2 | `theorem` | [Ref.cast_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/ref-cast-eq--abbf3e9aa9daa586e9eed84b.md) | 32 | `result-track:abbf3e9aa9daa586e9eed84b0b64c75058d867f3fcb157607a8d1ae7d9347326` |
| 3 | `theorem` | [BinaryInput.lhs_cast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/binaryinput-lhs-cast--c8054a465e387f54d040a510.md) | 37 | `result-track:c8054a465e387f54d040a510573599e85ee0b33e571f47e0729587cae86146b7` |
| 4 | `theorem` | [BinaryInput.rhs_cast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/binaryinput-rhs-cast--4145e144d682be0337dd7783.md) | 42 | `result-track:4145e144d682be0337dd7783425f43e66b8ee5c4004c898ba659557fdd5504d0` |
| 5 | `theorem` | [BinaryInput.each_cast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/binaryinput-each-cast--91ae2cffca73221f8f6be086.md) | 47 | `result-track:91ae2cffca73221f8f6be08678d3ecb5bd132b9ae530fff13e75208ea2e9ad53` |
| 6 | `theorem` | [BinaryInput_invert_lhs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/binaryinput-invert-lhs--f894c2f5a7ed50d4d065f9fa.md) | 53 | `result-track:f894c2f5a7ed50d4d065f9fa7c048cf6245ffca1eb35e3f200b815f0511500f8` |
| 7 | `theorem` | [BinaryInput_invert_rhs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/binaryinput-invert-rhs--c3f0199b5fe3aad4249c5191.md) | 58 | `result-track:c3f0199b5fe3aad4249c51915703b2018a4cb5c087f1c2b7a1f04c63fb244ba5` |
| 8 | `theorem` | [denote_projected_entry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/denote-projected-entry--a5f4dca86b2fc7bcc8d7de0c.md) | 63 | `result-track:a5f4dca86b2fc7bcc8d7de0cf6367220d239560056abf30232a81ceadca5eb44` |
| 9 | `theorem` | [denote_projected_entry'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/denote-projected-entry--52fcdd256ff0ecfc0a5161af.md) | 68 | `result-track:52fcdd256ff0ecfc0a5161afeca9bd91d31384d3341c2f1d28da0f2be6b4a642` |
| 10 | `theorem` | [Ref.denote_flip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/ref-denote-flip--fa07daed7b55a74ac948a37e.md) | 73 | `result-track:fa07daed7b55a74ac948a37ef69382ee46e45731c8fd2f5538e046b9bc9aeb96` |
| 11 | `theorem` | [Ref.denote_not](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/ref-denote-not--c78a2edad5ee09999790337c.md) | 79 | `result-track:c78a2edad5ee09999790337c762b445c9c6a6b1a7057608b5f4e54f11034a917` |
| 12 | `theorem` | [denote_not_invert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/denote-not-invert--98b603f7dcee90ad33b8961b.md) | 84 | `result-track:98b603f7dcee90ad33b8961b7b9e9c24cb165af264ca3ffe08f6d9746ebbbc0c` |
| 13 | `theorem` | [denote_invert_true](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/denote-invert-true--15e28ce480b25be87662e742.md) | 90 | `result-track:15e28ce480b25be87662e7429ce616a730521b9882226a6ebaa2ce78d1d1dbf7` |
| 14 | `theorem` | [mkGate_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/mkgate-le-size--677a4d496bb0cf0c9903f929.md) | 98 | `result-track:677a4d496bb0cf0c9903f929d1f26dd9abaa2db39fc9a6cb1e03350ca5c00d2a` |
| 15 | `theorem` | [mkGate_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/mkgate-decl-eq--0d631c4b5978f10b0fd14ddd.md) | 105 | `result-track:0d631c4b5978f10b0fd14dddf2e63ac9c47cc52c63ead4e1c312742b8c5ae640` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/instance--2855fbb4b70511fd7fdbf255.md) | 113 | `declaration-track:2855fbb4b70511fd7fdbf255c0910e07c3950f208baed949da221616f9b81920` |
| 17 | `theorem` | [denote_mkGate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/denote-mkgate--486259fae53c40965e288d2e.md) | 120 | `result-track:486259fae53c40965e288d2ea6d6e1c202ed3538876e815fba94bb76fc1ccef2` |
| 18 | `theorem` | [mkAtom_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/mkatom-le-size--c9d84ea25b8dc58d56e5d4ea.md) | 146 | `result-track:c9d84ea25b8dc58d56e5d4eadf44884b35aded351b0d6e0a0470a89b2b48e748` |
| 19 | `theorem` | [mkAtom_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/mkatom-decl-eq--da0414f8872328e432144074.md) | 153 | `result-track:da0414f8872328e4321440747ec0cbe2e127f2d6f8c0533b3ea74407693df857` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/instance--9ad42bfb1ed0faba475eb057.md) | 160 | `declaration-track:9ad42bfb1ed0faba475eb05734e4f473b9c9c7db923d0f76ba7e9a71dbba891f` |
| 21 | `theorem` | [denote_mkAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/denote-mkatom--d15d933977160128eb739514.md) | 167 | `result-track:d15d933977160128eb7395142db12ba6d8d416798ad26a2d2e0d26eda3ccbbac` |
| 22 | `theorem` | [mkConst_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/mkconst-le-size--430352a15ceb6ae07da67434.md) | 185 | `result-track:430352a15ceb6ae07da674342261abb2ecbc5f8ef0543eaa3179c4e1f1091b2b` |
| 23 | `theorem` | [mkConst_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/mkconst-decl-eq--c62c0a593ecdb812d7922f78.md) | 192 | `result-track:c62c0a593ecdb812d7922f780777d0a577a3619828be1004ac27b1b4138cd9bf` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/instance--4f331265e559101ec8156948.md) | 200 | `declaration-track:4f331265e559101ec815694831b8def2b6a73628d71043a8305f506df061ae4e` |
| 25 | `theorem` | [denote_mkConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/denote-mkconst--a178950b2d678fe3ffe27cf8.md) | 207 | `result-track:a178950b2d678fe3ffe27cf8b0f2778d0222ab4f4f143ab41f65fccecdb6ced0` |
| 26 | `theorem` | [denote_idx_false](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/denote-idx-false--3efb137f6c1ddb93ce1a2a59.md) | 223 | `result-track:3efb137f6c1ddb93ce1a2a59faf25379e5b74f755b81c273f399bf19ced4f38d` |
| 27 | `theorem` | [denote_idx_atom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/denote-idx-atom--613254536040ac98c473eae1.md) | 231 | `result-track:613254536040ac98c473eae102085ebee274beb8760756eca23f783adfc6a58b` |
| 28 | `theorem` | [denote_idx_gate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/denote-idx-gate--4558c33401ee90694953cbd0.md) | 239 | `result-track:4558c33401ee90694953cbd03d5ac32a4d75541d746a9d3f989367ac6e738209` |
| 29 | `theorem` | [idx_trichotomy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/idx-trichotomy--39b6c8aab5e25547a696c8a5.md) | 258 | `result-track:39b6c8aab5e25547a696c8a5d4cdb62109bf4929b6dc4bce11c56aed56b7cd80` |
| 30 | `theorem` | [denote_idx_trichotomy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/denote-idx-trichotomy--354421b4234d8673b0786483.md) | 268 | `result-track:354421b4234d8673b07864832f4ae3ad2252c55729530cc24549e91b5a4d4c6a` |
| 31 | `theorem` | [mem_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/mem-def--1e04a3b60a6b9765dba242ce.md) | 283 | `result-track:1e04a3b60a6b9765dba242cee84d78097e74f27633b5d37d262745c854e5d108` |
| 32 | `theorem` | [denote_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/denote-congr--45622821bd66fa0320b26f14.md) | 286 | `result-track:45622821bd66fa0320b26f140c305774975667f77c7b0805cc31a541c4a9a652` |
| 33 | `theorem` | [of_isConstant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/of-isconstant--a4fec797cef47cdfb86d0eb5.md) | 302 | `result-track:a4fec797cef47cdfb86d0eb5f63c1d0649e425c152961a130e135bfbc640a57d` |
| 34 | `theorem` | [denote_getConstant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf42c2ed193edd7474fd30cd66812e2e46138cc1811b7117bf0839c8064850683.lean/declarations/denote-getconstant--29cf8e5eea73140a035e9b39.md) | 314 | `result-track:29cf8e5eea73140a035e9b396ce1ca5104fad9b2958e5ef7713137e6a6668368` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
