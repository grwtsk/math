# Verification target: GRWTSK.Topology.GeneralTopology.Induced.Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be561ceadc28b663fcaf5103e172ff8fcc113998",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be561ceadc28b663fcaf5103e172ff8fcc113998`.

Source path: `GRWTSK/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice.Image` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [induced](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean/declarations/induced--25c73a286000a99b9dbca7ed.md) | 64 | `declaration-track:25c73a286000a99b9dbca7ed6825d3f39366b8513b1ebb7401bd119f2866a13c` |
| 2 | `instance` | [_root_.GRWTSK.Topology.GeneralTopology.IsCoherentWith.Variant34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5.instTopologicalSpaceSubtype](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean/declarations/root-grwtsk-topology-generaltopology-iscoherentwith-variant34524d400da1f--fe79c79e9126d1398a2145d1.md) | 76 | `declaration-track:fe79c79e9126d1398a2145d1a7b8ba6ba079f2fb3ca5b3ee66369b7af2f31a8f` |
| 3 | `def` | [coinduced](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean/declarations/coinduced--40da40bf823a3ca0635e26a9.md) | 84 | `declaration-track:40da40bf823a3ca0635e26a9dba28f7bd696627f1caa1e2fc7e99447bac1da21` |
| 4 | `structure` | [IsCoherentWith](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean/declarations/iscoherentwith--b95e70134bc445834b044c4c.md) | 104 | `declaration-track:b95e70134bc445834b044c4c9c7bf642b56a57eb088f79cbf94355781a7881bc` |
| 5 | `structure` | [IsInducing](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean/declarations/isinducing--9e22480be62c8ca991f3f57d.md) | 113 | `declaration-track:9e22480be62c8ca991f3f57d0873c0b4862e4fbcb9bf30ddcacca63cc417917c` |
| 6 | `structure` | [IsEmbedding](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean/declarations/isembedding--7159ad9afb219ac737fd3f71.md) | 122 | `declaration-track:7159ad9afb219ac737fd3f71005e786ffb28ebacc3c8184cfd8275f7accea570` |
| 7 | `structure` | [IsOpenEmbedding](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean/declarations/isopenembedding--27b582e6988a34d33a6081d4.md) | 131 | `declaration-track:27b582e6988a34d33a6081d48e7bc9476970505c73c948e0c90f920a88147945` |
| 8 | `structure` | [IsClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean/declarations/isclosedembedding--6e2dd20907ff0cc0ab2bb149.md) | 137 | `declaration-track:6e2dd20907ff0cc0ab2bb149f14ae8c64ea247d6aa8c181f0eedb8f4313febe7` |
| 9 | `structure` | [IsQuotientMap](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant5c9beec258b727d7a1f4e94d8ca7a66d737669d49c701aa5068f4c0491735cce.lean/declarations/isquotientmap--4b7bb18e766bb895788b7e60.md) | 144 | `declaration-track:4b7bb18e766bb895788b7e60f65ccd704f2061738da94e0bab1de9de8a1285a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
