# Verification target: GRWTSK.Algebra.RingTheory.FiniteAdeleRing.Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "002764af8ecda69cfed0b94ec4f014a0353a2a28",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `002764af8ecda69cfed0b94ec4f014a0353a2a28`.

Source path: `GRWTSK/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.AdicValuation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FiniteIntegralAdeles](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/finiteintegraladeles--0df1c59588332aae6918a9f4.md) | 44 | `declaration-track:0df1c59588332aae6918a9f4e8c5030cdb570bbde7c8067d993a36a7240600f8` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/instance--b8472d7494305f30d4c9dbce.md) | 52 | `declaration-track:b8472d7494305f30d4c9dbce1cd35e7eb7d27461bae40449150b7eb9db0e44bb` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/instance--f3e5cfc3740538422379202d.md) | 55 | `declaration-track:f3e5cfc3740538422379202d53c391e4cc9fa3cea9c87f20bc93c0aef0eaff13` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/instance--42811c82f63e43670d87b42b.md) | 58 | `declaration-track:42811c82f63e43670d87b42b8d191eb58921b72c2c3a85940be7a218cc3456dd` |
| 5 | `def` | [ProdAdicCompletions](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/prodadiccompletions--66f28ad5468497493f79e54d.md) | 66 | `declaration-track:66f28ad5468497493f79e54d258f5dd3ace6d23213f88e3b41bf9c9c59336d2a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/instance--911ec6f15fcc1a0e6811d42d.md) | 73 | `declaration-track:911ec6f15fcc1a0e6811d42d6683c54fa9f590e7b206bbe3ec742b758463b1b2` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/instance--785f382c26c9fc3bad5902f9.md) | 76 | `declaration-track:785f382c26c9fc3bad5902f901b204646a433a3ae5290c207f6c154eef594a40` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/instance--283b593e0daed83c1e176e32.md) | 79 | `declaration-track:283b593e0daed83c1e176e3233ebb1d8c299e1698d1d88d38218a27fd0ab0e61` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/instance--1222f3f09887a915c8faafad.md) | 82 | `declaration-track:1222f3f09887a915c8faafad1a6c84f761f29c77d44d2dd85772563120639685` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/instance--ceb387030a334b51ed7f75c4.md) | 85 | `declaration-track:ceb387030a334b51ed7f75c44f999acfa32a9069889d3605cf1565995650c75f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/instance--259cd5a50f52d16282452cc6.md) | 94 | `declaration-track:259cd5a50f52d16282452cc6b1f7197344bb07681075ecd5085baa040905e76b` |
| 12 | `theorem` | [coe_apply](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/coe-apply--33b26fdfb7b1bbab8454f97c.md) | 96 | `result-track:33b26fdfb7b1bbab8454f97c1ecc11843dc80c28d47b2159ec59f97b77f140e6` |
| 13 | `def` | [Coe.addMonoidHom](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/coe-addmonoidhom--7f5e607d2ba106f2836eb38e.md) | 102 | `declaration-track:7f5e607d2ba106f2836eb38ecccb5d5baa82172f0016702a9879fe4590977e5c` |
| 14 | `def` | [Coe.ringHom](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/coe-ringhom--22f74a84adfee4aa956bd481.md) | 115 | `declaration-track:22f74a84adfee4aa956bd481decfcfe7cd3a1eaa1b4f9f91e179166782fb6d7b` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/instance--85faf44d2fb5ceadc49edc39.md) | 131 | `declaration-track:85faf44d2fb5ceadc49edc39cf2eeae8f5694eb86900210984fa1a03ccbced39` |
| 16 | `instance` | [ProdAdicCompletions.algebra'](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/prodadiccompletions-algebra--06565c279d2adda79c1dcfeb.md) | 134 | `declaration-track:06565c279d2adda79c1dcfeb5f086bfe46c6eec3259b21372e7455570c2d857d` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/instance--103cfd39fabdc7f4ece676f8.md) | 138 | `declaration-track:103cfd39fabdc7f4ece676f8916962fb6af501e4dc8fb651d25b6f1fab757ee4` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/instance--00e4d864b4cc88f2de8c3a76.md) | 141 | `declaration-track:00e4d864b4cc88f2de8c3a761724a400731fdc28f88f753383ad8bd9d205c6f6` |
| 19 | `instance` | [ProdAdicCompletions.algebraCompletions](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/prodadiccompletions-algebracompletions--cf27cca000a9d06b85a5ddac.md) | 144 | `declaration-track:cf27cca000a9d06b85a5ddac96961a4cbb3f9223b99b2b952daa0d5b889cc6ff` |
| 20 | `instance` | [ProdAdicCompletions.isScalarTower_completions](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/prodadiccompletions-isscalartower-completions--244eda2e3235028124a7ffbf.md) | 148 | `declaration-track:244eda2e3235028124a7ffbfecf582a2a8bdf565f428876633e85950558aaac9` |
| 21 | `def` | [Coe.algHom](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/coe-alghom--0fca14b492f850aed8415f6c.md) | 159 | `declaration-track:0fca14b492f850aed8415f6cf5e0337bfca28c1b637d115f6a193e94c97680ce` |
| 22 | `theorem` | [Coe.algHom_apply](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/coe-alghom-apply--8e9b14306164b9f10508eeaf.md) | 165 | `result-track:8e9b14306164b9f10508eeafc62fb40513929dbc8646816865a88b52afe7c4b0` |
| 23 | `def` | [IsFiniteAdele](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/isfiniteadele--580927ec943f0345a321b834.md) | 183 | `declaration-track:580927ec943f0345a321b834ea3a056b97124f751f45a08f943c4f114442ce70` |
| 24 | `theorem` | [add](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/add--16cee50660b2447213bace7b.md) | 190 | `result-track:16cee50660b2447213bace7be7048de93e79946233156d10d72215748fadb089` |
| 25 | `theorem` | [zero](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/zero--fa72d27575706c197933aa5f.md) | 208 | `result-track:fa72d27575706c197933aa5f893fd1567462a5dcf976508a91624d66a743d67a` |
| 26 | `theorem` | [neg](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/neg--b1577a7e915a0a23568d4c7f.md) | 222 | `result-track:b1577a7e915a0a23568d4c7f3cea6d219a08d2a8acd9de2382f901fe561160e8` |
| 27 | `theorem` | [mul](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/mul--62c2afa5c2d5ff88747531b0.md) | 235 | `result-track:62c2afa5c2d5ff88747531b02fdc3d2f3a29bcd89a160ec631ad8fac9bf1e26c` |
| 28 | `theorem` | [one](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/one--ac02eea8877c066c9ea0a41d.md) | 257 | `result-track:ac02eea8877c066c9ea0a41dff7f0a66258a99306d17af8c710cdc7e17e08f54` |
| 29 | `def` | [finiteAdeleRing](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/finiteadelering--d17506089794a6daae35a2f8.md) | 276 | `declaration-track:d17506089794a6daae35a2f8f498d7e38464c2e5e94096fdc70c14f4fd38b7c5` |
| 30 | `theorem` | [mem_finiteAdeleRing_iff](../../../../../mathematics/Algebra/RingTheory/FiniteAdeleRing/Variantfe92d94ce4702b16d0ee344ab1c8f8475b9acd0a43fa8974d0bbe6dc2901d687.lean/declarations/mem-finiteadelering-iff--7e188dfc492fa4f3f6be2c07.md) | 288 | `result-track:7e188dfc492fa4f3f6be2c078fa28314228c5730665bc624ae9790ad0b33f91d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
