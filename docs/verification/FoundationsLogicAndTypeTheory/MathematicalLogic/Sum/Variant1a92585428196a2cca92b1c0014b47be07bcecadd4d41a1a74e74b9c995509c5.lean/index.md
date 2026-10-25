# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Sum.Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c2f8c90275251f9b5bdbfa261aee2efef0d9c91",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c2f8c90275251f9b5bdbfa261aee2efef0d9c91`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matroid.Map` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Set` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/sigma--e8456dfd46b6c47f91155814.md) | 55 | `declaration-track:e8456dfd46b6c47f91155814f2b5f516e49864a29948ee8634d82b1c3da83466` |
| 2 | `lemma` | [sigma_indep_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/sigma-indep-iff--67ab5200cd1b1661ae579ea2.md) | 106 | `result-track:67ab5200cd1b1661ae579ea26cf0fdc7167a9c296854cf5ee125cebd207aa179` |
| 3 | `lemma` | [sigma_isBase_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/sigma-isbase-iff--6d64a4335d79f2fecbbd2f55.md) | 109 | `result-track:6d64a4335d79f2fecbbd2f558cef8aa9126c6dec74ea1cb5ec9ddac0b11f5c1a` |
| 4 | `lemma` | [sigma_ground_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/sigma-ground-eq--e2d90fc5d8be70a65137f78b.md) | 112 | `result-track:e2d90fc5d8be70a65137f78b9028774f64646abee1672a99a1d6c5c08a81cdea` |
| 5 | `lemma` | [sigma_isBasis_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/sigma-isbasis-iff--83e80838bfeae60a577ed736.md) | 114 | `result-track:83e80838bfeae60a577ed736f8dcd216a5e14ff9083628e4f692a07929c3d22f` |
| 6 | `lemma` | [Finitary.sigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/finitary-sigma--bb4001a317decb620ca6bf5a.md) | 137 | `result-track:bb4001a317decb620ca6bf5a949a0bc56f1ad9592dd7803db5c85fc22a70c93e` |
| 7 | `def` | [sum'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/sum--8c79bb1e091fa737533f4bfa.md) | 154 | `declaration-track:8c79bb1e091fa737533f4bfa8e96f85e6744fe2e3d897f926f898736c4152f74` |
| 8 | `lemma` | [sum'_indep_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/sum-indep-iff--fbff320b071c6c4d21461560.md) | 157 | `result-track:fbff320b071c6c4d21461560a204bc78f96464d71097e570893b3023d7443118` |
| 9 | `lemma` | [sum'_ground_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/sum-ground-eq--81e2d754430b11be232b178e.md) | 164 | `result-track:81e2d754430b11be232b178e05e2ec60768fa4e6837d36bbd24daeca11394def` |
| 10 | `lemma` | [sum'_isBase_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/sum-isbase-iff--98eb34c5e74a29786a79be4b.md) | 169 | `result-track:98eb34c5e74a29786a79be4bbeca8d92fb2b8316424b96872e5daeb741256ab5` |
| 11 | `lemma` | [sum'_isBasis_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/sum-isbasis-iff--b90874ebbf37d50a71194f90.md) | 176 | `result-track:b90874ebbf37d50a71194f907e4d68af2492864502f95137e856906fa56aaf28` |
| 12 | `lemma` | [Finitary.sum'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/finitary-sum--f624cd5076dea7ce47fd6906.md) | 182 | `result-track:f624cd5076dea7ce47fd690678c06f756dc7666446878e06fefa3116ec11e0e3` |
| 13 | `def` | [disjointSigma](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/disjointsigma--3e6307feb33ada3e6efc1d95.md) | 197 | `declaration-track:3e6307feb33ada3e6efc1d95bcf1a559ca5b3c3f1ec0035b4690b1009df50a18` |
| 14 | `lemma` | [disjointSigma_ground_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/disjointsigma-ground-eq--7b2e3c5003dd77e8e2c8c316.md) | 202 | `result-track:7b2e3c5003dd77e8e2c8c316eb3a7949c4a4174f41144e6a1836b02deb58385c` |
| 15 | `lemma` | [disjointSigma_indep_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/disjointsigma-indep-iff--a5da2a52dbc9aef6a4b7955e.md) | 205 | `result-track:a5da2a52dbc9aef6a4b7955ebb56a11a3d2ff59f7fad09c3b73e931c74d21399` |
| 16 | `lemma` | [disjointSigma_isBase_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/disjointsigma-isbase-iff--6cf6581827464d894179a590.md) | 210 | `result-track:6cf6581827464d894179a590e6de8a699870db403e1e80cc07d65ac852efb489` |
| 17 | `lemma` | [disjointSigma_isBasis_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/disjointsigma-isbasis-iff--7eaebb32d92bbb997d7a3a8f.md) | 215 | `result-track:7eaebb32d92bbb997d7a3a8f97d4d8725bb1e274fc3e72631d07c118a41de02a` |
| 18 | `def` | [sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/sum--4dc7ac09a3d2b6e5aa6935cc.md) | 227 | `declaration-track:4dc7ac09a3d2b6e5aa6935ccdcc35d4ef51a0db971d3fcbb249395a1bf858a34` |
| 19 | `lemma` | [sum_ground](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/sum-ground--844ce683a0d1024787be08bc.md) | 232 | `result-track:844ce683a0d1024787be08bcc4281d2abfeaee7483c248d3271e8437702f71a2` |
| 20 | `lemma` | [sum_indep_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/sum-indep-iff--7695007821b4220c32f97cad.md) | 236 | `result-track:7695007821b4220c32f97caddfff9cb8c519899e59708c2f4b5f1bedb97c3e3c` |
| 21 | `lemma` | [sum_isBase_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/sum-isbase-iff--3c17b9942ad09a83a519ed9a.md) | 243 | `result-track:3c17b9942ad09a83a519ed9ad22b61554e3cc26981d7c26ebcdc195c6c235ab8` |
| 22 | `lemma` | [sum_isBasis_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/sum-isbasis-iff--e29dd2e5c85fa426fdcc10ef.md) | 250 | `result-track:e29dd2e5c85fa426fdcc10ef68be09e83f2b21453c23c2581097edfedcf6cc5b` |
| 23 | `def` | [disjointSum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/disjointsum--5f1130c80fb7c1746f9f9a6d.md) | 265 | `declaration-track:5f1130c80fb7c1746f9f9a6d8fbcbbbed6691908d93b708fc1bd0bc48403442f` |
| 24 | `lemma` | [disjointSum_ground_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/disjointsum-ground-eq--f61c41d889af2f40849d93f5.md) | 268 | `result-track:f61c41d889af2f40849d93f546ecc3c8775d6af5a7e6095600f68dd0552b7d77` |
| 25 | `lemma` | [disjointSum_indep_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/disjointsum-indep-iff--f06151483e7ae99f7bdc9161.md) | 271 | `result-track:f06151483e7ae99f7bdc91616862129e36296b312c6e9e7b15041c15de77e8e8` |
| 26 | `lemma` | [disjointSum_isBase_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/disjointsum-isbase-iff--fbfee5a0f2f58329dfca0b97.md) | 275 | `result-track:fbfee5a0f2f58329dfca0b977b4e75a7404a82906fc88c7851693b88e885d35c` |
| 27 | `lemma` | [disjointSum_isBasis_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/disjointsum-isbasis-iff--b63e79a684fb9a6f082d4a21.md) | 279 | `result-track:b63e79a684fb9a6f082d4a214aa5fdd7c8a25c15a4dc241463dba19b2d506e68` |
| 28 | `lemma` | [disjointSum_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/disjointsum-comm--634d786d222d0296313b0a8b.md) | 284 | `result-track:634d786d222d0296313b0a8bda738cf6070b6c9198d3514bf74fca6d513fd2ac` |
| 29 | `lemma` | [Indep.eq_union_image_of_disjointSum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/indep-eq-union-image-of-disjointsum--dfb3f0d049acbab7b1a55f54.md) | 290 | `result-track:dfb3f0d049acbab7b1a55f54b04d774e38af143106ea32eb093da835e4ce9e95` |
| 30 | `lemma` | [IsBase.eq_union_image_of_disjointSum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean/declarations/isbase-eq-union-image-of-disjointsum--77501bea6ddc88746cf96c8b.md) | 296 | `result-track:77501bea6ddc88746cf96c8bf7d0b739b146d4be666bab534ffde8f7ecb458dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
