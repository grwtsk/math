# Verification target: GRWTSK.Geometry.AlgebraicGeometry.AffineAnd.Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41a2da0fabaa493e5d93539a169e7b6e452039e0",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41a2da0fabaa493e5d93539a169e7b6e452039e0`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [affineAnd](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/declarations/affineand--985c480eeac283256b863bc5.md) | 49 | `declaration-track:985c480eeac283256b863bc5fa6e2e5d3f12b29879fd0a6511f81bc9a124ef52` |
| 2 | `lemma` | [affineAnd_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/declarations/affineand-apply--57c2f38f6b5278f16e516575.md) | 53 | `result-track:57c2f38f6b5278f16e516575bcb81e6cb7f731e088ad570994d0cf9f0042fce9` |
| 3 | `lemma` | [affineAnd_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/declarations/affineand-respectsiso--f65f98b9d5cf0ede3bdb0dec.md) | 63 | `result-track:f65f98b9d5cf0ede3bdb0dec810fb6be21d158ce8aafc366db72737d48342e04` |
| 4 | `lemma` | [affineAnd_isLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/declarations/affineand-islocal--b92b1bfe619b5d9cccfd0c4c.md) | 73 | `result-track:b92b1bfe619b5d9cccfd0c4c2156b9ac533ec16fa0c35f62723249c6f2c04b50` |
| 5 | `lemma` | [affineAnd_isLocal_of_propertyIsLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/declarations/affineand-islocal-of-propertyislocal--7da9a8477f08d18a62c74fce.md) | 112 | `result-track:7da9a8477f08d18a62c74fce39cc7ad79da170c7ed17a12f8582d0c115f0c326` |
| 6 | `lemma` | [affineAnd_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/declarations/affineand-isstableunderbasechange--7ee3cdc145a4cf1ae4454bbb.md) | 117 | `result-track:7ee3cdc145a4cf1ae4454bbb282dade623e10aa0bb040a5ed4eae09370a22fbb` |
| 7 | `lemma` | [targetAffineLocally_affineAnd_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/declarations/targetaffinelocally-affineand-iff--11b25d229e736c01ee5be38d.md) | 126 | `result-track:11b25d229e736c01ee5be38def3ebc7942940a5460d6eb1f68d193d02ef139b5` |
| 8 | `lemma` | [targetAffineLocally_affineAnd_iff'](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/declarations/targetaffinelocally-affineand-iff--bf63d897cc7b06a64bf42043.md) | 143 | `result-track:bf63d897cc7b06a64bf420433d6e961e0854620b2ad4d6056a436b8c97b6ce04` |
| 9 | `lemma` | [targetAffineLocally_affineAnd_iff_affineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/declarations/targetaffinelocally-affineand-iff-affinelocally--5b41a5cf7e79f7a246cf6511.md) | 151 | `result-track:5b41a5cf7e79f7a246cf65115962bc2945681aecd6a7afb04d848cb9a8b32df6` |
| 10 | `lemma` | [targetAffineLocally_affineAnd_eq_affineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/declarations/targetaffinelocally-affineand-eq-affinelocally--f2b9ddd39363f7bfaf1f038f.md) | 179 | `result-track:f2b9ddd39363f7bfaf1f038f7627c73a2cd8b017241ac9a8fdc597835c686c7b` |
| 11 | `lemma` | [targetAffineLocally_affineAnd_le](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/declarations/targetaffinelocally-affineand-le--b956f8f63c8d9a9bd1c70cbf.md) | 187 | `result-track:b956f8f63c8d9a9bd1c70cbfec81f18e01c8025c3cc9e367eb0fa7602a80768f` |
| 12 | `lemma` | [HasAffineProperty.affineAnd_isStableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/declarations/hasaffineproperty-affineand-isstableundercomposition--e37c47ba85c7537ae88d6619.md) | 201 | `result-track:e37c47ba85c7537ae88d6619098901dc1a722b0b9074a5bfde7ed96039d51a1c` |
| 13 | `lemma` | [HasAffineProperty.affineAnd_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/declarations/hasaffineproperty-affineand-isstableunderbasechange--8eab2b674c8b33a7895c3c61.md) | 220 | `result-track:8eab2b674c8b33a7895c3c6186685e3f935ddc0e5faccb238d5f8ca798802345` |
| 14 | `lemma` | [HasAffineProperty.affineAnd_containsIdentities](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/declarations/hasaffineproperty-affineand-containsidentities--12e6466f6fee5e69421cb830.md) | 229 | `result-track:12e6466f6fee5e69421cb8302ae7c7ab469eb5b216a20f2bad6b225f44ceb4aa` |
| 15 | `lemma` | [HasAffineProperty.affineAnd_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/declarations/hasaffineproperty-affineand-iff--d8d02b0273a0b3bf9fb26a1e.md) | 240 | `result-track:d8d02b0273a0b3bf9fb26a1ec015fd1d342eb31cfe5ebff0139ac5aead19ab31` |
| 16 | `lemma` | [HasAffineProperty.affineAnd_le_isAffineHom](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/declarations/hasaffineproperty-affineand-le-isaffinehom--65280d251a9e846e08c26b09.md) | 255 | `result-track:65280d251a9e846e08c26b095486783b6a6420561649e9c88635a6c59e9948a4` |
| 17 | `lemma` | [HasAffineProperty.affineAnd_eq_of_propertyIsLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/declarations/hasaffineproperty-affineand-eq-of-propertyislocal--7352d2c5413e9958d421f701.md) | 266 | `result-track:7352d2c5413e9958d421f70149d09a37ea74bf038011a464cbffdf38edcdba13` |
| 18 | `lemma` | [HasAffineProperty.SpecMap_iff_of_affineAnd](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/declarations/hasaffineproperty-specmap-iff-of-affineand--2e3b3dd0e32a0d0ba5ab9e72.md) | 274 | `result-track:2e3b3dd0e32a0d0ba5ab9e726a255fd7a886c681d247b506d4bf0235c2824337` |
| 19 | `lemma` | [HasAffineProperty.affineAnd_le_affineAnd](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/declarations/hasaffineproperty-affineand-le-affineand--dfd1537e5ecc645afa2982bb.md) | 283 | `result-track:dfd1537e5ecc645afa2982bbfbc1edaf9b1442f22a7b46a80bc52cef6c94e86a` |
| 20 | `lemma` | [HasAffineProperty.coprodDesc_affineAnd](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineAnd/Variant24df50529ed18088843318c6322869c35b5fbe42293faf1c41a6dd6a5835ecfe.lean/declarations/hasaffineproperty-coproddesc-affineand--ed06e849e4754c3d53ef4de8.md) | 291 | `result-track:ed06e849e4754c3d53ef4de8564983b78c5f82e1d1640692603327dbe6f994b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
