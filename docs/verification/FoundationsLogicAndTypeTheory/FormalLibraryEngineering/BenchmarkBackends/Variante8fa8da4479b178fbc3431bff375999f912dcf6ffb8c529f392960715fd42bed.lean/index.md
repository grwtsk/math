# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BenchmarkBackends.Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a8e5683fd73b8b7d17296f443499cee1f9205e9",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a8e5683fd73b8b7d17296f443499cee1f9205e9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalReal` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalDyadic` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 9; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalDyadic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkPowerExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/mkpowerexpr--26f35b254b1e503ae8dd3db5.md) | 46 | `declaration-track:26f35b254b1e503ae8dd3db503c378899ac8521b0e5b0efd9a9acc7e71b5331a` |
| 2 | `def` | [mkPolynomialExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/mkpolynomialexpr--22a42c2901e25c929d884796.md) | 52 | `declaration-track:22a42c2901e25c929d884796647d60a2a96092cd3768e875f34a166250c983fc` |
| 3 | `def` | [mkDeepMulExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/mkdeepmulexpr--d9d2648cc4ee536f6b0d3575.md) | 58 | `declaration-track:d9d2648cc4ee536f6b0d3575a5d23897434940d8605dd32aac3e3aaca368a2d7` |
| 4 | `def` | [mkNestedSin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/mknestedsin--e0e91cab51de8bd6d412b357.md) | 64 | `declaration-track:e0e91cab51de8bd6d412b3576218214e5c1669e90f04a8a1324b77aaf7657f62` |
| 5 | `def` | [mkNestedExp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/mknestedexp--126ff76770e2342c1f22b29a.md) | 70 | `declaration-track:126ff76770e2342c1f22b29af1d5226f6f5b525085572f8546422a99a208cb92` |
| 6 | `def` | [mkMixedExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/mkmixedexpr--79580f98f75e06e5c790963f.md) | 76 | `declaration-track:79580f98f75e06e5c790963fa3d45b463521145fc664f859f412f440b3558be5` |
| 7 | `def` | [mkHornerPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/mkhornerpoly--f3ef3702604a191207034eb4.md) | 85 | `declaration-track:f3ef3702604a191207034eb4f5965bfb2972aa791dfba2ab2d6676f7b4a366be` |
| 8 | `def` | [mkExpandedBinomial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/mkexpandedbinomial--d7412b8480e1c914a66b341b.md) | 92 | `declaration-track:d7412b8480e1c914a66b341b720c0a35e6a5488e0c019290a02ee65078f82ffe` |
| 9 | `def` | [testIntervalRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/testintervalrat--e462e62891bf19a3d78c7458.md) | 102 | `declaration-track:e462e62891bf19a3d78c7458a20265c0f6bdfa888009ccf800f6da666a84c6ed` |
| 10 | `def` | [smallIntervalRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/smallintervalrat--5eb3c25c7f249bfffdd5662c.md) | 105 | `declaration-track:5eb3c25c7f249bfffdd5662c02b63c4e29c5401b454d6ef54976619f44810443` |
| 11 | `def` | [testIntervalDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/testintervaldyadic--d54c071863476139ccb2dc9b.md) | 108 | `declaration-track:d54c071863476139ccb2dc9b8b86d3d495ff0d888f9f8a33004b66cda7baf238` |
| 12 | `def` | [smallIntervalDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/smallintervaldyadic--396f4cb01e2fae5925704536.md) | 112 | `declaration-track:396f4cb01e2fae59257045368f44d75314260c1e066f6ba03418ca76d191b4ea` |
| 13 | `def` | [evalRational](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/evalrational--016da1ee1e6c227102e22a81.md) | 118 | `declaration-track:016da1ee1e6c227102e22a810cb7654bb5191255d35b2984aecfbc9a2766a86b` |
| 14 | `def` | [evalDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/evaldyadic--60ef67bc488a35f49cc30a0e.md) | 122 | `declaration-track:60ef67bc488a35f49cc30a0e7432aac9689bb9c4ce3b0af18bedebda6878eac6` |
| 15 | `def` | [polyExpr5](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/polyexpr5--6142e162a938e97a37af7292.md) | 128 | `declaration-track:6142e162a938e97a37af72920b29fb5dc64c075f043e9bd8eea07f46670a6c86` |
| 16 | `def` | [polyExpr10](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/polyexpr10--47b50f526201fd0a4d603c4d.md) | 129 | `declaration-track:47b50f526201fd0a4d603c4d23827036018c36993eaaf67e1ced4b9546d4a93f` |
| 17 | `def` | [polyExpr15](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/polyexpr15--32968da5a455a3439f43a27d.md) | 130 | `declaration-track:32968da5a455a3439f43a27de647d4a51ea0bc7ab7c2a5e2296c68eb4e3d414f` |
| 18 | `def` | [polyExpr20](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/polyexpr20--0b176d1304076bad21327ce4.md) | 131 | `declaration-track:0b176d1304076bad21327ce4c85ad47ac321e9259aa28b0f7cd178cb264edc98` |
| 19 | `def` | [deepMul10](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/deepmul10--0cecf14de8760c23b76d8acc.md) | 134 | `declaration-track:0cecf14de8760c23b76d8acc9744a53025ccbfb468bb55b4577b008bfadc24b9` |
| 20 | `def` | [deepMul20](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/deepmul20--49e80f616a4bf5cf16bb9961.md) | 135 | `declaration-track:49e80f616a4bf5cf16bb99613a7a9efa7b95b43f95190a15c98c7bd9cff5eb67` |
| 21 | `def` | [deepMul30](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/deepmul30--4c070e26efabc246fcf9e709.md) | 136 | `declaration-track:4c070e26efabc246fcf9e70972b99cf8c7a000a7587e8d1c6e9fc52ed29fe2f0` |
| 22 | `def` | [deepMul50](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/deepmul50--abeed2afca81827e24a4ce31.md) | 137 | `declaration-track:abeed2afca81827e24a4ce31ea2fb6bc6daf882b1f002477f5148e001e288a4a` |
| 23 | `def` | [nestedSin3](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/nestedsin3--dc533a64a1298f5192cae5df.md) | 140 | `declaration-track:dc533a64a1298f5192cae5df1e5cebbf06c311a2c94bffce91e386aa92837041` |
| 24 | `def` | [nestedSin5](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/nestedsin5--d11fec39216841f177a33057.md) | 141 | `declaration-track:d11fec39216841f177a330573f3d521c2184479ca98d4755c75e62240d78d739` |
| 25 | `def` | [nestedSin7](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/nestedsin7--b077f5a499ba9211aa42b45c.md) | 142 | `declaration-track:b077f5a499ba9211aa42b45cfd8c1686d1633d20c606f47920ba7d4355191d4f` |
| 26 | `def` | [nestedExp2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/nestedexp2--9e9740cd03b358a455aacd32.md) | 145 | `declaration-track:9e9740cd03b358a455aacd321419ba15b3c6ecd2c16e0a47ef03fec180276089` |
| 27 | `def` | [nestedExp3](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/nestedexp3--051edec68bca5321fcdcfb5f.md) | 146 | `declaration-track:051edec68bca5321fcdcfb5fe086bf2da59657c24a492ab9611fcdb6515fc531` |
| 28 | `def` | [horner10](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/horner10--359d570e634d27994a837715.md) | 149 | `declaration-track:359d570e634d27994a837715994e32121d4ac6f6e2143d4428c32de1597323a9` |
| 29 | `def` | [horner20](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/horner20--7280c1fd674a6f9244f200eb.md) | 150 | `declaration-track:7280c1fd674a6f9244f200eb1453f6abea94dca305e2b3c8d46f080d71923361` |
| 30 | `def` | [binomial5](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/binomial5--97a68e2cc27496a6a0f637b9.md) | 153 | `declaration-track:97a68e2cc27496a6a0f637b9fab18f601c5f0da67fa2ea33c865a77ec7afe43f` |
| 31 | `def` | [binomial10](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/binomial10--e0c6bc6f62669f6e36e1fb7f.md) | 154 | `declaration-track:e0c6bc6f62669f6e36e1fb7f235eb94b98341a3085791d1d7221c06b5fa51552` |
| 32 | `def` | [binomial15](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/binomial15--f096b87f1bff44dc45518b97.md) | 155 | `declaration-track:f096b87f1bff44dc45518b97bf6dd589a906aad79523c5af1beb98cf5c865cb8` |
| 33 | `structure` | [BenchResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/benchresult--1da11b87d6a7bf3fce756d7e.md) | 160 | `declaration-track:1da11b87d6a7bf3fce756d7e24b6e8386a01df1f421dc135f66240f084e6e79f` |
| 34 | `def` | [runBenchmark](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/runbenchmark--0bfc9d14519b702433d42ded.md) | 169 | `declaration-track:0bfc9d14519b702433d42ded74a29998375b42983c1fa5be0788f271d0614d56` |
| 35 | `def` | [runDyadicOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/rundyadiconly--62fddab5540743444698cada.md) | 217 | `declaration-track:62fddab5540743444698cadae7ad0fe58aaedc3a660ab6afe67fdecafc6b4e3b` |
| 36 | `def` | [comparePrecision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/compareprecision--ebbd2f2eaf9cb87a12759dc4.md) | 232 | `declaration-track:ebbd2f2eaf9cb87a12759dc440dec388c15f71c9e0f8196b462b5e083ac2d4f0` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/example--ec5cf3884be2cd7894ce5ae1.md) | 250 | `declaration-track:ec5cf3884be2cd7894ce5ae17c709d560c98905fe845d5a313feb10baf3d0f6c` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/declarations/example--7af6654a5bbead48ad1d02d9.md) | 253 | `declaration-track:7af6654a5bbead48ad1d02d911db9c04a3a1d938fae2953d77bf0018b95f6e20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
