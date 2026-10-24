# Verification target: GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEigenlines

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b59ccd41eab0807d8f739789c4d50d56e583b0d5",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b59ccd41eab0807d8f739789c4d50d56e583b0d5`.

Source path: `GRWTSK/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEvaluation`](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEvaluation.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.Hodge.CMRegularBaseChange`](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMRegularBaseChange.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [embeddingCharacter](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/embeddingcharacter--6db99d68a81cdc1981282169.md) | 38 | `declaration-track:6db99d68a81cdc198128216963c30cda22c02f8210116ebd1ee4bd3115d8775f` |
| 2 | `def` | [coordinateLine](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/coordinateline--173002050416f14055a960e5.md) | 42 | `declaration-track:173002050416f14055a960e53c7217389326caab7a89ae8788cf991ca365cd97` |
| 3 | `def` | [canonicalEigenvector](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/canonicaleigenvector--da835d8b00b006739b9532dd.md) | 46 | `declaration-track:da835d8b00b006739b9532dd64b12995830a23ee976e6dbaa336cbf8a97f95b6` |
| 4 | `theorem` | [evaluationEquiv_canonicalEigenvector](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/evaluationequiv-canonicaleigenvector--ef3a02a39fd461f1cc4d93ca.md) | 50 | `result-track:ef3a02a39fd461f1cc4d93caac787c7007a07cafb8e04d48069172760d13d925` |
| 5 | `theorem` | [evaluation_regularAction](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/evaluation-regularaction--ac5ae88d77de7a32b9e289c0.md) | 56 | `result-track:ac5ae88d77de7a32b9e289c041782ecd2604ce2231464e059b3cdaff1bd33261` |
| 6 | `theorem` | [canonicalEigenvector_ne_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/canonicaleigenvector-ne-zero--0e4792bbb4db6e76ec35d92f.md) | 69 | `result-track:0e4792bbb4db6e76ec35d92f789308760668a56a02ffb3690004b5dce0b9d6c5` |
| 7 | `theorem` | [canonicalEigenvector_mem](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/canonicaleigenvector-mem--d6cc3585b20231b85afc4b8b.md) | 78 | `result-track:d6cc3585b20231b85afc4b8b9aa6f9c9782e7b99a728cbb8e50305d18ac44a41` |
| 8 | `theorem` | [evaluation_offDiagonal_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/evaluation-offdiagonal-zero--9e1898ec6a94ed2df7540019.md) | 94 | `result-track:9e1898ec6a94ed2df7540019e5ffa6356adb41a2258b9025ab68af6255917222` |
| 9 | `theorem` | [evaluation_mem_coordinateLine](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/evaluation-mem-coordinateline--8e9a24251f9bb67c74213c7a.md) | 119 | `result-track:8e9a24251f9bb67c74213c7afa9d09192f8bed10d0d5bc971ad6993368abe185` |
| 10 | `theorem` | [embeddingEigenspace_eq_span](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/embeddingeigenspace-eq-span--019b478daedee452dd3a086b.md) | 134 | `result-track:019b478daedee452dd3a086b36e5309b1e76c72154a97105e8c50edb62c703d4` |
| 11 | `theorem` | [embeddingEigenspace_finrank_one](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/embeddingeigenspace-finrank-one--643c640998880daeb6ec32a2.md) | 152 | `result-track:643c640998880daeb6ec32a2c6ff318d8a15fdc9a201aa8e4740541920a1fb47` |
| 12 | `theorem` | [exists_ne_zero_smul_eq_of_mem_embeddingEigenspace](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/exists-ne-zero-smul-eq-of-mem-embeddingeigenspace--b5158553ff4396d01f6e8fea.md) | 162 | `result-track:b5158553ff4396d01f6e8feae7ce29551a52e4b955bcb72a165d42677805d4b9` |
| 13 | `theorem` | [embeddingEigenspace_nonzero](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/embeddingeigenspace-nonzero--cee040bed49d7a7c6e4fd88e.md) | 194 | `result-track:cee040bed49d7a7c6e4fd88e3594e22c13e60c81a6edb402bf54cc65c058d2b3` |
| 14 | `theorem` | [embeddingEigenspace_finrank_one_aut](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/embeddingeigenspace-finrank-one-aut--c0822368e2042b637442e0ec.md) | 201 | `result-track:c0822368e2042b637442e0ec4ade975335085461853d2cdcc9a1148ca1b5295d` |
| 15 | `theorem` | [embeddingEigenspace_nonzero_aut](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/embeddingeigenspace-nonzero-aut--b5eeb11a2a98ddd45c21bcae.md) | 213 | `result-track:b5eeb11a2a98ddd45c21bcaed7df510e313000fb89f574e6e05523c497746fba` |
| 16 | `def` | [coordinateProjector](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/coordinateprojector--afdcb0a2737bcf5119349f40.md) | 226 | `declaration-track:afdcb0a2737bcf5119349f40e5a569dc68e66fe938c50cdc8d2de63267962936` |
| 17 | `theorem` | [evaluationEquiv_coordinateProjector](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/evaluationequiv-coordinateprojector--65a529243f195a12bb574a73.md) | 234 | `result-track:65a529243f195a12bb574a73b21bbd2bed7845ee3aadf2de89a29be5c8cfd28b` |
| 18 | `theorem` | [coordinateProjector_eq_smul_canonicalEigenvector](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/coordinateprojector-eq-smul-canonicaleigenvector--2b3fe9139a43cce853908ce4.md) | 246 | `result-track:2b3fe9139a43cce853908ce46436a5b7824321ebe8f0d454392993225e363cff` |
| 19 | `theorem` | [coordinateProjector_mem](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/coordinateprojector-mem--7700ca66cfca935375086671.md) | 260 | `result-track:7700ca66cfca9353750866718a533ef699a839e1670e5d4dd8d853128cefe577` |
| 20 | `theorem` | [coordinateProjector_same](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/coordinateprojector-same--ee9c5e583f68ca256afdafad.md) | 269 | `result-track:ee9c5e583f68ca256afdafadb1a8678e2d4df09d395c0cc0fe81855c7b1b0bb2` |
| 21 | `theorem` | [coordinateProjector_other](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/coordinateprojector-other--62036085f9b68eebd813f2b8.md) | 281 | `result-track:62036085f9b68eebd813f2b827124131c5a90065c3d648d4df5b3fabf24da26c` |
| 22 | `theorem` | [sum_coordinateProjector](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/sum-coordinateprojector--e9176be51280c8e04c7c34f7.md) | 291 | `result-track:e9176be51280c8e04c7c34f74699e35368b3cb60d836ab899f5c9a616b301066` |
| 23 | `theorem` | [embeddingCharacter_symm](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/embeddingcharacter-symm--05af56456388549cab926e1e.md) | 300 | `result-track:05af56456388549cab926e1ed0d564c904df12468a23c8d28804b7d37b0511b3` |
| 24 | `def` | [automorphismProjector](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/automorphismprojector--899df91598a5e87674dd1e74.md) | 307 | `declaration-track:899df91598a5e87674dd1e74b4875d046e5896b7028ed0851871c749ea8b9da8` |
| 25 | `theorem` | [automorphismProjector_mem](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/automorphismprojector-mem--6eaa7e14dfeb96ed0d1601e9.md) | 313 | `result-track:6eaa7e14dfeb96ed0d1601e908aef1d46693c38afd9f8f8d70243376aa30db21` |
| 26 | `theorem` | [automorphismProjector_same](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/automorphismprojector-same--1b4e4817a4a2d5e4934828bc.md) | 321 | `result-track:1b4e4817a4a2d5e4934828bc1585af10e4ea5c5fd13d7e8441c652f2fc1cff9f` |
| 27 | `theorem` | [automorphismProjector_other](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/automorphismprojector-other--85a8c4facae95ab7571ef58d.md) | 329 | `result-track:85a8c4facae95ab7571ef58dc1c31714f49038ee7c6275e707780473951a9471` |
| 28 | `theorem` | [sum_automorphismProjector](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/sum-automorphismprojector--10389f0ece183801059c7abe.md) | 340 | `result-track:10389f0ece183801059c7abe6f1a0b72a967f86bc4b4ed326e0b632a05941452` |
| 29 | `theorem` | [canonicalEigenspaces_isInternal](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/canonicaleigenspaces-isinternal--0a4a189d66e1f77c09bc1468.md) | 351 | `result-track:0a4a189d66e1f77c09bc14687e61fce12dcabf81ca3fd07de31aa938796a006c` |
| 30 | `def` | [canonicalTypedEigenspaceDecomposition](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/canonicaltypedeigenspacedecomposition--03110d2f5e32e046fa1c0bf2.md) | 375 | `declaration-track:03110d2f5e32e046fa1c0bf22bff1b2483c6cd8773bde4681708a5b990723b2f` |
| 31 | `def` | [canonicalEigenlineRealization](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/canonicaleigenlinerealization--9b518f01e12ed9a2d002f64a.md) | 391 | `declaration-track:9b518f01e12ed9a2d002f64ac4c0f6722eb0b4c67e88cf98542e182223168e2b` |
| 32 | `def` | [canonicalTypedEigenlineRealization](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/canonicaltypedeigenlinerealization--b1885e3ebfab60780a713236.md) | 411 | `declaration-track:b1885e3ebfab60780a713236134595d5f78b160671caefc98e7ba616fdba6814` |
| 33 | `theorem` | [canonicalTypedEigenlines_fourFactor_bidegree_two_two](../../../../../mathematics/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/declarations/canonicaltypedeigenlines-fourfactor-bidegree-two-two--7976cea8ba63918316bb429f.md) | 425 | `result-track:7976cea8ba63918316bb429f91c6a59bdac47db153729b1f886b0519c295e313` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
