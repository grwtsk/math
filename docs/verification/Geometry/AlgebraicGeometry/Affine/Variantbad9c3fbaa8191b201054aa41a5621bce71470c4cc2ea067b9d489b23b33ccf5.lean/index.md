# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Affine.Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dea6c437957ea7fd2b57d799152db8e6ea3cb2ec",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dea6c437957ea7fd2b57d799152db8e6ea3cb2ec`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.QuasiSeparated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.IsIso` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsAffineHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/declarations/isaffinehom--72fabae3444d9faa16eec923.md) | 50 | `declaration-track:72fabae3444d9faa16eec923b256fafd2eafec256a87145faf3c70f005479578` |
| 2 | `lemma` | [IsAffineOpen.preimage](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/declarations/isaffineopen-preimage--e1c312e78f978dff981c4957.md) | 53 | `result-track:e1c312e78f978dff981c49573acd379c587d5a1aaea01c715eee6291f59c1165` |
| 3 | `def` | [affinePreimage](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/declarations/affinepreimage--16aa6f5e381001c005391b19.md) | 60 | `declaration-track:16aa6f5e381001c005391b193482d47be7f6013e67bc099ea3920add2f118a9a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/declarations/instance--bc2aaaa928a3fcb63c496a5e.md) | 64 | `declaration-track:bc2aaaa928a3fcb63c496a5ec94481c97d3ad255e5af0a4fcb43b7be28ed4eed` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/declarations/instance--d479c107229e6cded45aa18c.md) | 67 | `declaration-track:d479c107229e6cded45aa18cbb5f01845c101f72b33415fb10fa9c9c175dfe8e` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/declarations/instance--ba6d6a6b26ee0e32460fee3f.md) | 71 | `declaration-track:ba6d6a6b26ee0e32460fee3f947b65ad304698321820cd7f4bf53a81350e89eb` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/declarations/instance--d427330b592038f719ef8fd6.md) | 79 | `declaration-track:d427330b592038f719ef8fd6659219f425e09d861f6bd304e2bde1afe969ea55` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/declarations/instance--abba8cb1a5c70747e63bb9a2.md) | 83 | `declaration-track:abba8cb1a5c70747e63bb9a2bfbfb3fd58e603baf4c0baca5bf25be770613ee4` |
| 9 | `lemma` | [isAffineOpen_of_isAffineOpen_basicOpen_aux](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/declarations/isaffineopen-of-isaffineopen-basicopen-aux--8ae558886855a1da73b8ccbf.md) | 94 | `result-track:8ae558886855a1da73b8ccbf21bdaac11dea44c028e9ea3e8315f3aa37a9e433` |
| 10 | `lemma` | [isAffine_of_isAffineOpen_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/declarations/isaffine-of-isaffineopen-basicopen--b7ee0f59901cacc9f09ecf2a.md) | 112 | `result-track:b7ee0f59901cacc9f09ecf2a7ee01f46fe41eb03d62327b8d527a16fe2648a20` |
| 11 | `lemma` | [isAffineOpen_of_isAffineOpen_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/declarations/isaffineopen-of-isaffineopen-basicopen--0da532779b7cd773bc6bf249.md) | 142 | `result-track:0da532779b7cd773bc6bf249af64ec7a4a0478d487278a9dda1aa14a3d564f7d` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/declarations/instance--51c7c1f456a4a690e4b2d00e.md) | 151 | `declaration-track:51c7c1f456a4a690e4b2d00eae60938b4854c9dad213ef48048846545cff1ff5` |
| 13 | `instance` | [isAffineHom_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/declarations/isaffinehom-isstableunderbasechange--950bc99b3dbbcf6d039d5e8a.md) | 176 | `declaration-track:950bc99b3dbbcf6d039d5e8a213356091fee5fd2a8c68c36b89b1d0f5f7b97b5` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/declarations/instance--6e3f280763984459be90c8ab.md) | 184 | `declaration-track:6e3f280763984459be90c8ab3d53844bf809f2b304403e011f3c254556efc4e0` |
| 15 | `lemma` | [isAffine_of_isAffineHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/declarations/isaffine-of-isaffinehom--d236adc5208d538644192df0.md) | 187 | `result-track:d236adc5208d538644192df0ed49c6278287ed09acab24a5a01a54fa42787da3` |
| 16 | `lemma` | [isAffineHom_of_forall_exists_isAffineOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/declarations/isaffinehom-of-forall-exists-isaffineopen--8520a78e10db7258b1c313a3.md) | 190 | `result-track:8520a78e10db7258b1c313a3ebda6251689d67ae6fa60db9f298ba01fb069e12` |
| 17 | `lemma` | [isAffineHom_of_isInducing](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variantbad9c3fbaa8191b201054aa41a5621bce71470c4cc2ea067b9d489b23b33ccf5.lean/declarations/isaffinehom-of-isinducing--3984bfb51894b96fb5825812.md) | 200 | `result-track:3984bfb51894b96fb5825812c753b11ce8f3cc93fe814132d24731bd835de8cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
