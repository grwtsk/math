# Verification target: GRWTSK.Topology.AlgebraicTopology.Contractible.Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "177221cfdecdb48f22804dff9964e48795ec5d96",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Contractible/Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `177221cfdecdb48f22804dff9964e48795ec5d96`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Contractible/Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Contractible/Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homotopy.Path` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Equiv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nullhomotopic](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1.lean/declarations/nullhomotopic--b43d208f22075303e668ba53.md) | 22 | `declaration-track:b43d208f22075303e668ba5325426de007bc4f7a065a23e54d59c3d17003f2f0` |
| 2 | `theorem` | [nullhomotopic_of_constant](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1.lean/declarations/nullhomotopic-of-constant--8c45b0fb875febe0a42c6c0b.md) | 25 | `result-track:8c45b0fb875febe0a42c6c0b0a87b3a30a5fc2d5059a42b397a6885462a60592` |
| 3 | `theorem` | [Nullhomotopic.comp_right](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1.lean/declarations/nullhomotopic-comp-right--689a134afc30b6e5275dbcaa.md) | 28 | `result-track:689a134afc30b6e5275dbcaaf381fedeb9632825c1547d8781909df3eaa27c02` |
| 4 | `theorem` | [Nullhomotopic.comp_left](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1.lean/declarations/nullhomotopic-comp-left--51fa0d3947a2141b71ab60d2.md) | 34 | `result-track:51fa0d3947a2141b71ab60d27db27f017305ae0541007dad2b85a16188bacfea` |
| 5 | `class` | [ContractibleSpace](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1.lean/declarations/contractiblespace--64009ad32b16b51c19475e5a.md) | 45 | `declaration-track:64009ad32b16b51c19475e5a087fcf37157e650dacee430fe0d72a0b559385f4` |
| 6 | `theorem` | [ContractibleSpace.hequiv_unit](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1.lean/declarations/contractiblespace-hequiv-unit--4768555aa72eb829f4c5ae6c.md) | 48 | `result-track:4768555aa72eb829f4c5ae6c4cf24798b82d28a1ae4f37d1b59b39f336e71db4` |
| 7 | `theorem` | [id_nullhomotopic](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1.lean/declarations/id-nullhomotopic--09c35b8f564513588fad94c7.md) | 52 | `result-track:09c35b8f564513588fad94c7e811425d1e3714f003c99ba05a5ecd630c703974` |
| 8 | `theorem` | [contractible_iff_id_nullhomotopic](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1.lean/declarations/contractible-iff-id-nullhomotopic--c2d7b2ed5f46a472545c4bc1.md) | 58 | `result-track:c2d7b2ed5f46a472545c4bc1fec56be7ee025d05afe36c14dabbc2eab50222d8` |
| 9 | `theorem` | [ContinuousMap.HomotopyEquiv.contractibleSpace](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1.lean/declarations/continuousmap-homotopyequiv-contractiblespace--4bbde4f244e06b85c80e8d64.md) | 75 | `result-track:4bbde4f244e06b85c80e8d64d4695dc0dd19fd20bc38d964c1411def7ff5dfbc` |
| 10 | `theorem` | [ContinuousMap.HomotopyEquiv.contractibleSpace_iff](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1.lean/declarations/continuousmap-homotopyequiv-contractiblespace-iff--8e88a32b045c57f0817837d3.md) | 79 | `result-track:8e88a32b045c57f0817837d3caf9a4d42e29c18db0c1c72cee9c7d707f852cfd` |
| 11 | `theorem` | [Homeomorph.contractibleSpace](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1.lean/declarations/homeomorph-contractiblespace--17f4cbdc442a58fec81694bb.md) | 83 | `result-track:17f4cbdc442a58fec81694bb72e0c799f40c19aaa0b5c322a298de08db81bf96` |
| 12 | `theorem` | [Homeomorph.contractibleSpace_iff](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1.lean/declarations/homeomorph-contractiblespace-iff--b51785a8310d6d7fb2f207ab.md) | 87 | `result-track:b51785a8310d6d7fb2f207abcb1a5c36fb614926d0b2d88c8dbe6ce833847a82` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1.lean/declarations/instance--aebc18ce9c438c29a30a9d35.md) | 93 | `declaration-track:aebc18ce9c438c29a30a9d35f13f5b16694ddd4de17a63cd648c511947813a2d` |
| 14 | `theorem` | [hequiv](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1.lean/declarations/hequiv--49c6ff8d9aa993e48e93d169.md) | 98 | `result-track:49c6ff8d9aa993e48e93d169eb5ae7e5d95aeb79e2d7956a2ecc7ff5fe4628e9` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Contractible/Variant544abfc7c0ed74833111515f7f93fcf189bc89a70e4dfb3d99c5fb0ec8ecf8e1.lean/declarations/instance--4efe03e6f255e3a562c0a46f.md) | 104 | `declaration-track:4efe03e6f255e3a562c0a46fcf68ab766bcba25e637ed45280af0a36da2cb8b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
