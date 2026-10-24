# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSignedHeight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07203d6c78db306a567165a1fa2f3d469962b279",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07203d6c78db306a567165a1fa2f3d469962b279`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.ConjugateAnalyticOrder`](../../../../../mathematics/Analysis/ComplexAnalysis/ConjugateAnalyticOrder.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.LocalZeroSymmetry`](../../../../../mathematics/NumberTheory/Zeta/Riemann/LocalZeroSymmetry.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRealAxisMellin`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [im_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/im-ne-zero--821219e5357bdf0ca59d9ab5.md) | 29 | `result-track:821219e5357bdf0ca59d9ab545a5af78d73fa4503ff01209d8d4f4787b9c547a` |
| 2 | `theorem` | [conjugate_multiplicity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/conjugate-multiplicity--43bbd4a9a97e99380cb73dbe.md) | 33 | `result-track:43bbd4a9a97e99380cb73dbeca729f688552091fbb4c72601e8beaeeaf475ea4` |
| 3 | `theorem` | [conjugate_injective](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/conjugate-injective--0dc4165c0e4091f6cfbbc322.md) | 44 | `result-track:0dc4165c0e4091f6cfbbc3226458bdeba248de7a4d3216671df5ae6c9cbed9ca` |
| 4 | `def` | [positiveHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/positivehead--8a3457d89869689f2e78738c.md) | 50 | `declaration-track:8a3457d89869689f2e78738cde0f73c62788a505ad4f5adbccb910196cc478fe` |
| 5 | `def` | [negativeHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/negativehead--0ca9c84ec1af6e9ef1875168.md) | 53 | `declaration-track:0ca9c84ec1af6e9ef1875168204880898356b82f308a9f44da3c0e048d986e67` |
| 6 | `def` | [positiveCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/positivecount--ca875e5b1c72c5d40e21642b.md) | 56 | `declaration-track:ca875e5b1c72c5d40e21642ba16fec8d84a729617a1e26c102402da680b6ae2b` |
| 7 | `def` | [negativeCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/negativecount--a67036be44b15d5190aa362f.md) | 58 | `declaration-track:a67036be44b15d5190aa362f8b7138a80fc523210e5201c67b09b5d74d42245f` |
| 8 | `theorem` | [mem_positiveHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/mem-positivehead--4d797c9c30fd51da6f075143.md) | 60 | `result-track:4d797c9c30fd51da6f075143442a9a1726f264af90bdfeef3a369b9c6016b941` |
| 9 | `theorem` | [conjugate_mem_positive_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/conjugate-mem-positive-iff--d2d55586040e5cb97e165697.md) | 69 | `result-track:d2d55586040e5cb97e165697ad07317c0522b03ad44d7270a8550584eab7bbbf` |
| 10 | `theorem` | [negativeHead_eq_image](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/negativehead-eq-image--2ecc6c990aeb47f56b422047.md) | 76 | `result-track:2ecc6c990aeb47f56b4220474ee9afbe78c90e70403947e0dadd0c5c4c559116` |
| 11 | `theorem` | [signed_heads_disjoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/signed-heads-disjoint--24c8ca821f38885f3bf1315c.md) | 88 | `result-track:24c8ca821f38885f3bf1315c70c890e3c8acd7fdc337f3bb5c1a1e13b9674d5c` |
| 12 | `theorem` | [head_eq_signed_union](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/head-eq-signed-union--3fca88a0e6d1c454854d033f.md) | 96 | `result-track:3fca88a0e6d1c454854d033fdf25148e5b4e61977ab42e3f889ead92c131dcb7` |
| 13 | `theorem` | [negativeCount_eq_positiveCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/negativecount-eq-positivecount--b1ca789cccbff64ed09de3e2.md) | 109 | `result-track:b1ca789cccbff64ed09de3e22df3bb603ae847fd9e02da19d9e598c7060dd483` |
| 14 | `theorem` | [heightCount_eq_twice](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/heightcount-eq-twice--d4a66451dce44723840a8bb3.md) | 117 | `result-track:d4a66451dce44723840a8bb38ecd814771e347683ef94516b8f97cd97a89fce3` |
| 15 | `theorem` | [heightCount_even](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/heightcount-even--513fad30d89a504105d423f4.md) | 124 | `result-track:513fad30d89a504105d423f4e4dbfb3c21792bcc96d830f56bd345aa2792fba1` |
| 16 | `theorem` | [heightCount_upper_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/heightcount-upper-iff--b2692563fc822f699364e3e2.md) | 129 | `result-track:b2692563fc822f699364e3e2e93710bedfa5562737282f6c9ba3300bc9c54b6b` |
| 17 | `theorem` | [heightCount_lt_four_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/heightcount-lt-four-iff--9ce99a20167e0e399e5804a5.md) | 135 | `result-track:9ce99a20167e0e399e5804a54922378372c69288d2c0f5b0f9997b1345e1b884` |
| 18 | `theorem` | [positiveHead_empty_of_nonpos](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/positivehead-empty-of-nonpos--d0caed75b36da7f5815a6301.md) | 140 | `result-track:d0caed75b36da7f5815a630179eb7e420368acafdace53e111ed2b516be92d57` |
| 19 | `theorem` | [counts_zero_of_nonpos](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/counts-zero-of-nonpos--3ff1884ca85430c57cbce44d.md) | 146 | `result-track:3ff1884ca85430c57cbce44d85e4abeb5b56bc05119f691f9c317e028764ccf7` |
| 20 | `def` | [positiveOpenHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/positiveopenhead--b9116d6ad9b4aef0d1461ccb.md) | 152 | `declaration-track:b9116d6ad9b4aef0d1461ccb755fd5ef7aafbbcf7c24291544062cd7ec275da6` |
| 21 | `def` | [boundaryHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/boundaryhead--a20df07329a0edccb4625bd4.md) | 155 | `declaration-track:a20df07329a0edccb4625bd4605897ed350ec43525fb2da1c449e746c02fd898` |
| 22 | `def` | [positiveOpenCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/positiveopencount--8e7b3431da5835ede9c0dd4b.md) | 158 | `declaration-track:8e7b3431da5835ede9c0dd4b9c93d05e7096718c44764fa2676e1f680fe7a32f` |
| 23 | `def` | [boundaryCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/boundarycount--02883d28ecfe170bdf1e6033.md) | 160 | `declaration-track:02883d28ecfe170bdf1e6033ab227dacd50f81e8091ab7019cd4bf826ef7a476` |
| 24 | `theorem` | [mem_positiveOpenHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/mem-positiveopenhead--4f4c47f62bac5af15188c844.md) | 162 | `result-track:4f4c47f62bac5af15188c8448b2a4fbb960a66d68063913ae5879b7aada99854` |
| 25 | `theorem` | [mem_boundaryHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/mem-boundaryhead--0347bd997d160162d5081ce1.md) | 169 | `result-track:0347bd997d160162d5081ce1c33b322e82765a1dc1f92d4db02229ce8e530977` |
| 26 | `theorem` | [open_boundary_disjoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/open-boundary-disjoint--ffb2d4441d14904ee1bb8b1c.md) | 176 | `result-track:ffb2d4441d14904ee1bb8b1c915cb470b0d649380a257b6a3178a808fd806627` |
| 27 | `theorem` | [positiveHead_eq_open_union_boundary](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/positivehead-eq-open-union-boundary--fb6a3102ddf0c8978edadfd3.md) | 184 | `result-track:fb6a3102ddf0c8978edadfd34994d1a9f2e2d84056dc62bcb08d5742b33b5bab` |
| 28 | `theorem` | [positiveCount_eq_open_add_boundary](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/positivecount-eq-open-add-boundary--2d18042001081184b4f1bceb.md) | 199 | `result-track:2d18042001081184b4f1bcebaeef7fc3f7736c12f44366dcbbc59a0d52af9ae5` |
| 29 | `theorem` | [heightCount_eq_open_and_boundary](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/heightcount-eq-open-and-boundary--909ba53756d36ae1fa0ff9bd.md) | 208 | `result-track:909ba53756d36ae1fa0ff9bd2858bf11b54a2e08c474845c0ed7eaa4a283edaf` |
| 30 | `def` | [positiveHalfCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/positivehalfcount--a49a74508745b47926b15060.md) | 214 | `declaration-track:a49a74508745b47926b150601863ea7f63c12de5ae4b7b2ff20b4925992c2a49` |
| 31 | `theorem` | [heightCount_eq_half_and_boundary](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/heightcount-eq-half-and-boundary--a163bb298994c97eb65d93a5.md) | 217 | `result-track:a163bb298994c97eb65d93a52aedde54b5ba71e6705d2c69d6d591440d4db600` |
| 32 | `theorem` | [head_eq_pair_of_count_le_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSignedHeight.lean/declarations/head-eq-pair-of-count-le-two--76f1b242b79487da64bd859b.md) | 226 | `result-track:76f1b242b79487da64bd859b34dc776b342fbe860903e67be02fb923f750be34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
