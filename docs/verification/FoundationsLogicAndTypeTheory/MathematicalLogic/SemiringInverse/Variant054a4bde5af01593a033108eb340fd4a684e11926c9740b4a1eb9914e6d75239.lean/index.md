# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SemiringInverse.Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61b824c91466c5f13157ca4937174082ea059d4d",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61b824c91466c5f13157ca4937174082ea059d4d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Embedding` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Mul` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Sign` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [detp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/detp--3763ff3b68fa03c267881956.md) | 34 | `declaration-track:3763ff3b68fa03c267881956ec9a6201b0bf1357ccf9fde946382ad778cda519` |
| 2 | `lemma` | [detp_one_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/detp-one-one--b1ce88356d7cfce5863f19c0.md) | 37 | `result-track:b1ce88356d7cfce5863f19c05e619c91b09af0efe645e4da2f784798435d7087` |
| 3 | `lemma` | [detp_neg_one_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/detp-neg-one-one--0dc99b343f8a1c518baf11f0.md) | 46 | `result-track:0dc99b343f8a1c518baf11f05b4f4a4fd3805cd4f22932c8f906c14a13465505` |
| 4 | `def` | [adjp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/adjp--3af33ac40619f4b50449c8cd.md) | 57 | `declaration-track:3af33ac40619f4b50449c8cd9e8cc3389d17eec26fd549401b1520f1247acca5` |
| 5 | `lemma` | [adjp_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/adjp-apply--82ba5063295eae4ea5da6013.md) | 60 | `result-track:82ba5063295eae4ea5da6013d621d9b4b179d4549f0fa6ad0aa08a7d3b7ca07b` |
| 6 | `theorem` | [detp_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/detp-mul--cd4995ac522ba2423ae29991.md) | 64 | `result-track:cd4995ac522ba2423ae2999168beda73ae298f29a0ab1a45a76c744c86d3038b` |
| 7 | `theorem` | [mul_adjp_apply_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/mul-adjp-apply-eq--c938ba3a308b3c190b9b03a5.md) | 104 | `result-track:c938ba3a308b3c190b9b03a5b20264663426ebea59de42fc0056890c5427b74d` |
| 8 | `theorem` | [mul_adjp_apply_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/mul-adjp-apply-ne--421b01c7adfe7d25aa41c435.md) | 111 | `result-track:421b01c7adfe7d25aa41c435118653a25568bf4cf2961a0adc1d3028e53ed1a8` |
| 9 | `theorem` | [mul_adjp_add_detp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/mul-adjp-add-detp--d10535bb29c57c82a04d313d.md) | 139 | `result-track:d10535bb29c57c82a04d313d64af57a0ef3dc5ce0c71b74dc45ae60c3a4e17aa` |
| 10 | `theorem` | [isAddUnit_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/isaddunit-mul--b856598887489869fb544ddf.md) | 147 | `result-track:b856598887489869fb544ddfab42a850039381d3205bb3c80f3c1832bbca9d2b` |
| 11 | `theorem` | [isAddUnit_detp_mul_detp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/isaddunit-detp-mul-detp--512ace61c335fbf9dd60ea9a.md) | 152 | `result-track:512ace61c335fbf9dd60ea9a4fa99215f578cb4127a7814bcc013733083482f0` |
| 12 | `theorem` | [isAddUnit_detp_smul_mul_adjp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/isaddunit-detp-smul-mul-adjp--2a13f28722022c186b0987b7.md) | 169 | `result-track:2a13f28722022c186b0987b7a0d3d4fb1614458bfe56168f240351e723f40e24` |
| 13 | `theorem` | [detp_smul_add_adjp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/detp-smul-add-adjp--a6457b2c1fbd0aa88ffd4cef.md) | 194 | `result-track:a6457b2c1fbd0aa88ffd4cef2a907be68a4cfc21171762cf6ce4e5fc0f5d981b` |
| 14 | `theorem` | [detp_smul_adjp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/detp-smul-adjp--7a6b76f94aef3f8886edda21.md) | 200 | `result-track:7a6b76f94aef3f8886edda2193cfe8af45645fe45dd7fcfcca9f4e66aa290c5f` |
| 15 | `theorem` | [mul_eq_one_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/mul-eq-one-comm--2a411ceaa757ce8bac0f305b.md) | 211 | `result-track:2a411ceaa757ce8bac0f305b9e7add564987fe2039e2236a82bc04b2c172618f` |
| 16 | `def` | [invertibleOfLeftInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/invertibleofleftinverse--c4e6a7a6cb0601c3d5d7c095.md) | 232 | `declaration-track:c4e6a7a6cb0601c3d5d7c09539c14a8fb10f98ea8e4d8cd0acf2fec253f2c0af` |
| 17 | `def` | [invertibleOfRightInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/invertibleofrightinverse--3b0ce4dae3bcf7718a3f25e2.md) | 236 | `declaration-track:3b0ce4dae3bcf7718a3f25e267434654d2928f0c08ff85f3e5610dc4631f87c3` |
| 18 | `theorem` | [isUnit_of_left_inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/isunit-of-left-inverse--38d81a50e120e92ec3e76d78.md) | 241 | `result-track:38d81a50e120e92ec3e76d78722e942f81eb071018c3944ac13cd06a1231ed26` |
| 19 | `theorem` | [exists_left_inverse_iff_isUnit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/exists-left-inverse-iff-isunit--c492433458e7977a47089ea2.md) | 244 | `result-track:c492433458e7977a47089ea2d4d72754e271c818c26ac207c00c047695228354` |
| 20 | `theorem` | [isUnit_of_right_inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/isunit-of-right-inverse--118494a2189bde63c387a2c7.md) | 247 | `result-track:118494a2189bde63c387a2c7f9c3c07ae9c7b6c3514e35de4cc4ecc01836716a` |
| 21 | `theorem` | [exists_right_inverse_iff_isUnit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/exists-right-inverse-iff-isunit--c657ef1a8d8922985ba748c3.md) | 250 | `result-track:c657ef1a8d8922985ba748c3ef9178618a61eb632dc86b322fa7f1632b529ad5` |
| 22 | `theorem` | [mul_eq_one_comm_of_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant054a4bde5af01593a033108eb340fd4a684e11926c9740b4a1eb9914e6d75239.lean/declarations/mul-eq-one-comm-of-equiv--ec390a3324e423d7fd582eb3.md) | 254 | `result-track:ec390a3324e423d7fd582eb341a79f051650e4d925359d6ad774aaf982f3ff4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
