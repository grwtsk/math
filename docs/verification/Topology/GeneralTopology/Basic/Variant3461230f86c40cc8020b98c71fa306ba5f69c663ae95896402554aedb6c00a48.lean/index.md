# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3baa7160a63eee1e3ca419dc365ebafa4869d048",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3baa7160a63eee1e3ca419dc365ebafa4869d048`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.MulAction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.Proper.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.OpenQuotient` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ProperVAdd](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean/declarations/propervadd--dc9ffd5fcebee347c3cc57ea.md) | 50 | `declaration-track:dc9ffd5fcebee347c3cc57ea79bd9dbd11c23c8a749ac302f9291a520667ddf1` |
| 2 | `class` | [ProperSMul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean/declarations/propersmul--ebd7edf5d542a4819bd47aa6.md) | 59 | `declaration-track:ebd7edf5d542a4819bd47aa633aa7dfa4b3dd23080e1a3c6fe1c6990bfd4edf5` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean/declarations/instance--351e3100e89c44294136eec0.md) | 73 | `declaration-track:351e3100e89c44294136eec069d7035f6dcbc25b939775672752d4e9b4e44326` |
| 4 | `theorem` | [properSMul_iff_continuousSMul_ultrafilter_tendsto](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean/declarations/propersmul-iff-continuoussmul-ultrafilter-tendsto--94f84d4230aab1417e0c8d24.md) | 83 | `result-track:94f84d4230aab1417e0c8d24d78be1537b8e648aae437322671078dad1d16aef` |
| 5 | `theorem` | [properSMul_iff_continuousSMul_ultrafilter_tendsto_t2](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean/declarations/propersmul-iff-continuoussmul-ultrafilter-tendsto-t2--b46f898fa075655520e96686.md) | 104 | `result-track:b46f898fa075655520e96686d3ddb3797e43172cc0ef0db53f30339b84ee9f7b` |
| 6 | `theorem` | [t2Space_quotient_mulAction_of_properSMul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean/declarations/t2space-quotient-mulaction-of-propersmul--ee613e7b1bba0e704a0fc4f3.md) | 117 | `result-track:ee613e7b1bba0e704a0fc4f391b023d2ac6d372f5e2a3c66e903daf470f82b8f` |
| 7 | `theorem` | [t2Space_of_properSMul_of_t1Group](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean/declarations/t2space-of-propersmul-of-t1group--e1017448287df49a4fd78c14.md) | 135 | `result-track:e1017448287df49a4fd78c146585303d5a9b0b3f04c48f17f0463fe2b1b9d2fd` |
| 8 | `theorem` | [properSMul_of_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean/declarations/propersmul-of-isclosedembedding--6300f811382ea519d99bd708.md) | 162 | `result-track:6300f811382ea519d99bd7084546ad1f23f05daca21ae5057e8d3408c3a6b90a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3461230f86c40cc8020b98c71fa306ba5f69c663ae95896402554aedb6c00a48.lean/declarations/instance--6da73993d478aa12555d7e7f.md) | 174 | `declaration-track:6da73993d478aa12555d7e7f6b7cfd492e15e70fc11a65ea529d440c74beea7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
