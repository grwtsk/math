# Verification target: GRWTSK.NumberTheory.Farey.CatMapArithmeticBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05bbe17dc2eda31fe8e4b7ad2b044ccafc996a8d",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/CatMapArithmeticBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05bbe17dc2eda31fe8e4b7ad2b044ccafc996a8d`.

Source path: `GRWTSK/NumberTheory/Farey/CatMapArithmeticBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/CatMapArithmeticBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.ProjectiveQuadraticChannel`](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Topology.Instances.AddCircle.Real` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [catInteger](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/catinteger--eb2543b521028f18df4ce4bb.md) | 53 | `declaration-track:eb2543b521028f18df4ce4bb42396a63aa76df5ad58fa8641e031da584bf99d1` |
| 2 | `theorem` | [catInteger_eq](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/catinteger-eq--676f682ce4773a9f86494727.md) | 55 | `result-track:676f682ce4773a9f8649472729344b779f2b30ba62153fede4ae9a5104ec709c` |
| 3 | `def` | [swapInteger](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/swapinteger--ca2ec15b52e3ec53c6abffd6.md) | 59 | `declaration-track:ca2ec15b52e3ec53c6abffd6c1b1645d610f77df5084a6f05b61f5e252c0a082` |
| 4 | `theorem` | [swapInteger_sq](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/swapinteger-sq--b350ccfdbf65b77ab8cf20b7.md) | 61 | `result-track:b350ccfdbf65b77ab8cf20b7d60ed059c3fdce81439a3c81366ee58a4e78d2fc` |
| 5 | `theorem` | [catInteger_conjugate](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/catinteger-conjugate--06c1a4b70ccebebf5144c7fa.md) | 69 | `result-track:06c1a4b70ccebebf5144c7fa44dc5f6b23a94fabb67940dab90933aa66939cc1` |
| 6 | `def` | [catReal](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/catreal--6cfe425e1bb2892c919cff31.md) | 80 | `declaration-track:6cfe425e1bb2892c919cff314a83595801f6f2b31cdd38eaafaa7883db46f1cc` |
| 7 | `theorem` | [catReal_eq](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/catreal-eq--51847509ca7b761606320f33.md) | 82 | `result-track:51847509ca7b761606320f33a617bf332ee4251acb643e1ba8e33afe0183868f` |
| 8 | `def` | [swapReal](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/swapreal--7983503e3bd18005f6c32bd0.md) | 88 | `declaration-track:7983503e3bd18005f6c32bd07e6cd53b4984d61e57963833e9983df29d79ebf9` |
| 9 | `theorem` | [catReal_conjugate](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/catreal-conjugate--9a765c1d3725fc2196801f73.md) | 90 | `result-track:9a765c1d3725fc2196801f73247114cf67b830797d15ec3bb68732c444c2a559` |
| 10 | `def` | [catFiniteMatrix](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/catfinitematrix--01a0543fe406af55a082b2f6.md) | 98 | `declaration-track:01a0543fe406af55a082b2f6ac197797b8185c582be80797eed5777950cd7e9b` |
| 11 | `theorem` | [catFiniteMatrix_eq](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/catfinitematrix-eq--e8c57b7277ba9b043e1cf8f7.md) | 100 | `result-track:e8c57b7277ba9b043e1cf8f74a8fb9f955eb0268c8e410c0c834e6e68bf46333` |
| 12 | `def` | [catFinite](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/catfinite--f381fa4ef34e47773985ef2d.md) | 106 | `declaration-track:f381fa4ef34e47773985ef2d8d0112bfadd91471a12e18017d554eec307741d4` |
| 13 | `theorem` | [catFinite_matrix](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/catfinite-matrix--994ca93f7db0c55d411a78ab.md) | 109 | `result-track:994ca93f7db0c55d411a78ab38ec8343932830ff565d9e5e3ebaf74d115c82a8` |
| 14 | `def` | [swapFinite](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/swapfinite--cae278cfcc69e16d4f604cde.md) | 119 | `declaration-track:cae278cfcc69e16d4f604cdef4c571abe4651d895407716139e9cf5ba1d65ff4` |
| 15 | `theorem` | [swapFinite_involutive](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/swapfinite-involutive--ebe4f05467370381d9cfbd18.md) | 121 | `result-track:ebe4f05467370381d9cfbd18c7e4eb161a18e5c9cbf5aa65ffe762c8d281dae7` |
| 16 | `theorem` | [swapFinite_catFinite](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/swapfinite-catfinite--9a0e8038ed958dce7cbc7ae9.md) | 126 | `result-track:9a0e8038ed958dce7cbc7ae912aa79608b04af16a6316ee46f41ac5b4b03396e` |
| 17 | `def` | [finiteCatReadout](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/finitecatreadout--0ba9cb144cc5f6f6c75c42b0.md) | 142 | `declaration-track:0ba9cb144cc5f6f6c75c42b020dc1084e26c853ffcb28e3f6ea3be3fb1fd288d` |
| 18 | `theorem` | [finiteCatReadout_eigen](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/finitecatreadout-eigen--e417b98f816eb3734d10e092.md) | 145 | `result-track:e417b98f816eb3734d10e092bb7b628fb4019ef3843ea345324e0e6d7d9e2200` |
| 19 | `def` | [finiteWitness](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/finitewitness--592ddd1fc9f0b74c07c2a45a.md) | 154 | `declaration-track:592ddd1fc9f0b74c07c2a45a960cd26d0e5f0ac06963c552ea23c04859a93806` |
| 20 | `theorem` | [finiteCatReadout_witness](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/finitecatreadout-witness--c33d0bb8628a91d1b10708b0.md) | 156 | `result-track:c33d0bb8628a91d1b10708b01de6680a7e65cad78da56c2ca0004b5a9cb2f444` |
| 21 | `abbrev` | [Torus2](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/torus2--0d118da072d9feb9af45fb40.md) | 162 | `declaration-track:0d118da072d9feb9af45fb40dbd610e451f7bbeeebacfbcd59a90a4596f62e53` |
| 22 | `def` | [catTorus](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/cattorus--a307f348092b601ed9deceb9.md) | 166 | `declaration-track:a307f348092b601ed9deceb95ccdadc5d24a6ff26a4cdf342accd2ecf1212a97` |
| 23 | `def` | [torsionEmbedding](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/torsionembedding--4cce085646cbb9b89deaa7c8.md) | 171 | `declaration-track:4cce085646cbb9b89deaa7c8218086465ec67ad766913a8f64ec2a58e05269f2` |
| 24 | `theorem` | [torsionEmbedding_injective](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/torsionembedding-injective--5c0e186e3b76cf01a9d4d713.md) | 174 | `result-track:5c0e186e3b76cf01a9d4d7137e07cbacc3cc5600308d4cec1cd338a7a047d766` |
| 25 | `theorem` | [torsionEmbedding_three_nsmul](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/torsionembedding-three-nsmul--9942b66e045907d54b0ee3e1.md) | 183 | `result-track:9942b66e045907d54b0ee3e16da1172573e216e3867f972280fcccca3b61436c` |
| 26 | `theorem` | [catTorus_torsion_intertwines](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/cattorus-torsion-intertwines--0175f79ac690238225c7cb6f.md) | 198 | `result-track:0175f79ac690238225c7cb6f8013d3d660189ae71d0f8dc91078c241ccd5e837` |
| 27 | `theorem` | [torsion_phase_eigen](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/declarations/torsion-phase-eigen--9e6597c79da9de04ca03c341.md) | 209 | `result-track:9e6597c79da9de04ca03c34149fc20456a7dc76c090bc0380f41daaa7b37836a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
