# Verification target: GRWTSK.Algebra.LinearAlgebra.NumberSystems.Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "291169b52102d0cddb49c8e816772ad8e1f7b301",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `291169b52102d0cddb49c8e816772ad8e1f7b301`.

Source path: `GRWTSK/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Representation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [descriptorMatrix1](../../../../../mathematics/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean/declarations/descriptormatrix1--2cfbf3aaae77593987de0d3e.md) | 13 | `declaration-track:2cfbf3aaae77593987de0d3e12a4a7ce79f7970416063ba1e22607b348729ffd` |
| 2 | `structure` | [NatMatrixCode](../../../../../mathematics/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean/declarations/natmatrixcode--995c981a03540b2ca497b341.md) | 16 | `declaration-track:995c981a03540b2ca497b3417b5e2eb5686fd930ba0243e3078c3107c48c4d8a` |
| 3 | `def` | [encodeNat](../../../../../mathematics/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean/declarations/encodenat--6f6c0c15c23b8163a5cb5aec.md) | 20 | `declaration-track:6f6c0c15c23b8163a5cb5aec57034a85e2c188749d7def89174fb9352c1ba6be` |
| 4 | `def` | [decodeNat?](../../../../../mathematics/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean/declarations/decodenat--f60357a96304c23ec1546b1f.md) | 24 | `declaration-track:f60357a96304c23ec1546b1f97a67028f22590ef8af5a87fbf2837864537abd9` |
| 5 | `theorem` | [nat_blm_roundTrip](../../../../../mathematics/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean/declarations/nat-blm-roundtrip--0cd80ce143c30d56aa47ba4d.md) | 27 | `result-track:0cd80ce143c30d56aa47ba4d67389d9d227f83b29f1a3678051dcbc1f51d310b` |
| 6 | `structure` | [IntMatrixCode](../../../../../mathematics/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean/declarations/intmatrixcode--4faade539488a96b24e72e21.md) | 31 | `declaration-track:4faade539488a96b24e72e21841d1321e86055154cf6a83e65b7c20866d47a67` |
| 7 | `def` | [encodeInt](../../../../../mathematics/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean/declarations/encodeint--8feb0d4a81e6910d4ee65217.md) | 35 | `declaration-track:8feb0d4a81e6910d4ee65217efb34e6f6facd866dd6ed473635b310e46d6279e` |
| 8 | `def` | [decodeInt?](../../../../../mathematics/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean/declarations/decodeint--8aa0b2d8a030efd5dad4e6c1.md) | 39 | `declaration-track:8aa0b2d8a030efd5dad4e6c16335afe1deb681f9479abaee75511b49632c9914` |
| 9 | `theorem` | [int_blm_roundTrip](../../../../../mathematics/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean/declarations/int-blm-roundtrip--70b387ce928876ad13b09d94.md) | 42 | `result-track:70b387ce928876ad13b09d9468a151386c34c42829fea49f9630d283de9e1880` |
| 10 | `structure` | [ZModMatrixCode](../../../../../mathematics/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean/declarations/zmodmatrixcode--adf67eae5386f3e0eb5360bd.md) | 46 | `declaration-track:adf67eae5386f3e0eb5360bd2390fe0c06baea4b0d22ffb536cbcf79637d0287` |
| 11 | `def` | [encodeZMod](../../../../../mathematics/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean/declarations/encodezmod--7e42a5ba4e7c1f0fc04ed8e9.md) | 51 | `declaration-track:7e42a5ba4e7c1f0fc04ed8e9d1c5ca75d2fc626d4171c95f70d8686402689ef2` |
| 12 | `def` | [decodeZMod?](../../../../../mathematics/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean/declarations/decodezmod--352274cd85e2faf7c01f98c9.md) | 54 | `declaration-track:352274cd85e2faf7c01f98c9be0b3307615efa58b7e127b19bfa683ea58bf038` |
| 13 | `theorem` | [zmod_blm_roundTrip](../../../../../mathematics/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean/declarations/zmod-blm-roundtrip--fef340db1711b9589b4d1cc5.md) | 57 | `result-track:fef340db1711b9589b4d1cc522e1b0a678c5f86826b0af26088a80f5c8b7c63b` |
| 14 | `inductive` | [NumberSystemDescriptor](../../../../../mathematics/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean/declarations/numbersystemdescriptor--c9f05dde2a7193d5677fcca4.md) | 61 | `declaration-track:c9f05dde2a7193d5677fcca420940d139020524930095174d49f98bc8aba852d` |
| 15 | `structure` | [NumberSystemRegistryEntry](../../../../../mathematics/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean/declarations/numbersystemregistryentry--6f337ea8d59d9229c326b88c.md) | 71 | `declaration-track:6f337ea8d59d9229c326b88cf3e20cc3a2936691578f5a8b6e471872ec059144` |
| 16 | `theorem` | [registry_entry_keeps_boundary](../../../../../mathematics/Algebra/LinearAlgebra/NumberSystems/Variant4628a6cff8b3878b3ee3493e570c72bf981e7ea6610eac8d589a89edcc7be779.lean/declarations/registry-entry-keeps-boundary--0347738c78ee3d620245683e.md) | 77 | `result-track:0347738c78ee3d620245683ed484d4a0c40fc4f0c6dd93dcf13f0b43292bb5f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
