# Verification target: GRWTSK.Algebra.Ring.Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97a6335eb0f24d4136a597713ac0976c0bb39073",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97a6335eb0f24d4136a597713ac0976c0bb39073`.

Source path: `GRWTSK/Algebra/Ring/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FieldSimp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [Real](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/real--c17a733a0895ccf33ee037ce.md) | 15 | `declaration-track:c17a733a0895ccf33ee037cea647bfabc380115710f739364be305d749ad2b72` |
| 2 | `axiom` | [Real.linearOrderedRing](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/real-linearorderedring--6f020cd1b26eed8ad8b7f6d4.md) | 17 | `declaration-track:6f020cd1b26eed8ad8b7f6d4e6c36e4481ae45d4eda23095f181f53042ec1b21` |
| 3 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--a37e860ac96ae9349077aeef.md) | 19 | `declaration-track:a37e860ac96ae9349077aeefe6c204c7375c6a6fd1f70c58b9974228c2a224f6` |
| 4 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--6caa082ca18c2dd61301098c.md) | 20 | `declaration-track:6caa082ca18c2dd61301098c4ce554b667ad7bfa3546df8225c0d0da011b8227` |
| 5 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--e705b940f47d4d692955d1c0.md) | 21 | `declaration-track:e705b940f47d4d692955d1c020f45b36473de462158fe025a93a1096e6d6df4e` |
| 6 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--5553a5320047ad9030d6b675.md) | 22 | `declaration-track:5553a5320047ad9030d6b6757f872fc4ca10caa05c06e3362d7824639aefcceb` |
| 7 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--c064d05361e3478392027460.md) | 23 | `declaration-track:c064d05361e3478392027460b6d612c3e92c0df57680dfe5951c82accd7b9686` |
| 8 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--57860ed9874fb5bebec821e3.md) | 25 | `declaration-track:57860ed9874fb5bebec821e3f2902910d979636f31f676cfb77770749f12a44a` |
| 9 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--31dd4272c70b29359dd56d4b.md) | 26 | `declaration-track:31dd4272c70b29359dd56d4b6fb5d497edcc3455aae52b0fdd11fa7ca879a573` |
| 10 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--b0d33279597b43695839cca9.md) | 27 | `declaration-track:b0d33279597b43695839cca96aa9d608cf9f1e2929255c7c37db6bf58eaf8963` |
| 11 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--f4a3b98decc74491a39f79a8.md) | 28 | `declaration-track:f4a3b98decc74491a39f79a82d94f715688d58c62d4ad9f2c0e626f286eb1def` |
| 12 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--637b3afe2bf843a4dbd781da.md) | 29 | `declaration-track:637b3afe2bf843a4dbd781dad455a042f8f2bbde1b2ae901400f384462c8b1ca` |
| 13 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--c92c7c0fbd0f37a754bb172d.md) | 30 | `declaration-track:c92c7c0fbd0f37a754bb172d4616d66a9ed14063c89d7911a19986501231add6` |
| 14 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--35155bc5d756fcb4b60cd952.md) | 32 | `declaration-track:35155bc5d756fcb4b60cd952f3231b9d7b7096318629b2e0ce89064dca1aaae8` |
| 15 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--5222a4811decdfca93c44080.md) | 34 | `declaration-track:5222a4811decdfca93c440804f447f47b5f18baedd7f3d7b5a486c2b4727bc2c` |
| 16 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--560c003668db5d75e1cac742.md) | 35 | `declaration-track:560c003668db5d75e1cac74299bcc46b542086d436bdfe67d488e64ad7474be5` |
| 17 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--05fe0a2faf7f1beaed92fc66.md) | 36 | `declaration-track:05fe0a2faf7f1beaed92fc66faf46ab62bf5787af49e339f625d717da9f5fc3a` |
| 18 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--debe5eafbb3c269b845d64fd.md) | 38 | `declaration-track:debe5eafbb3c269b845d64fdcf1f5781f44f465254890d49ac4e8e1ad5515cfc` |
| 19 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--f6d7512feda9eb6e30176cff.md) | 40 | `declaration-track:f6d7512feda9eb6e30176cfff53c56a82acb3087ca0094863b5ae9c9a5168d1b` |
| 20 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--e8e2a22ea49af996c71b068e.md) | 42 | `declaration-track:e8e2a22ea49af996c71b068efd9fa4e10edcf733024cbcf33b90bf084d78835c` |
| 21 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--56609c4e1dcf6c42c8cd25fc.md) | 46 | `declaration-track:56609c4e1dcf6c42c8cd25fc472b06f0a8f3b70c47d5910a948042aa65c48775` |
| 22 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--a5b49125f372800ad8cd587c.md) | 48 | `declaration-track:a5b49125f372800ad8cd587cc212348895f6107e3143f8519103716069114d15` |
| 23 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--f0e3f12e175d6b4223328e11.md) | 54 | `declaration-track:f0e3f12e175d6b4223328e11455339f4aecf32d72e1f7970ae4d10caad2c52ab` |
| 24 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--7edc9296e3be432e62a49388.md) | 55 | `declaration-track:7edc9296e3be432e62a49388c2f5f5d5dba57b2719c8a629682918e6aedefeac` |
| 25 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--59b62449fe883d724f04f19a.md) | 56 | `declaration-track:59b62449fe883d724f04f19afb70e472c8e233bf9187d13fc7124b2cb28729b2` |
| 26 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--4126db2addfeff37032dedfb.md) | 57 | `declaration-track:4126db2addfeff37032dedfb87df1e66bd840e2318e87e9666e738d3cc9dda32` |
| 27 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--db027a962b2aeb0bb6ed3373.md) | 58 | `declaration-track:db027a962b2aeb0bb6ed33733df89b330b885120d7c07eb905429aa039983a0a` |
| 28 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--c87bc3a6cb91149a3617dd70.md) | 59 | `declaration-track:c87bc3a6cb91149a3617dd70b29fa5785c0c95879b50cda0ce27a668837641f9` |
| 29 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--7e9ff20b4e08e1e703dfc0d0.md) | 61 | `declaration-track:7e9ff20b4e08e1e703dfc0d0b7f39aa6bae75e47b3669faf6073247764b23440` |
| 30 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--71f37fcb025fc17317a3d11b.md) | 62 | `declaration-track:71f37fcb025fc17317a3d11bffdbef977b27849f32fd076c251c7072fa29459e` |
| 31 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--e17ffc856c00e155e6d47066.md) | 63 | `declaration-track:e17ffc856c00e155e6d47066aa430daad3e4e8cfc6140854874f01273947d6f3` |
| 32 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--0b9909be4888a5e2d311e3f5.md) | 67 | `declaration-track:0b9909be4888a5e2d311e3f50d13df3f05b00fec48a324d314e018e956c02ff5` |
| 33 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--fb4a1a021fb650581c52b263.md) | 68 | `declaration-track:fb4a1a021fb650581c52b26354e68172d8022040feb6833bb3e8bfb05e9524db` |
| 34 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--0c36360a7ec2436ab87c63a6.md) | 72 | `declaration-track:0c36360a7ec2436ab87c63a622d192f691ca4bdd04032acf3f045f31d4d85730` |
| 35 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--58ae9d7769e8ccdcfa20996c.md) | 74 | `declaration-track:58ae9d7769e8ccdcfa20996c2b4ce566f2f162c6b3fb8a4a080565e0a45c7510` |
| 36 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--066da34265d6b4c76f7edfd8.md) | 79 | `declaration-track:066da34265d6b4c76f7edfd8c4847f121cc7305509d454f07ddd05942c8cf14f` |
| 37 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--9d68300e8036aa517cda3a2a.md) | 84 | `declaration-track:9d68300e8036aa517cda3a2ab66df5eeb27c3a662f611cf60480b62255ba1ccd` |
| 38 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--7acda33b8c70eab88161faf3.md) | 86 | `declaration-track:7acda33b8c70eab88161faf3748e75c66cbe85302150e1b27e8d9cc2730a6f06` |
| 39 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--03424d733f068513dc298863.md) | 93 | `declaration-track:03424d733f068513dc2988631e59e38cb15d7de0aaec79dabf034327e7d84427` |
| 40 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--6b07b882065e32808da4d400.md) | 98 | `declaration-track:6b07b882065e32808da4d4004535d0d5c393d9dc7cb6fe7459d6ec3e83b5265d` |
| 41 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--9711bf04ccf6847331d07e3d.md) | 100 | `declaration-track:9711bf04ccf6847331d07e3d6467d74c30d2c821063cb276ce44e222f686a24d` |
| 42 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--5b55c3d40af550d330877a69.md) | 103 | `declaration-track:5b55c3d40af550d330877a6974c70c6672f366010c10917470b11247ecf51323` |
| 43 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--1673662c376c4e351a1d466d.md) | 104 | `declaration-track:1673662c376c4e351a1d466dbc200c2bd01b5aac356bb5ac7487560dc5da0f4b` |
| 44 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--d3f8bbab9c6420b03441d342.md) | 105 | `declaration-track:d3f8bbab9c6420b03441d3426646a5d93e9fe9457986cc4d24b2be2a196cc7b2` |
| 45 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--12401c4557a885976cf312f4.md) | 108 | `declaration-track:12401c4557a885976cf312f45f8f0414c72a0bff33a719dc0db51c7c01f9dc10` |
| 46 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--7b71341c8ccaec060d144e86.md) | 113 | `declaration-track:7b71341c8ccaec060d144e86d6edd8648365bdd4bab32e4f822662edec1d4b8f` |
| 47 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--06fdd457154316a1f793c53a.md) | 118 | `declaration-track:06fdd457154316a1f793c53abad37cd2ef626a5ff0b5c3e02257b8c6af14ca99` |
| 48 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--1c729609805d9f4924923ef4.md) | 123 | `declaration-track:1c729609805d9f4924923ef4f9737bc02e9e85bf0654b586f207c94e8e7dd43a` |
| 49 | `def` | [f](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/f--90769fa3c0e124045a96ba07.md) | 129 | `declaration-track:90769fa3c0e124045a96ba07de553795d05b52ee03f7c8ed4655e351aa00f5e5` |
| 50 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--98fd9ef5af24c5510a26b0b7.md) | 131 | `declaration-track:98fd9ef5af24c5510a26b0b7865a27076a0ac1c349950495bd47776b72923b3d` |
| 51 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--9dddc6b5ae3d9c100685631a.md) | 137 | `declaration-track:9dddc6b5ae3d9c100685631a0f1b95cb3cbf5a9782ee80fcc3e4982eab28f38d` |
| 52 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--3a7a773577366aa703a39e87.md) | 142 | `declaration-track:3a7a773577366aa703a39e87d46839462b68a1e8e43be4099014206b059ccc1f` |
| 53 | `def` | [R](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/r--714301db26d09849c1c10f04.md) | 145 | `declaration-track:714301db26d09849c1c10f04dec91aaa5a48e2e52f43edee2cdbdd0ba056670b` |
| 54 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/instance--a18f3fec299a8b8262309951.md) | 146 | `declaration-track:a18f3fec299a8b826230995157e3e167b86269490dc58a3fd1d8257d68ec7b2e` |
| 55 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--c9934c71059beeace270619f.md) | 148 | `declaration-track:c9934c71059beeace270619fa0f33e54fd7b97a79ebace077bb4f2b3d033aa96` |
| 56 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--cd51961b8dc3d7a97c30dc3a.md) | 150 | `declaration-track:cd51961b8dc3d7a97c30dc3a9d89a3635fe7a7919ecfa866d2bb46c515375475` |
| 57 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--16da36e568d79776098ca127.md) | 154 | `declaration-track:16da36e568d79776098ca1277e2c94aa49c70c5a1411e48545f9e8890b9146a3` |
| 58 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantd9efdae2dd3bfe2fc1b8075b5f28f3d75f44292312c0c7bf381637465ab7bc5c.lean/declarations/example--f99f91d00b44138d282f57bc.md) | 156 | `declaration-track:f99f91d00b44138d282f57bc3250ea0c6d8ba9ede5907779061a204a316854c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
