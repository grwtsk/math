# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "937052b5884a8de8af8f2a82abe8546eb5db2b91",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `937052b5884a8de8af8f2a82abe8546eb5db2b91`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ExtremallyDisconnected` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.Projective` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Stonean](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/stonean--7fd6de01f317165dc721dacd.md) | 54 | `declaration-track:7fd6de01f317165dc721dacd24d634207ffea2393ee3cc09c6482a29b5cb6140` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/instance--05c9002e5b171a26d3e1d68e.md) | 59 | `declaration-track:05c9002e5b171a26d3e1d68e94e1d67a7d46b45014d94b538dda758f498f05c2` |
| 3 | `def` | [toStonean](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/tostonean--9259942e9cb4f87e6b9f4752.md) | 77 | `declaration-track:9259942e9cb4f87e6b9f4752c79e067e7a2a3cc5c5f3e49c55bf33841c4b0cd1` |
| 4 | `abbrev` | [toCompHaus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/tocomphaus--7ff834f79cdb53ee17ce68f4.md) | 87 | `declaration-track:7ff834f79cdb53ee17ce68f49ae2892b59631bbc9be797dd9871d70b0ae37432` |
| 5 | `abbrev` | [fullyFaithfulToCompHaus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/fullyfaithfultocomphaus--f6aa46de1a3378e2ea0e3e2c.md) | 91 | `declaration-track:f6aa46de1a3378e2ea0e3e2ce477442ea2dfce6f8520638470e2d1992611adb2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/instance--d9d068a4849cdf9387051e0d.md) | 96 | `declaration-track:d9d068a4849cdf9387051e0dd0eb3a833b7a2ef1e673736f4d0da97dab08ca4d` |
| 7 | `abbrev` | [of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/of--a7d1101efa97784122a8c35e.md) | 103 | `declaration-track:a7d1101efa97784122a8c35ec0084a40674ed94bd254fa2c3f39e42801f17807` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/instance--1538def7f2925f17bd861823.md) | 106 | `declaration-track:1538def7f2925f17bd861823d7707158cf7f75459f9023fc979994cb6de04ad5` |
| 9 | `abbrev` | [toProfinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/toprofinite--4995c132fec1d581ea041c53.md) | 109 | `declaration-track:4995c132fec1d581ea041c5320c5ce4fed1b05039759d78ac3e813b563105cb0` |
| 10 | `def` | [mkFinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/mkfinite--08ba2dfbf2798b3872a8b27e.md) | 115 | `declaration-track:08ba2dfbf2798b3872a8b27e2473bee63d5fae54414eb2406bea5a9ce4d12fef` |
| 11 | `lemma` | [epi_iff_surjective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/epi-iff-surjective--5130dd1920e607fc3eff2801.md) | 126 | `result-track:5130dd1920e607fc3eff28016a6bb117c3de0696f46f4667d6e4455245b1c7fa` |
| 12 | `instance` | [instProjectiveCompHausCompHaus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/instprojectivecomphauscomphaus--146be98106e393bb6b135fb6.md) | 157 | `declaration-track:146be98106e393bb6b135fb660248f6d718bd4dbf086129cdf2f9cc6142c7d54` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/instance--494115c48705c9f1f356dd68.md) | 169 | `declaration-track:494115c48705c9f1f356dd680a81034f7a642c5e8f260bbf5877815a87e9fd0d` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/instance--f501bd93fa543ed9786865ab.md) | 181 | `declaration-track:f501bd93fa543ed9786865ab2da717b72da42898bbeee3805192e3bd27e755e3` |
| 15 | `def` | [presentation](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/presentation--c63ee0aba6f6b744d24904fb.md) | 200 | `declaration-track:c63ee0aba6f6b744d24904fb38723200407596899235fd69dc290f83eef93a48` |
| 16 | `def` | [presentation.π](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/presentation--7c86d40f7bb5977de27cd084.md) | 215 | `declaration-track:7c86d40f7bb5977de27cd084d99cad33de2c12075919437128ab792a9164eb58` |
| 17 | `instance` | [presentation.epi_π](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/presentation-epi--379fd1f80d1ee64ad6c4e64f.md) | 220 | `declaration-track:379fd1f80d1ee64ad6c4e64fb158a955f98895728b9e8b83135b3f5f23b0c20a` |
| 18 | `abbrev` | [_root_.GRWTSK.Topology.GeneralTopology.Stonean.Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.Stonean.compHaus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/root-grwtsk-topology-generaltopology-stonean-variant66be7e153d0032cbecd7--4c73ada1027b6f624a66d74f.md) | 224 | `declaration-track:4c73ada1027b6f624a66d74f47fc1d4f4c59d1d8b1eee1bf94b3de90e640f054` |
| 19 | `def` | [lift](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/lift--ed542b137ac4d0ac9c4393b5.md) | 240 | `declaration-track:ed542b137ac4d0ac9c4393b57411e282ff2ebe3d0220cbb184e8a6ef2be1cc65` |
| 20 | `lemma` | [lift_lifts](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/lift-lifts--e3ba838576ac6ba2aff31e00.md) | 245 | `result-track:e3ba838576ac6ba2aff31e0034389dbd38390c6e126cc5e78ad5d47f58f7078f` |
| 21 | `lemma` | [Gleason](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/gleason--ddeab21eb7872af538f0c7ae.md) | 248 | `result-track:ddeab21eb7872af538f0c7ae1768d2648b860c4554cdc17fb7f5a267001b866e` |
| 22 | `def` | [presentation](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/presentation--07029226fb21b517340bd710.md) | 266 | `declaration-track:07029226fb21b517340bd710d87933c665d47451ff1bb789267061852763890a` |
| 23 | `def` | [presentation.π](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/presentation--60a065e4d748e62ea4f772a2.md) | 272 | `declaration-track:60a065e4d748e62ea4f772a2f3570888e2870da5ad18ea49aa9ba88f902b8bf9` |
| 24 | `instance` | [presentation.epi_π](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/presentation-epi--3823bb9137d8edea6ccef81c.md) | 277 | `declaration-track:3823bb9137d8edea6ccef81ca52202415993c6ddd81887b4355cdb684f160f87` |
| 25 | `def` | [lift](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/lift--e3a89a7ce98270d54a5a971f.md) | 297 | `declaration-track:e3a89a7ce98270d54a5a971fd7cd4f529b918c9e78c35b6d08853abc7404febb` |
| 26 | `lemma` | [lift_lifts](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/lift-lifts--2c0c720a541bd508814983a6.md) | 301 | `result-track:2c0c720a541bd508814983a674b0e499e1127387102bd0ec9d457a1489d6976e` |
| 27 | `lemma` | [projective_of_extrDisc](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantffca0ff66522aff5aa6626527aae4d7fdc5a5c028e964ed80eaa013c14d9c40e.lean/declarations/projective-of-extrdisc--4c969bbc9b1b3e392239ad85.md) | 304 | `result-track:4c969bbc9b1b3e392239ad85b767e56ce4de4d078e2917b4047be52dce84c7ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
