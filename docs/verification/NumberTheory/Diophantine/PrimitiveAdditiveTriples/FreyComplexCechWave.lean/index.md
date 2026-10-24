# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyComplexCechWave

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a272c7f5aeb65de79e1372f4a43c786fd2ec5a0c",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a272c7f5aeb65de79e1372f4a43c786fd2ec5a0c`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.CubicWavePhase`](../../../../../mathematics/Analysis/ComplexAnalysis/CubicWavePhase.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyComplexRealization`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/index.md) — import line 13; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechHeat`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechHeat.lean/index.md) — import line 14; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Data](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/data--3294df7ec93d88daabf64fc8.md) | 28 | `declaration-track:3294df7ec93d88daabf64fc82c61ef0913814162f5d27f239d6c9045925f26fe` |
| 2 | `def` | [componentData](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/componentdata--549cfe69fdab635acc2e18ff.md) | 30 | `declaration-track:549cfe69fdab635acc2e18ffc916ff767de9ac1aca604f83a8028609caf257fb` |
| 3 | `theorem` | [data_ext](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/data-ext--b0b793efc7a10d34c1883bf2.md) | 34 | `result-track:b0b793efc7a10d34c1883bf24a0e39cd19d4fb9ba1944d544db2c3e231566a58` |
| 4 | `def` | [mean](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/mean--0d4e5872723652ad7b22c571.md) | 47 | `declaration-track:0d4e5872723652ad7b22c571b0ba0ff3eecd1a3852c834b8c32ea96ec27fab3a` |
| 5 | `def` | [heat](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/heat--2e737cbd13f25f446df698a7.md) | 50 | `declaration-track:2e737cbd13f25f446df698a7b7b2dbbe08574d83043b1127d17672a18d606aaf` |
| 6 | `def` | [evolve](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/evolve--05ba7154d9dae4f77913ee1d.md) | 55 | `declaration-track:05ba7154d9dae4f77913ee1dcbfaa270ef500ec72d25e278a946ae83f3b09720` |
| 7 | `theorem` | [component_mean](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/component-mean--cb608a46960192050bbb7d73.md) | 59 | `result-track:cb608a46960192050bbb7d737145b297db143097e3d9fcdf08a952f61a952c24` |
| 8 | `theorem` | [component_heat](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/component-heat--639e0a3b10bc2005d68bba68.md) | 64 | `result-track:639e0a3b10bc2005d68bba682c696f04020cdb953eb9f75c4c7be2d999ed4cdb` |
| 9 | `theorem` | [component_evolve](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/component-evolve--1597f40d1116acc7a2be6b68.md) | 71 | `result-track:1597f40d1116acc7a2be6b683762e8a8917aa2a90815d00ae08cb5dcfe68bf16` |
| 10 | `theorem` | [evolve_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/evolve-zero--ab27ff945b87b99701d3be74.md) | 86 | `result-track:ab27ff945b87b99701d3be748f45422ca430a1e8c4abb7da8c0815fd65e2fbad` |
| 11 | `theorem` | [evolve_add](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/evolve-add--5dd01ac970325d188db7b637.md) | 91 | `result-track:5dd01ac970325d188db7b637b6404a3acdc7a6b5dcb1659ae722a5de6ceb0658` |
| 12 | `theorem` | [component_mismatch](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/component-mismatch--951ed603c9ad82743a28b947.md) | 98 | `result-track:951ed603c9ad82743a28b947484cfc6f31ae7229dd05170a277b7c8809533dcd` |
| 13 | `theorem` | [mismatch_evolve](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/mismatch-evolve--51363874b114fce686fdf8e6.md) | 103 | `result-track:51363874b114fce686fdf8e6ede0f393ec89e40cad1581d810db951923c71a6e` |
| 14 | `def` | [defect](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/defect--f56533f897c2f4e338e819cc.md) | 115 | `declaration-track:f56533f897c2f4e338e819cc2450ec5433894ffb90adb87fef1a516d17c07a26` |
| 15 | `theorem` | [defect_evolve](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/defect-evolve--716c88a38d2587745126cf1e.md) | 119 | `result-track:716c88a38d2587745126cf1edab3183494212a7c64de938f1e3d5958adbd7609` |
| 16 | `def` | [scaleData](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/scaledata--af1f03b914165c88455a5f44.md) | 125 | `declaration-track:af1f03b914165c88455a5f441f73cd2361af0e0d9e2a8f4ed2e4e2bd0249f65e` |
| 17 | `theorem` | [mismatch_scale](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/mismatch-scale--66ce762e2499a78b88b0afa0.md) | 128 | `result-track:66ce762e2499a78b88b0afa02b4bcda064338cd23ada96036e23f49fcbd91efc` |
| 18 | `structure` | [Raw](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/raw--0b4bbbc56ee27b83dfaac47d.md) | 134 | `declaration-track:0b4bbbc56ee27b83dfaac47d95739e696ced2e826de34e6227ee6c65e73aadbb` |
| 19 | `def` | [encode](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/encode--c6b563450c285a198b5ea0b2.md) | 138 | `declaration-track:c6b563450c285a198b5ea0b2a1ac13213282481359e6f2962cf9afc61c216fe4` |
| 20 | `def` | [decode](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/decode--3a8bee6742471acae5dbcbca.md) | 141 | `declaration-track:3a8bee6742471acae5dbcbcaf57d9543fbdaba281f42c8907446677e8cdbffad` |
| 21 | `theorem` | [decode_encode](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/decode-encode--d173890d8c87d4e3a70e36ec.md) | 144 | `result-track:d173890d8c87d4e3a70e36ecd7e68dbcbcbed69fbb770453c5e7dc966f8c1c20` |
| 22 | `theorem` | [encode_decode](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/encode-decode--cbb52f3aa3aaa594dd2ada71.md) | 150 | `result-track:cbb52f3aa3aaa594dd2ada71316b883cbcf8586f2ea251828abc561331566db1` |
| 23 | `def` | [wave](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/wave--6c67703548d3c27ac4053602.md) | 158 | `declaration-track:6c67703548d3c27ac40536029d9ae1a286ce18e97bbe39b46fc32cd78b5f43ad` |
| 24 | `theorem` | [wave_period](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/wave-period--0f44789662dc402f9af10d62.md) | 161 | `result-track:0f44789662dc402f9af10d62368d47957b784871731db4fbd60084450e0c419a` |
| 25 | `theorem` | [wave_mismatch](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/wave-mismatch--ddceba8d77ce9657f6782dab.md) | 166 | `result-track:ddceba8d77ce9657f6782dabbb5bde68c0441af67603e80af450cb22c32bec6b` |
| 26 | `theorem` | [wave_matching_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/wave-matching-iff--e02a7a3be45039f34509c0ae.md) | 173 | `result-track:e02a7a3be45039f34509c0ae2c6930aad8aec953d64fc2d45e53ca1b15e0b75b` |
| 27 | `theorem` | [wave_glue_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/wave-glue-iff--d76eb46d707fb7591c258f13.md) | 185 | `result-track:d76eb46d707fb7591c258f130fc9ca052e4a01e5592f76b950b3a6ffa588ff01` |
| 28 | `def` | [mismatchEnergy](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/mismatchenergy--9ec2b2195b27090cf10bf93d.md) | 191 | `declaration-track:9ec2b2195b27090cf10bf93dc9842045bdb7604f75e87a121e600041fc3258f4` |
| 29 | `theorem` | [wave_mismatch_energy](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/wave-mismatch-energy--e8bd5e87d9c2f2f24c6c100b.md) | 194 | `result-track:e8bd5e87d9c2f2f24c6c100bade0ff448474f7009e98a47f4dfe2dcf7214bf97` |
| 30 | `def` | [port](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/port--2f0ef7017e8c993f16d98771.md) | 203 | `declaration-track:2f0ef7017e8c993f16d98771e9056e1cad2fe1af54b62a166967925adbc47a3d` |
| 31 | `theorem` | [component_port](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/component-port--2c0b83be2985718a83b9bcf4.md) | 206 | `result-track:2c0b83be2985718a83b9bcf4d59b93a478b047735be93f5952ace6412a5b61a2` |
| 32 | `theorem` | [port_evolve](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/port-evolve--4eeb8dac71c6b3220aeb8c27.md) | 212 | `result-track:4eeb8dac71c6b3220aeb8c27cd62adc276ff1ca221d0fbc5842d9e42d031eac4` |
| 33 | `def` | [rawPort](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/rawport--f9775cc1201ed5472762dd05.md) | 219 | `declaration-track:f9775cc1201ed5472762dd05f71a1aa787197bc00ec7ac38ab8e97c2c53e486c` |
| 34 | `theorem` | [rawPort_wave](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/declarations/rawport-wave--349ec1adadbaaf7d59507395.md) | 223 | `result-track:349ec1adadbaaf7d595073957aa7972f14024dc225b762959aa70109b1cca3ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
