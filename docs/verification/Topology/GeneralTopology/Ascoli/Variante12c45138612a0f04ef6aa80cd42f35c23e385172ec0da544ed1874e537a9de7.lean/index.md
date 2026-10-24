# Verification target: GRWTSK.Topology.GeneralTopology.Ascoli.Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3069f071cbafced3f95c479d48b9d209b2213cb",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3069f071cbafced3f95c479d48b9d209b2213cb`.

Source path: `GRWTSK/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.CompactConvergence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Equicontinuity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Equiv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Equicontinuous.comap_uniformFun_eq](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/declarations/equicontinuous-comap-uniformfun-eq--e7bf49067d8d4e84d440bfd0.md) | 84 | `result-track:e7bf49067d8d4e84d440bfd005f6fb795f196f61e12b15d70bf223936f06dc9c` |
| 2 | `lemma` | [Equicontinuous.isUniformInducing_uniformFun_iff_pi](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/declarations/equicontinuous-isuniforminducing-uniformfun-iff-pi--05c1b4e334cefd47e5881e4c.md) | 135 | `result-track:05c1b4e334cefd47e5881e4c9deab7741e48a70d9d1d8cb838f2258f1212b8f1` |
| 3 | `lemma` | [Equicontinuous.inducing_uniformFun_iff_pi](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/declarations/equicontinuous-inducing-uniformfun-iff-pi--aa47539f342517d53d1ef205.md) | 151 | `result-track:aa47539f342517d53d1ef20523ad5b8015e5b5cffb93086cd9d961f330ef3993` |
| 4 | `theorem` | [Equicontinuous.tendsto_uniformFun_iff_pi](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/declarations/equicontinuous-tendsto-uniformfun-iff-pi--bbfa64dd534ff23dcb19480a.md) | 162 | `result-track:bbfa64dd534ff23dcb19480aca07fc31e62e45ae620b80d4839f41d4345eb2f5` |
| 5 | `theorem` | [EquicontinuousOn.comap_uniformOnFun_eq](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/declarations/equicontinuouson-comap-uniformonfun-eq--ad3bf13787ea65810f7964c2.md) | 211 | `result-track:ad3bf13787ea65810f7964c2c3c00d73ea4a368fdc4ee46df02d8a8cf312ec75` |
| 6 | `lemma` | [EquicontinuousOn.isUniformInducing_uniformOnFun_iff_pi'](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/declarations/equicontinuouson-isuniforminducing-uniformonfun-iff-pi--ec2ea8f4cda8a6a716c9c250.md) | 251 | `result-track:ec2ea8f4cda8a6a716c9c2503df5832480782e12b5931e824344c7f81ecce439` |
| 7 | `lemma` | [EquicontinuousOn.isUniformInducing_uniformOnFun_iff_pi](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/declarations/equicontinuouson-isuniforminducing-uniformonfun-iff-pi--fa64030a36b1bed0c31cd048.md) | 267 | `result-track:fa64030a36b1bed0c31cd04894c7fc93e2a55a92ac774afb2bb1e1f91085e96e` |
| 8 | `lemma` | [EquicontinuousOn.inducing_uniformOnFun_iff_pi'](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/declarations/equicontinuouson-inducing-uniformonfun-iff-pi--c87798bc4197717d0a4eb0ca.md) | 290 | `result-track:c87798bc4197717d0a4eb0ca59ae5d72e61a2f104691d37e74ed4cc0425ee861` |
| 9 | `lemma` | [EquicontinuousOn.isInducing_uniformOnFun_iff_pi](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/declarations/equicontinuouson-isinducing-uniformonfun-iff-pi--c0ca6d72ae33b5cd8d5f49b5.md) | 306 | `result-track:c0ca6d72ae33b5cd8d5f49b50fbc865ccb3f6d279463e82afc9fd241e97a37f0` |
| 10 | `theorem` | [EquicontinuousOn.tendsto_uniformOnFun_iff_pi'](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/declarations/equicontinuouson-tendsto-uniformonfun-iff-pi--4628e7792a6f28d31a27d949.md) | 330 | `result-track:4628e7792a6f28d31a27d9495e64fe78b990c7f89c34d4803caaf844f5c8317c` |
| 11 | `theorem` | [EquicontinuousOn.tendsto_uniformOnFun_iff_pi](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/declarations/equicontinuouson-tendsto-uniformonfun-iff-pi--7bb7477c991b06fb9d8723f1.md) | 357 | `result-track:7bb7477c991b06fb9d8723f159b832ca8cad3b4e729a1052ba7524a4f3fe7cb4` |
| 12 | `theorem` | [EquicontinuousOn.isClosed_range_pi_of_uniformOnFun'](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/declarations/equicontinuouson-isclosed-range-pi-of-uniformonfun--e7c08b3ef021e7d6e04f0a96.md) | 372 | `result-track:e7c08b3ef021e7d6e04f0a96503f45af0461f8bdf89f132de5cac2d126cb4723` |
| 13 | `theorem` | [EquicontinuousOn.isClosed_range_uniformOnFun_iff_pi](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/declarations/equicontinuouson-isclosed-range-uniformonfun-iff-pi--48a614644a8650472d822e85.md) | 393 | `result-track:48a614644a8650472d822e85767336f2500712e3e59232f04ad2b12ceab6300e` |
| 14 | `theorem` | [ArzelaAscoli.compactSpace_of_closed_inducing'](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/declarations/arzelaascoli-compactspace-of-closed-inducing--dc700943a137e77fff3f7f67.md) | 416 | `result-track:dc700943a137e77fff3f7f67046931770cbe5bdfcc700bb81786bf42176994b1` |
| 15 | `theorem` | [ArzelaAscoli.compactSpace_of_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/declarations/arzelaascoli-compactspace-of-isclosedembedding--99f996d868a6498127cf8d4d.md) | 451 | `result-track:99f996d868a6498127cf8d4d22d6f4d1ff786416f9ace1807df8666325593311` |
| 16 | `theorem` | [ArzelaAscoli.isCompact_closure_of_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/declarations/arzelaascoli-iscompact-closure-of-isclosedembedding--f04a76e2b55cfc9a60f73770.md) | 469 | `result-track:f04a76e2b55cfc9a60f7377004ff167c99273c1d987c16dc13034149994404e0` |
| 17 | `theorem` | [ArzelaAscoli.isCompact_of_equicontinuous](../../../../../mathematics/Topology/GeneralTopology/Ascoli/Variante12c45138612a0f04ef6aa80cd42f35c23e385172ec0da544ed1874e537a9de7.lean/declarations/arzelaascoli-iscompact-of-equicontinuous--58445184e3559dd1a5933b30.md) | 494 | `result-track:58445184e3559dd1a5933b309126a217bff7195e8089faf3308754ec85d56f72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
