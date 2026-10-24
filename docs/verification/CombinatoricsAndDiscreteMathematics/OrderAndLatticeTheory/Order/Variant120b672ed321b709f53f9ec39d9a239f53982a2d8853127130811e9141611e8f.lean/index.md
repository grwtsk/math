# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Order.Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc28f008c273b99762a1a426aa022a37d85aae14",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc28f008c273b99762a1a426aa022a37d85aae14`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Iterate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GaloisConnection.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/instance--03fd505562af939fe2262992.md) | 42 | `declaration-track:03fd505562af939fe22629920e1414ef06cb540bd6cb029d1f6b8f686eeb4a4c` |
| 2 | `lemma` | [coe_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/coe-sup--d9d3975d631338ff83135d3c.md) | 45 | `result-track:d9d3975d631338ff83135d3c095c96f598d300feebf3077fab5bfedb22d59ed6` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/instance--5a874cc438a4a68750740902.md) | 48 | `declaration-track:5a874cc438a4a687507409024cc85de3ddc9fa6c4b3f749b3a50c229a677b1fc` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/instance--a747d3b86e507fac5b6c3cfc.md) | 55 | `declaration-track:a747d3b86e507fac5b6c3cfc5f4ad4e6c3d000019efa3c827dbee19eb55a7619` |
| 5 | `lemma` | [coe_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/coe-inf--8cc66e80efb8f415517a2383.md) | 58 | `result-track:8cc66e80efb8f415517a23837fdc45259bbc6bba63960efa800b7a8dc8c05c88` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/instance--9d9df2f742c74bdf767321d4.md) | 61 | `declaration-track:9d9df2f742c74bdf767321d43451838a68607dde042de83ef6e75b2928d86ffe` |
| 7 | `instance` | [lattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/lattice--5b015cc9a3c919edd6c3e410.md) | 65 | `declaration-track:5b015cc9a3c919edd6c3e410070bc4715efeedc48d4740a0ce9815fbacd08643` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/instance--e2ca41d27809b1615e1fbd68.md) | 69 | `declaration-track:e2ca41d27809b1615e1fbd68000af3af49ba36674d28db7eb1d00dcf8838dbed` |
| 9 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/orderbot--4cfa5de49ff949a73f8d0190.md) | 72 | `declaration-track:4cfa5de49ff949a73f8d0190177ae5b808f81f0b398aca449187c5829607104c` |
| 10 | `instance` | [instTopOrderHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/insttoporderhom--8f3b4bee50b5d64d5ac538f5.md) | 77 | `declaration-track:8f3b4bee50b5d64d5ac538f58aeb3ed13888aa267a02af00980dedb97f089f3b` |
| 11 | `instance` | [orderTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/ordertop--118baa241eddff527322269b.md) | 80 | `declaration-track:118baa241eddff527322269bad1626199848b25b83fdfac03601703bd879afc9` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/instance--0042c085b39b863a85fd6089.md) | 84 | `declaration-track:0042c085b39b863a85fd6089ee9463cd7d11396eb89bcffa26c813abb7d9ce98` |
| 13 | `theorem` | [sInf_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/sinf-apply--5893550be4172f8426249942.md) | 88 | `result-track:5893550be4172f84262499429c6d603b3335465f1959cd43c40dba6dbf47d72a` |
| 14 | `theorem` | [iInf_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/iinf-apply--7d94691895d1d4419641d044.md) | 92 | `result-track:7d94691895d1d4419641d04430af5869c9ff09976b4b615b9e12c8ac6bd27a28` |
| 15 | `theorem` | [coe_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/coe-iinf--5e2cfcd0d121fa6f57a676f8.md) | 97 | `result-track:5e2cfcd0d121fa6f57a676f8de989dfd20121efd68ee9f6f09614cbce9be80ca` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/instance--d616156f87cec83e9521e419.md) | 101 | `declaration-track:d616156f87cec83e9521e4191ba63ae8c4b518e96839f7ab0d545e8c2ca5cb61` |
| 17 | `theorem` | [sSup_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/ssup-apply--07a0c862bc7d2411acc61af3.md) | 105 | `result-track:07a0c862bc7d2411acc61af310cafa23c8a51f07276102ad3e85f761d5d81089` |
| 18 | `theorem` | [iSup_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/isup-apply--41e701234ffbc6350e48dc12.md) | 109 | `result-track:41e701234ffbc6350e48dc124aa215ad4b834dc704ad72d76f8b9da4258fac38` |
| 19 | `theorem` | [coe_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/coe-isup--4ee57732fca6d8cf9606fa39.md) | 114 | `result-track:4ee57732fca6d8cf9606fa3928873dfdbfc92ce1bfd8de5e6dbc7503906af6c6` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/instance--2c9432ef7dbcc79e1cd5e868.md) | 118 | `declaration-track:2c9432ef7dbcc79e1cd5e86847b0a5b2ed6c51aa5b5db2bf4f60d3d4012153c2` |
| 21 | `theorem` | [iterate_sup_le_sup_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant120b672ed321b709f53f9ec39d9a239f53982a2d8853127130811e9141611e8f.lean/declarations/iterate-sup-le-sup-iff--698904cc6dc6ff2e80e94d2a.md) | 126 | `result-track:698904cc6dc6ff2e80e94d2a08f22f62edbb18b15d7d16072f8f28c8a7ae894c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
