# Verification target: GRWTSK.Geometry.Basic.Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df5a323d49ec7b544a8a776bdc3dbf2c1c95d09b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/index.md) · [Full source](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df5a323d49ec7b544a8a776bdc3dbf2c1c95d09b`.

Source path: `GRWTSK/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsRiemannianManifold](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/isriemannianmanifold--58ad7c3b251078f4484e9464.md) | 89 | `declaration-track:58ad7c3b251078f4484e946450950d111c14616eb097c073da2b64dafe2d9569` |
| 2 | `def` | [riemannianMetricVectorSpace](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/riemannianmetricvectorspace--70a6e0627a319aca6b352340.md) | 111 | `declaration-track:70a6e0627a319aca6b35234077ed155d898c363ddb8bcd0d8ee2f62230f8ecd3` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/instance--18ce9c4b0582d479d832dc4f.md) | 134 | `declaration-track:18ce9c4b0582d479d832dc4f441dc950f70c6c67c52e4576599d5a11ad66856e` |
| 4 | `lemma` | [norm_tangentSpace_vectorSpace](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/norm-tangentspace-vectorspace--d8247bcde816ef70613de949.md) | 138 | `result-track:d8247bcde816ef70613de94997b6d3189cdcaf07619e95074ea00ac377edd9e1` |
| 5 | `lemma` | [nnnorm_tangentSpace_vectorSpace](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/nnnorm-tangentspace-vectorspace--fb7864ada3cc8a9e24d04947.md) | 142 | `result-track:fb7864ada3cc8a9e24d049470eb9eed97e9c1475b8a31367a3129341fe4993b0` |
| 6 | `lemma` | [enorm_tangentSpace_vectorSpace](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/enorm-tangentspace-vectorspace--cd1b00379d5e9a3a5d7d5643.md) | 146 | `result-track:cd1b00379d5e9a3a5d7d564339343c2c374a8cb419b23a594faaeeaaef58a6ac` |
| 7 | `lemma` | [lintegral_fderiv_lineMap_eq_edist](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/lintegral-fderiv-linemap-eq-edist--4b1c9a95b56aefb142e46396.md) | 152 | `result-track:4b1c9a95b56aefb142e4639665340cc3930b329a9484db7d945627eaf90c07ea` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/instance--652b82b7e95735391c99fd13.md) | 166 | `declaration-track:652b82b7e95735391c99fd13b92ad8f1e9ebc075550e5187bf21cbc4e8809de8` |
| 9 | `def` | [normedAddCommGroupTangentSpaceVectorSpace](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/normedaddcommgrouptangentspacevectorspace--0e428034fc8cb623f925052f.md) | 230 | `declaration-track:0e428034fc8cb623f925052f100c1caff2bcd48f822ceb888ef279e28617a265` |
| 10 | `def` | [normedSpaceTangentSpaceVectorSpace](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/normedspacetangentspacevectorspace--2c82c5500c7b8af7d203b442.md) | 242 | `declaration-track:2c82c5500c7b8af7d203b4429fa7931b842f4fcb760f1a3d00067437ade470e9` |
| 11 | `lemma` | [eventually_norm_mfderiv_extChartAt_lt](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/eventually-norm-mfderiv-extchartat-lt--81ab3c1971f1259b3a7c1a69.md) | 250 | `result-track:81ab3c1971f1259b3a7c1a69a6203f990f8f7efb0477bd92f20dd1bda41d03d1` |
| 12 | `lemma` | [eventually_enorm_mfderiv_extChartAt_lt](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/eventually-enorm-mfderiv-extchartat-lt--956a128f2c8c7b75ffc4a6fd.md) | 260 | `result-track:956a128f2c8c7b75ffc4a6fddd5f0ed757ab97e1b0efaa0a83fe9edd4ada596a` |
| 13 | `lemma` | [eventually_norm_mfderivWithin_symm_extChartAt_comp_lt](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/eventually-norm-mfderivwithin-symm-extchartat-comp-lt--089f20c4b8be4a9d3e97d12c.md) | 271 | `result-track:089f20c4b8be4a9d3e97d12c5c91c0130974aecbd4c2f7d63962c8eae2231605` |
| 14 | `lemma` | [eventually_norm_mfderivWithin_symm_extChartAt_lt](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/eventually-norm-mfderivwithin-symm-extchartat-lt--5811d8b85cf7e31df5e4aa38.md) | 284 | `result-track:5811d8b85cf7e31df5e4aa388a65ffdc350e7f03d22485d7983288a8e81104a4` |
| 15 | `lemma` | [eventually_enorm_mfderivWithin_symm_extChartAt_lt](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/eventually-enorm-mfderivwithin-symm-extchartat-lt--6f399b3d2769c594f20a57bb.md) | 299 | `result-track:6f399b3d2769c594f20a57bb282864f7fd15c6419317d2da51c63c21f2900507` |
| 16 | `lemma` | [eventually_riemannianEDist_le_edist_extChartAt](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/eventually-riemannianedist-le-edist-extchartat--f4d2a885aff02e48b5ecf03a.md) | 313 | `result-track:f4d2a885aff02e48b5ecf03a0dd3d386b2a5a3f428a1c7c9a102b7974268f7cb` |
| 17 | `lemma` | [eventually_riemannianEDist_lt](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/eventually-riemannianedist-lt--515a4801df09f86ae3dc6a5d.md) | 381 | `result-track:515a4801df09f86ae3dc6a5d3e9cc2a2f31dce4d65a2ce309cd7da481cd8f43e` |
| 18 | `lemma` | [setOfPred_riemannianEDist_lt_subset_nhds](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/setofpred-riemannianedist-lt-subset-nhds--3660d86061dfe707d13006ee.md) | 398 | `result-track:3660d86061dfe707d13006eebe54f72498ac2dca65f5f4e154bd67b4ffb13538` |
| 19 | `lemma` | [setOfPred_riemannianEDist_lt_subset_nhds'](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/setofpred-riemannianedist-lt-subset-nhds--308d1c70c62d5d69f97bd68f.md) | 513 | `result-track:308d1c70c62d5d69f97bd68fe94c7839b415dfab6975a53fc346edaf3bdb8782` |
| 20 | `def` | [PseudoEMetricSpace.ofRiemannianMetric](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/pseudoemetricspace-ofriemannianmetric--0d989d005874e37b82eb264b.md) | 529 | `declaration-track:0d989d005874e37b82eb264b65baca0a1295a5953ab2058a2f4b4bea93f503d5` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/instance--0ec3e218e348f8b48ce5122a.md) | 541 | `declaration-track:0ec3e218e348f8b48ce5122a09aa3f8577f714be68e38210e75ab40ede4da9ea` |
| 22 | `def` | [EMetricSpace.ofRiemannianMetric](../../../../mathematics/Geometry/Basic/Variant6e9b656f3603722cbd225cdc4bafe9dc36bb8b64c72e7e8e194463fbe375a94e.lean/declarations/emetricspace-ofriemannianmetric--5cc8bce57f9011895e2e9d24.md) | 554 | `declaration-track:5cc8bce57f9011895e2e9d24d9bc9ace7dc386c66d5ac4a0a5649fb75748e520` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
