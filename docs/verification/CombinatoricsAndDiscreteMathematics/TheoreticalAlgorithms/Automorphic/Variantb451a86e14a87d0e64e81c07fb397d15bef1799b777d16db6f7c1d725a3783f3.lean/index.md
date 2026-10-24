# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Automorphic.Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d787c6d5bd3380e12fe93cf89ae077824f458a06",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d787c6d5bd3380e12fe93cf89ae077824f458a06`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.BSD.Assembly` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BSDTheoremAutomorphicProvenanceSharedData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/declarations/bsdtheoremautomorphicprovenanceshareddata--d59b886822749eb032e4d85d.md) | 39 | `declaration-track:d59b886822749eb032e4d85d7761fc4bb1fa7d6641e4267bb72dff5d6aca08fb` |
| 2 | `structure` | [BSDTheoremAutomorphicProvenanceCoherenceCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/declarations/bsdtheoremautomorphicprovenancecoherencecertificate--215fbcb5705bb2ade03af796.md) | 82 | `declaration-track:215fbcb5705bb2ade03af796f0c5fc2b48235c240b3039c0021d2285e0ec41c7` |
| 3 | `def` | [BSDTheoremAutomorphicProvenanceCoherenceCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/declarations/bsdtheoremautomorphicprovenancecoherencecertificate-certifiedforbsd--9238ef5ca27590a9825ad7cb.md) | 133 | `declaration-track:9238ef5ca27590a9825ad7cb8dced88e1d1912933f6f50e93e7f6752f9138780` |
| 4 | `theorem` | [BSDTheoremAutomorphicProvenanceCoherenceCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/declarations/bsdtheoremautomorphicprovenancecoherencecertificate-certifiedforbsd-of-f--6c28eebc749c5268d1ebb9cf.md) | 181 | `result-track:6c28eebc749c5268d1ebb9cfcfeeab2c63d599d91e82c8f060fd01ac9b628962` |
| 5 | `structure` | [BSDTheoremAutomorphicScopeSharedData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/declarations/bsdtheoremautomorphicscopeshareddata--7075ea35a32c067e2a5ce807.md) | 237 | `declaration-track:7075ea35a32c067e2a5ce8075d9e97ca2023e3f4ac0c940e1b724e39f51d78cf` |
| 6 | `structure` | [BSDTheoremAutomorphicScopeCoherenceCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/declarations/bsdtheoremautomorphicscopecoherencecertificate--eaaeb9aa03d5dc48b5a56bdf.md) | 270 | `declaration-track:eaaeb9aa03d5dc48b5a56bdfbdc9418c044a60301f1bc55e1d42fddc90b60f60` |
| 7 | `def` | [BSDTheoremAutomorphicScopeCoherenceCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/declarations/bsdtheoremautomorphicscopecoherencecertificate-certifiedforbsd--936d06549aba125d7e06655a.md) | 308 | `declaration-track:936d06549aba125d7e06655a2bdc4b603f61f62f4a7ab2b81b90f4ff1b5be81a` |
| 8 | `theorem` | [BSDTheoremAutomorphicScopeCoherenceCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/declarations/bsdtheoremautomorphicscopecoherencecertificate-certifiedforbsd-of-fields--17b5ede177b651336f3afc90.md) | 344 | `result-track:17b5ede177b651336f3afc90e918820770141e46f50ad3a1ba8b1fad9d4e038e` |
| 9 | `structure` | [BSDTheoremAutomorphicObjectSharedData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/declarations/bsdtheoremautomorphicobjectshareddata--b1d404147ab657b6868cd6d7.md) | 397 | `declaration-track:b1d404147ab657b6868cd6d7e6b5450a814db4a2a134e66c3e29d1d60c5a98f5` |
| 10 | `structure` | [BSDTheoremAutomorphicObjectCoherenceCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/declarations/bsdtheoremautomorphicobjectcoherencecertificate--92e64f7162bae2fd66eae428.md) | 427 | `declaration-track:92e64f7162bae2fd66eae428710ec06a27556c11bef10f0a8f515562aa584029` |
| 11 | `def` | [BSDTheoremAutomorphicObjectCoherenceCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/declarations/bsdtheoremautomorphicobjectcoherencecertificate-certifiedforbsd--7521e1bcdf8f12832be502ec.md) | 472 | `declaration-track:7521e1bcdf8f12832be502ecc3044f50457e5474fbac723c78f7912bedd7e400` |
| 12 | `theorem` | [BSDTheoremAutomorphicObjectCoherenceCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/declarations/bsdtheoremautomorphicobjectcoherencecertificate-certifiedforbsd-of-field--bbe65c8b311cdfd1bb0e534f.md) | 515 | `result-track:bbe65c8b311cdfd1bb0e534f67a3e5571a1967c573e65f3c0b3be57669fc5420` |
| 13 | `structure` | [BSDTheoremAutomorphicObjectKindCoherenceCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/declarations/bsdtheoremautomorphicobjectkindcoherencecertificate--be9f8c1ec23c7ebc7ea556a1.md) | 570 | `declaration-track:be9f8c1ec23c7ebc7ea556a1fea84ac66c0a5ec2cbc8eb6217a1a723b497c209` |
| 14 | `def` | [BSDTheoremAutomorphicObjectKindCoherenceCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/declarations/bsdtheoremautomorphicobjectkindcoherencecertificate-certifiedforbsd--8a55ca5a5de1d9961894a04c.md) | 639 | `declaration-track:8a55ca5a5de1d9961894a04ca0102913556473823673f48b58a5418ec24eacf6` |
| 15 | `theorem` | [BSDTheoremAutomorphicObjectKindCoherenceCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/declarations/bsdtheoremautomorphicobjectkindcoherencecertificate-certifiedforbsd-of-f--7386d67ef3bb18ddcaffffed.md) | 682 | `result-track:7386d67ef3bb18ddcaffffed5dcd4c767b44837c5de28366dda81f6380f31cbe` |
| 16 | `structure` | [BSDTheoremAutomorphicAnalyticSourceKindCoherenceCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/declarations/bsdtheoremautomorphicanalyticsourcekindcoherencecertificate--03f96da5642b412d41086b96.md) | 741 | `declaration-track:03f96da5642b412d41086b96b9f70848dfe61c0a59c30e369e2a67a385d4a239` |
| 17 | `def` | [BSDTheoremAutomorphicAnalyticSourceKindCoherenceCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/declarations/bsdtheoremautomorphicanalyticsourcekindcoherencecertificate-certifiedfor--431ae98951df9377ae5010e6.md) | 820 | `declaration-track:431ae98951df9377ae5010e6bd8863818038fea820898b2a862119e4715723f3` |
| 18 | `theorem` | [BSDTheoremAutomorphicAnalyticSourceKindCoherenceCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean/declarations/bsdtheoremautomorphicanalyticsourcekindcoherencecertificate-certifiedfor--5613f7e5395e80c72f52be3a.md) | 869 | `result-track:5613f7e5395e80c72f52be3ad4864abda44b05c023377834d8a444efe1f0f5a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
