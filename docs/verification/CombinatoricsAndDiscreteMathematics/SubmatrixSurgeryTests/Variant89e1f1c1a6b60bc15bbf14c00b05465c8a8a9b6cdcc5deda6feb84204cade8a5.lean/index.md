# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SubmatrixSurgeryTests.Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a84c16be7a07f5a1738449621ce8506985436cb",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a84c16be7a07f5a1738449621ce8506985436cb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.SubmatrixSurgery` — import line 1; external provider; requires a separately pinned dependency.
- `BinaryMatrix.IntegralPermutationLift` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sampleMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/samplematrix--3489c25d3ead1b4d873698b5.md) | 13 | `declaration-track:3489c25d3ead1b4d873698b57d1b2cc0a59474a7ab51f4541372ddfabce81944` |
| 2 | `def` | [sampleLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/samplelocus--04ce3e488826a45665e0206f.md) | 16 | `declaration-track:04ce3e488826a45665e0206fd443df5ea2d4b2d5d6d8287564854dbce5f621e3` |
| 3 | `def` | [replacement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/replacement--05d7db9d6a731d45b0386742.md) | 20 | `declaration-track:05d7db9d6a731d45b038674276085c096dbcbd33709a1dc09ad2957c44a18987` |
| 4 | `def` | [sampleSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/samplesurgery--a99c6578f75948c3eea25f1e.md) | 24 | `declaration-track:a99c6578f75948c3eea25f1ee094617431e7e9fcfbff35f20dac4d30cbe0c8de` |
| 5 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--c9ff77cccd44be18adda67bd.md) | 27 | `declaration-track:c9ff77cccd44be18adda67bd40f943373a39a9c9bfeab3345f71bf7afe869a51` |
| 6 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--fa8d1084a71925287a86f8f0.md) | 29 | `declaration-track:fa8d1084a71925287a86f8f0d6cef904ff5ad1d798a9a3413945faf050fc842d` |
| 7 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--f392a69ceb4c16d3b249e52c.md) | 31 | `declaration-track:f392a69ceb4c16d3b249e52ce11d56f3c1d0847412d172252d95e3a14ab0da4e` |
| 8 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--e7ed776d328b568c411e5302.md) | 33 | `declaration-track:e7ed776d328b568c411e5302ba464e2f8e1b0f17f6fd00ff4b291dc2dde3266d` |
| 9 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--b50830d9effac42cedbd6c57.md) | 35 | `declaration-track:b50830d9effac42cedbd6c576cc2149d51e4c6cbcc94d2b0d5541df4ca14b68b` |
| 10 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--c8ada20dc7c9431abc67c314.md) | 37 | `declaration-track:c8ada20dc7c9431abc67c3149ad53ec768f643a72db0ebec8de6615951355ed8` |
| 11 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--40eac10262f8a8fa3cc7a7c8.md) | 39 | `declaration-track:40eac10262f8a8fa3cc7a7c859f66c1ea199b683e4eba9a4240db55f51983e94` |
| 12 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--116d634507d45c4613a765a4.md) | 43 | `declaration-track:116d634507d45c4613a765a4a7c8890cd852cdc32196fefdd2057ec020332d5d` |
| 13 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--eeb4d0cd35af8921d0cfe9c9.md) | 45 | `declaration-track:eeb4d0cd35af8921d0cfe9c950d293e28be16377c2ce723afa9ffa5685350256` |
| 14 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--1d58dd265b4386a0bd68334f.md) | 47 | `declaration-track:1d58dd265b4386a0bd68334f0bca1f43c94e67b7c645997fce22f7032bce66b0` |
| 15 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--f79b5bd1068718c58361e94a.md) | 49 | `declaration-track:f79b5bd1068718c58361e94a8d915fd0f693956dc7d7d51853f9475495d819d3` |
| 16 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--20e3642b2721b77be71a78b1.md) | 51 | `declaration-track:20e3642b2721b77be71a78b1168c8f5ccc7f47a21da22e56ff7ed0789acdbb33` |
| 17 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--db3ef5d59212548e398ae882.md) | 54 | `declaration-track:db3ef5d59212548e398ae88280ecae7ca50fafa8084d27d45e1539810b2e3caf` |
| 18 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--38871dbc6f8b0b4ce9882206.md) | 59 | `declaration-track:38871dbc6f8b0b4ce9882206504ac5de831836a8faf57146165b79247da42e67` |
| 19 | `def` | [sampleMatrixMut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/samplematrixmut--cca5720328f6e61efa1854fa.md) | 66 | `declaration-track:cca5720328f6e61efa1854fa33a580df1dcdd29fcb25987da078c46a12b53726` |
| 20 | `def` | [replacementMut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/replacementmut--f6e107ab90abb0ac9e425cd2.md) | 69 | `declaration-track:f6e107ab90abb0ac9e425cd21ea75e53591959c6c79b4d90ac21798e840dcfdf` |
| 21 | `def` | [sampleRuntimeSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/sampleruntimesurgery--99dc7435bc482e80f99185d6.md) | 73 | `declaration-track:99dc7435bc482e80f99185d63cfdfa2fff2ad798a1449815b88f1c3c7d9fd078` |
| 22 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--633034fdcb5b21f49da5482d.md) | 77 | `declaration-track:633034fdcb5b21f49da5482daf84001d0887709a99e46123317b41dd3f021978` |
| 23 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--401c2a12bdea2309d66243d3.md) | 79 | `declaration-track:401c2a12bdea2309d66243d314b1595672c9116b4f9e472f78fadb0c95bdcec2` |
| 24 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--8cc3c3296eacab7d197accdf.md) | 81 | `declaration-track:8cc3c3296eacab7d197accdfc6daa6444eae7c3c2d9b0d52277cb76b70c3612a` |
| 25 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--54d4570080ef5044f1eda2d5.md) | 94 | `declaration-track:54d4570080ef5044f1eda2d50eb5992941dbc64ffdd90b64bdf6011eb92846c9` |
| 26 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--06136543139443ba4a2cdb75.md) | 99 | `declaration-track:06136543139443ba4a2cdb75f8f6e443997043541292329f090bb381a65b716f` |
| 27 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--e8b070cfcb8e257ff1ca0dc9.md) | 104 | `declaration-track:e8b070cfcb8e257ff1ca0dc9bea20b5155f505e571d952bc3278b1c945646baf` |
| 28 | `def` | [boolFinTwo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/boolfintwo--4c5129f3302e1ff5a3e7d4cb.md) | 111 | `declaration-track:4c5129f3302e1ff5a3e7d4cb788b795b01965515d28f7eeb1bcd53503d73c1f0` |
| 29 | `def` | [boolNotInvolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/boolnotinvolution--823c2c4a5b01d7c7f4102fd4.md) | 119 | `declaration-track:823c2c4a5b01d7c7f4102fd437ab8ce29b182953faf294b6e47d17295cb6ae46` |
| 30 | `def` | [boolProjection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/boolprojection--7441715cb3ac32bd6680f0b9.md) | 126 | `declaration-track:7441715cb3ac32bd6680f0b9db0e714473c2171e7b3c1497acf165f2d7d747e9` |
| 31 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--dfe01a09b2108f2617521274.md) | 129 | `declaration-track:dfe01a09b2108f26175212740c8381a745d6e18cd946997b51f54b2a2fc9a438` |
| 32 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--d2ce2a9c4566f1fac103d917.md) | 131 | `declaration-track:d2ce2a9c4566f1fac103d917ef56b13c084ac1a7ac3d8b7412b9a22ae1f92d25` |
| 33 | `example` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgeryTests/Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5.lean/declarations/example--6fd09ab5dd9e4b11d0325600.md) | 134 | `declaration-track:6fd09ab5dd9e4b11d03256003ce5ebe82d2c7c7c41f75b254d17ba9f86c26d5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
