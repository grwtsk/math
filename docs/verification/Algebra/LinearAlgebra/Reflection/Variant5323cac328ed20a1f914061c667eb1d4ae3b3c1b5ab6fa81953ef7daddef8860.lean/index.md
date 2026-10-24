# Verification target: GRWTSK.Algebra.LinearAlgebra.Reflection.Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9827b08a5d1ddc0e72cf2b491689fff80fd85478",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9827b08a5d1ddc0e72cf2b491689fff80fd85478`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Notation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.Reflection` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Forall](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/forall--fb3552bd658595e41cc724c3.md) | 41 | `declaration-track:fb3552bd658595e41cc724c3c8c14f8d581e2a2abfa98be1df5b72fcd5d5db28` |
| 2 | `theorem` | [forall_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/forall-iff--9f1f47a6a70097241d3aecf4.md) | 52 | `result-track:9f1f47a6a70097241d3aecf4ac2a9382229b15a1cf22eb8b5cb8969bb6d85792` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/example--63df2ff4bb81192b7ab9f7ad.md) | 58 | `declaration-track:63df2ff4bb81192b7ab9f7ad67d060deacdc1373b3527139ae76d2866efd512c` |
| 4 | `def` | [Exists](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/exists--dbb027b160bb11bb85a7262d.md) | 63 | `declaration-track:dbb027b160bb11bb85a7262d58122e580847372f19cdb897804f99c83d4c4996` |
| 5 | `theorem` | [exists_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/exists-iff--6d73e9c59ae5bd0a82eea9c5.md) | 74 | `result-track:6d73e9c59ae5bd0a82eea9c55431a799a07a6797388f5df96b3c52ed90d8c617` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/example--b60229d386dd827d0987cb99.md) | 80 | `declaration-track:b60229d386dd827d0987cb99e1ef0d01dcb47e06f2df1af5005e45cf45beb99a` |
| 7 | `def` | [transposeᵣ](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/transpose--fa277799567601523b08d3cd.md) | 85 | `declaration-track:fa277799567601523b08d3cdf459b5be1a113c17ad187441254add58fca82564` |
| 8 | `theorem` | [transposeᵣ_eq](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/transpose-eq--f89b54f2ab719e80382d0ad1.md) | 96 | `result-track:f89b54f2ab719e80382d0ad13f7ec5a82ea7bf745273f65db00f2289577784f3` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/example--49d6495622411c5ccaca3c7d.md) | 107 | `declaration-track:49d6495622411c5ccaca3c7d933d4397226b7cf6dff2aeabac2cf6209d434477` |
| 10 | `def` | [dotProductᵣ](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/dotproduct--a5bf1002dcc5bc419a483a10.md) | 111 | `declaration-track:a5bf1002dcc5bc419a483a10856c80ee66a5c0cf2c1e88471490095b78f3c76d` |
| 11 | `theorem` | [dotProductᵣ_eq](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/dotproduct-eq--2ddd287a1202ab90738d0c84.md) | 122 | `result-track:2ddd287a1202ab90738d0c842672a9d3876579d4f1f48b02d34761e6381caa6e` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/example--0d562f6ef0667ae34e43029a.md) | 127 | `declaration-track:0d562f6ef0667ae34e43029a6d89c57c7c72575be1d7d17de4c9072e404d3f06` |
| 13 | `def` | [mulᵣ](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/mul--21efc0b1698205c64f53e0e5.md) | 131 | `declaration-track:21efc0b1698205c64f53e0e56c6a89815772af64a77afade52267382a3abca0f` |
| 14 | `theorem` | [mulᵣ_eq](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/mul-eq--9d58736d7d53f45b6424ea11.md) | 147 | `result-track:9d58736d7d53f45b6424ea11258b75b250ed91a8ff13484fa1cb7497a7e78a4e` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/example--b8992339240909f3f8e6fd47.md) | 152 | `declaration-track:b8992339240909f3f8e6fd471a164e931cda76bcfc58e47d117c1e124bd5c72c` |
| 16 | `def` | [mulVecᵣ](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/mulvec--91ced883e7e8ee569d66a6a5.md) | 159 | `declaration-track:91ced883e7e8ee569d66a6a588fd470dad052a099dbeda6ff438b39e54808e79` |
| 17 | `theorem` | [mulVecᵣ_eq](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/mulvec-eq--494d9faa82f007166d83662a.md) | 171 | `result-track:494d9faa82f007166d83662abecf1858e71d43d9fabbfe17f7720befcd54480d` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/example--2a8effebe1cf62745d22dc16.md) | 176 | `declaration-track:2a8effebe1cf62745d22dc16ed1f81001ff64a72cf406e1e1c27360d964d73be` |
| 19 | `def` | [vecMulᵣ](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/vecmul--ff69df16760800c036b3e03a.md) | 181 | `declaration-track:ff69df16760800c036b3e03accba5f8d7f63ee5ae5155051d45137866e0f98f7` |
| 20 | `theorem` | [vecMulᵣ_eq](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/vecmul-eq--52666d24768cb050c90b5f2c.md) | 193 | `result-track:52666d24768cb050c90b5f2ca3255b733fc11d0f74de3ae78aa45b0b9e583d7a` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/example--3c38620ea8b8c8e83545bf97.md) | 198 | `declaration-track:3c38620ea8b8c8e83545bf978a44013a91983ad7cba2c64cfcf2e4b98a13ad3b` |
| 22 | `def` | [etaExpand](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/etaexpand--1f448e9b51014d3af5258f9a.md) | 203 | `declaration-track:1f448e9b51014d3af5258f9a72bd45a92705788e956738ac6a2c7edc19c8a751` |
| 23 | `theorem` | [etaExpand_eq](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/etaexpand-eq--6b8776dba31a39f1c0a44fcc.md) | 214 | `result-track:6b8776dba31a39f1c0a44fccfffc35a30e73a1aa715dcada65c280ad0652b943` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/declarations/example--3ce480c8e1b43d031327ae27.md) | 219 | `declaration-track:3ce480c8e1b43d031327ae27a9f77267184acd9e713f7c37c885e91075927c6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
