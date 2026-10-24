# Verification target: GRWTSK.Algebra.LinearAlgebra.Rank.Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88d6d640957a3b508d40ec1445a27b7a7bad1c2e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88d6d640957a3b508d40ec1445a27b7a7bad1c2e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Finrank` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Rank` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Submodule.finrank_map_subtype_eq](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/declarations/submodule-finrank-map-subtype-eq--ea793bcfc80b4b39b89da9ab.md) | 43 | `result-track:ea793bcfc80b4b39b89da9abd71e52461e5178eef4f11dcf995e638051cef5f5` |
| 2 | `theorem` | [rank_lt_aleph0](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/declarations/rank-lt-aleph0--eaf927a23ef8b01d28bea0a3.md) | 59 | `result-track:eaf927a23ef8b01d28bea0a3d755eae13eaf322d87301b18bca5539a03071d1e` |
| 3 | `theorem` | [finrank_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/declarations/finrank-eq-rank--7a39fce455f1f60f860760e5.md) | 70 | `result-track:7a39fce455f1f60f860760e586ac1e04943822714a0b06d5f65a9974ddb0aade` |
| 4 | `theorem` | [finrank_eq_card_chooseBasisIndex](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/declarations/finrank-eq-card-choosebasisindex--62802b4f9f9da0cd11b428bc.md) | 85 | `result-track:62802b4f9f9da0cd11b428bc2ef0d265140710a5a1072d9ccca74e8b1964893d` |
| 5 | `theorem` | [finrank_finsupp](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/declarations/finrank-finsupp--eec60b1c07a9eda2d400026f.md) | 92 | `result-track:eec60b1c07a9eda2d400026f4ddb207b4f269bd991e3582e47e9b08f9c6e5bef` |
| 6 | `theorem` | [finrank_pi](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/declarations/finrank-pi--267c511e026162085ac94b5b.md) | 97 | `result-track:267c511e026162085ac94b5ba50766a3238aeaeae607f9cfddd78976704ea877` |
| 7 | `theorem` | [finrank_directSum](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/declarations/finrank-directsum--afb3d016511a8984614773d7.md) | 103 | `result-track:afb3d016511a8984614773d7f1568e122187af8dab9fce5b441c16308eacb721` |
| 8 | `theorem` | [finrank_prod](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/declarations/finrank-prod--39ca9f121b4231780ca54068.md) | 113 | `result-track:39ca9f121b4231780ca54068cc6407f595b9d940f1d18424bc93abaa1405e472` |
| 9 | `theorem` | [finrank_pi_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/declarations/finrank-pi-fintype--f97a04d840575ee042cee7ce.md) | 119 | `result-track:f97a04d840575ee042cee7ce6cb663632e5c6fba1ee4f173e16cae429b72ead3` |
| 10 | `theorem` | [finrank_matrix](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/declarations/finrank-matrix--e0476dec1fcf5e0902b8b79a.md) | 129 | `result-track:e0476dec1fcf5e0902b8b79a70e025c0df6eee1808c0b2e0cc7773e674bc8582` |
| 11 | `theorem` | [nonempty_linearEquiv_of_finrank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/declarations/nonempty-linearequiv-of-finrank-eq--4d1eb21e05b9f297657b71f9.md) | 136 | `result-track:4d1eb21e05b9f297657b71f9eaea3573edb7ff5d1259f53b2ce767530343bf9f` |
| 12 | `theorem` | [nonempty_linearEquiv_iff_finrank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/declarations/nonempty-linearequiv-iff-finrank-eq--b384deb4d4ba242dda83f425.md) | 142 | `result-track:b384deb4d4ba242dda83f425e80937a9b9cc074f16443f8b8d55a0d0d99eaa66` |
| 13 | `def` | [_root_.LinearEquiv.ofFinrankEq](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/declarations/root-linearequiv-offinrankeq--4a0f6d5ff5383f23b76c78c8.md) | 149 | `declaration-track:4a0f6d5ff5383f23b76c78c8fda654779a57264d491579c8995381273cb231d4` |
| 14 | `theorem` | [finrank_tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/declarations/finrank-tensorproduct--a36cedf2547a4b96fbb06966.md) | 165 | `result-track:a36cedf2547a4b96fbb069661efe15c23e4095ec39a7e279f59c5213bb32f73a` |
| 15 | `theorem` | [LinearMap.finrank_le_finrank_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/declarations/linearmap-finrank-le-finrank-of-injective--87081f0d02092360f06d0d4f.md) | 186 | `result-track:87081f0d02092360f06d0d4f95ba985a2473a20f4d23ddab114ba8621e71d77f` |
| 16 | `theorem` | [LinearMap.finrank_range_le](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/declarations/linearmap-finrank-range-le--2059c1fadda31e9c6ca21966.md) | 191 | `result-track:2059c1fadda31e9c6ca21966d47216509f00228184e11f6fe53ccc7af1a58495` |
| 17 | `theorem` | [Submodule.finrank_le](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/declarations/submodule-finrank-le--2c19395a99118550777661e6.md) | 197 | `result-track:2c19395a99118550777661e6321cc36c243b8bd8bb62b7ffd92e52fc5ca86ab5` |
| 18 | `theorem` | [Submodule.finrank_quotient_le](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/declarations/submodule-finrank-quotient-le--308a1eda7e5beeabd453aef9.md) | 204 | `result-track:308a1eda7e5beeabd453aef910a0e159326304415e9a781d391eda7b8e02308d` |
| 19 | `theorem` | [Submodule.finrank_map_le](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/declarations/submodule-finrank-map-le--729630a88f873d1c68e99c10.md) | 212 | `result-track:729630a88f873d1c68e99c10cf1d6954f70df658c3f39c04c8ac24672c1e2263` |
| 20 | `theorem` | [Submodule.finrank_le_finrank_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variante5650da336f33f08a9f6afec052fa212244168027c90061ffac3049457fdfa16.lean/declarations/submodule-finrank-le-finrank-of-le--2ef7218373bb61ed36e6d3e3.md) | 217 | `result-track:2ef7218373bb61ed36e6d3e32dab59fe2ce938397c029dc7e27ac05b55e0708f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
