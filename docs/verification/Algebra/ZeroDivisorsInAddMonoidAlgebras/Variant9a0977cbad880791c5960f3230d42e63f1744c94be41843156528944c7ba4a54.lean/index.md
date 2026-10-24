# Verification target: GRWTSK.Algebra.ZeroDivisorsInAddMonoidAlgebras.Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49cef68046e69d3c93426d768a484b53a909f71b",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/index.md) · [Full source](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49cef68046e69d3c93426d768a484b53a909f71b`.

Source path: `GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.UniqueProds` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Lex` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_divisors_of_periodic](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/zero-divisors-of-periodic--86eb7d6c5a030f29567b8218.md) | 61 | `result-track:86eb7d6c5a030f29567b8218bc00ea39b5702350cc32214bac0dfff9015ff84f` |
| 2 | `theorem` | [single_zero_one](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/single-zero-one--b701c813e07507871259371e.md) | 70 | `result-track:b701c813e07507871259371ea8a875d979b9c249b37fe519868cf618fcfaf8b5` |
| 3 | `theorem` | [zero_divisors_of_torsion](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/zero-divisors-of-torsion--69e3bc83c1b6be73048e9e9e.md) | 83 | `result-track:69e3bc83c1b6be73048e9e9e6ea78e345d6d20b94fbe0e3b8c0799a6c44d558b` |
| 4 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/example--2b992c1e1c3f80a83c9ee7b5.md) | 111 | `declaration-track:2b992c1e1c3f80a83c9ee7b59b4f25b67d0668d3a0406a0a03878247fe84fa5b` |
| 5 | `inductive` | [F](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/f--2b77b162f434a1f86856ffa5.md) | 117 | `declaration-track:2b77b162f434a1f86856ffa5c20048486eb669ee6770c2609f8e2d63735acac8` |
| 6 | `def` | [List.dropUntil](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/list-dropuntil--bdd5627234d579462f4d6e83.md) | 129 | `declaration-track:bdd5627234d579462f4d6e8370807d4c55dfe1b83607d47ac2ce2d2f3e7b51d1` |
| 7 | `elab` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/elab--d91d27d09c787f7bf0663dd6.md) | 145 | `declaration-track:d91d27d09c787f7bf0663dd6573e9e6fc43684bdaa842d24e3d1edc58475e3d6` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/instance--252372d3fbeb37367b4bd6da.md) | 159 | `declaration-track:252372d3fbeb37367b4bd6da5ddf2c2db952d3fbe05ae4feda90b6590d90f1fa` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/instance--5ff55b6c8697129f58721662.md) | 163 | `declaration-track:5ff55b6c8697129f5872166229ed8cb055d0ea56e4e23b21861653f7a60312fe` |
| 10 | `macro` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/macro--6e0a3c5cc62847ec19c826eb.md) | 167 | `declaration-track:6e0a3c5cc62847ec19c826ebfad8df2d0cb3090bc201b11eb3801d15a0fa510f` |
| 11 | `def` | [val](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/val--1e1589e2ea6dc6a1a9f9c960.md) | 171 | `declaration-track:1e1589e2ea6dc6a1a9f9c96001bbd1c0a778909d615cc6ddc08fb605d5155d9e` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/instance--5ed2826be3b237daf6d5ab19.md) | 176 | `declaration-track:5ed2826be3b237daf6d5ab19a507c117533de1c6f8b8b5fcb25ef525b770dba7` |
| 13 | `theorem` | [z01](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/z01--824ee86e7babb9891d707752.md) | 180 | `result-track:824ee86e7babb9891d7077528f11244035a85af3baf8c410101c3242d9559eed` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/instance--946a274bc8fdad4a78728a2b.md) | 184 | `declaration-track:946a274bc8fdad4a78728a2b3ea6f8b35b1fbc0d1d035957d2509152b5d5c283` |
| 15 | `instance` | [covariantClass_add_le](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/covariantclass-add-le--ad850f99d2bc4f29ebbf5b19.md) | 193 | `declaration-track:ad850f99d2bc4f29ebbf5b19e70b3d6bee1be6b6b61aa9ec580af01025b050ee` |
| 16 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/example--8e73654a28703906276f2575.md) | 197 | `declaration-track:8e73654a28703906276f25758777662cec9a90d8ddd992b8d02a254a28237195` |
| 17 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/example--3f294b9f9d2396eef2c7d76f.md) | 201 | `declaration-track:3f294b9f9d2396eef2c7d76fea391a67c6118c14a5a21a0a668a58b8f8533f7e` |
| 18 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/example--542124ad6c2bf288f3f88b47.md) | 203 | `declaration-track:542124ad6c2bf288f3f88b47c6206f68e6965de1351c86cb2c0fb7b3b42778d2` |
| 19 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/example--bf14e9b0f8078bdb85b7a0a3.md) | 206 | `declaration-track:bf14e9b0f8078bdb85b7a0a392062c8752854e24eef1a6b07d0dcea0c2f34810` |
| 20 | `theorem` | [f1](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/f1--10912cb7b7d1b8bf5f1b7127.md) | 211 | `result-track:10912cb7b7d1b8bf5f1b71271afad3c88ebbf756d3b257fffa765d766effc8ac` |
| 21 | `theorem` | [f011](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/f011--fb2429e8c8404c79038c988a.md) | 215 | `result-track:fb2429e8c8404c79038c988a201a13707621e0b5e0da6f5a3520fa84f8503fc8` |
| 22 | `theorem` | [f010](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/f010--ac7e3a253de6f1f5cefc1062.md) | 220 | `result-track:ac7e3a253de6f1f5cefc1062cc777f9ceb81357dc14306cb25908e2c602afc1e` |
| 23 | `theorem` | [f111](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/f111--2efceaa5dc1f79f41da07072.md) | 225 | `result-track:2efceaa5dc1f79f41da07072babc38d0daa803a0fd7837ae94545e39e78931ce` |
| 24 | `theorem` | [f110](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/f110--9b2e94d8b90928da0c7d1472.md) | 230 | `result-track:9b2e94d8b90928da0c7d1472afee2d7baf4be7b6a92b68ce1831ae01119f2bd8` |
| 25 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/example--0fc72e11c2c2f203761b2805.md) | 237 | `declaration-track:0fc72e11c2c2f203761b28059b6528ee993d0263f17ded2ba9d7906507cb72ff` |
| 26 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/example--8116304958c8c2f03fdf7548.md) | 246 | `declaration-track:8116304958c8c2f03fdf754801ce0c1d38230310ccc516d769fdee15724d8d2e` |
| 27 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/example--789dfa0d191d3266c4bbb35a.md) | 249 | `declaration-track:789dfa0d191d3266c4bbb35a185731096959ca0c4a2d9f914da879c5b443cbf1` |
| 28 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/example--c1156af040aa3ee79f41a089.md) | 256 | `declaration-track:c1156af040aa3ee79f41a089e08379706b1878e03c5d7f0e803a1376bbd79631` |
| 29 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/declarations/example--def0859965aa5fe3f3787a77.md) | 263 | `declaration-track:def0859965aa5fe3f3787a776322f8f3b7a932253e3adc315c3d0a3593aa0a0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
