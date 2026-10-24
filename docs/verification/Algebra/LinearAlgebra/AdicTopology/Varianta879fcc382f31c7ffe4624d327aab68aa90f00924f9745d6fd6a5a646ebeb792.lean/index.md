# Verification target: GRWTSK.Algebra.LinearAlgebra.AdicTopology.Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07eedfdb10539d653e1f4a3c918fd1d7096fdde4",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07eedfdb10539d653e1f4a3c918fd1d7096fdde4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Maps` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Nonarchimedean.Bases` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformRing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adic_basis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/adic-basis--57eae0b433f3dfc42357eb73.md) | 52 | `result-track:57eae0b433f3dfc42357eb73c9b5294ce134aaf782835d00ee5e3468545cb485` |
| 2 | `def` | [ringFilterBasis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/ringfilterbasis--2616c87da896524fc1b78a37.md) | 74 | `declaration-track:2616c87da896524fc1b78a371148c0096d8b49890cafc15d7e03751614ba7b73` |
| 3 | `def` | [adicTopology](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/adictopology--4c27a24e00ebbad654b2ead9.md) | 79 | `declaration-track:4c27a24e00ebbad654b2ead94ef93ba88f34a664791ee5f1662ed28760c023d9` |
| 4 | `theorem` | [nonarchimedean](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/nonarchimedean--d03a6845ec6892fe8aa57daa.md) | 82 | `result-track:d03a6845ec6892fe8aa57daa949d5650003cf1b8560e51f13c72bed338ea9bc1` |
| 5 | `theorem` | [hasBasis_nhds_zero_adic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/hasbasis-nhds-zero-adic--1d7844060df7110be4cdd170.md) | 86 | `result-track:1d7844060df7110be4cdd1707a3e9fbd9c549107775e5ae27a43f83ba5b5abb1` |
| 6 | `theorem` | [hasBasis_nhds_adic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/hasbasis-nhds-adic--282a3ca3811292c45222a0e8.md) | 99 | `result-track:282a3ca3811292c45222a0e85bdb79d2844d857e6ab8b2e1cf8d77cc6e50cf77` |
| 7 | `theorem` | [adic_module_basis](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/adic-module-basis--3ac47108525d97a499b4eb22.md) | 108 | `result-track:3ac47108525d97a499b4eb227c2843aa7d0a199d701c9209dbe6e4da7ff8867a` |
| 8 | `def` | [adicModuleTopology](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/adicmoduletopology--fffb9a525c496dd101b1c500.md) | 122 | `declaration-track:fffb9a525c496dd101b1c500e06e31aff7975b9a46c0a7cd3d2e7fba6b5e8ebd` |
| 9 | `def` | [openAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/openaddsubgroup--9769e814e42b2c731a8e398e.md) | 128 | `declaration-track:9769e814e42b2c731a8e398e67d81049f8dc7550feb7ad5c3838971675094292` |
| 10 | `def` | [IsAdic](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/isadic--f1f8efa91e6db26673144f46.md) | 141 | `declaration-track:f1f8efa91e6db26673144f46747949f3629ca90f3e717ac16a008e47f984c2cf` |
| 11 | `theorem` | [isAdic_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/isadic-iff--689b71605462edf8ceccd2ab.md) | 146 | `result-track:689b71605462edf8ceccd2abe44ecdc2479e475c563f59fc6f27437f040cf2b7` |
| 12 | `theorem` | [is_ideal_adic_pow](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/is-ideal-adic-pow--c08b39dae9c82777edbdc6dd.md) | 176 | `result-track:c08b39dae9c82777edbdc6dd22d5b60480fc0344befad8c16dde08124fcc69fa` |
| 13 | `theorem` | [is_bot_adic_iff](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/is-bot-adic-iff--e5971a19463bfc15dc2e8c1a.md) | 193 | `result-track:e5971a19463bfc15dc2e8c1a371896976ca40149f0f2ac8cf46f873ea346b9c0` |
| 14 | `class` | [WithIdeal](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/withideal--2d3bb692a6f6cbed67aa8e4a.md) | 210 | `declaration-track:2d3bb692a6f6cbed67aa8e4a54f113a8b4989be9dcdf452e39a032233202b68a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/instance--c559909686b8830594ed20cd.md) | 218 | `declaration-track:c559909686b8830594ed20cdc4768b911519a039b2dd64712512038683ae3ad6` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/instance--13b4a68d6df36399cce72c69.md) | 221 | `declaration-track:13b4a68d6df36399cce72c695877d50ca792d0982db84110c87bcc0e2570ae0f` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/instance--81ef1e5e1c1384d9289ce0a4.md) | 224 | `declaration-track:81ef1e5e1c1384d9289ce0a4a1d4ed5b0fce6ebc9609b85d265fc8793ac518f7` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/instance--37e270800dbc392977f83d0a.md) | 227 | `declaration-track:37e270800dbc392977f83d0a94c443d757e8935a7c9621ae51f77bc533e25da3` |
| 19 | `def` | [topologicalSpaceModule](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/topologicalspacemodule--1fcc58e47bf8b07c2f32c079.md) | 232 | `declaration-track:1fcc58e47bf8b07c2f32c079b441f36b62df14e898fae0cf0bd66046320bcfad` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/example--6845532653e4e8ebccbb9fe4.md) | 239 | `declaration-track:6845532653e4e8ebccbb9fe4ab7692a3ee47dc5253c03042aee40c9a1f7d37bd` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/example--1290aec8a5c91b0aa4e761a1.md) | 241 | `declaration-track:1290aec8a5c91b0aa4e761a1f0fe87054720716201f96d9ac58c23dc07bfd4a2` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/example--764a612a8c6296271b07934b.md) | 243 | `declaration-track:764a612a8c6296271b07934b57e043dac41b24449689f42a5fa73a83394b2faa` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/example--5930b9cee0ee57395e5a6ba1.md) | 246 | `declaration-track:5930b9cee0ee57395e5a6ba138657d2ebe9e9e936ee9a3db3b743ce5747c4722` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/AdicTopology/Varianta879fcc382f31c7ffe4624d327aab68aa90f00924f9745d6fd6a5a646ebeb792.lean/declarations/example--b09215cf70fb07bb6212b308.md) | 249 | `declaration-track:b09215cf70fb07bb6212b3081e8b61ed1ef130a09b9487c5382a8934df8c83a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
