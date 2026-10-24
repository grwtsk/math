# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PontryaginDuality.Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82d70ca6c37e679d92264aea8ad41c715e589e7c",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82d70ca6c37e679d92264aea8ad41c715e589e7c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.AddChar` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FiniteAbelian.Orthogonality` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Circle` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FiniteAbelian.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zmod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/zmod--9901100be890eebc66177c2a.md) | 49 | `declaration-track:9901100be890eebc66177c2a6bfeb248b9fa847009f0564fd2e382f4b2199b1e` |
| 2 | `lemma` | [zmod_intCast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/zmod-intcast--aa2f9933fff599bf448342aa.md) | 53 | `result-track:aa2f9933fff599bf448342aafb9d6ef89339b2a38919dddce75f260582f653ef` |
| 3 | `lemma` | [zmod_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/zmod-zero--f0cf66addb4a3a875069d91a.md) | 57 | `result-track:f0cf66addb4a3a875069d91a8a331c2396dc24d204f893f13359fad013b6cd1b` |
| 4 | `lemma` | [zmod_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/zmod-add--5ab46dda9f5232dcacbdbc6c.md) | 62 | `result-track:5ab46dda9f5232dcacbdbc6c99e89f3b72a3ecbb0e85ac77acfb8ec3e9add21b` |
| 5 | `lemma` | [zmod_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/zmod-injective--f123897367c63343c17d083c.md) | 65 | `result-track:f123897367c63343c17d083cacab576197f85ed23b0a53892993f65584eaeb56` |
| 6 | `lemma` | [zmod_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/zmod-inj--1b72b1e53742277c0e8cd1c2.md) | 73 | `result-track:1b72b1e53742277c0e8cd1c23d5920c73be36b2bb0f54a7f6a1e67c15417927b` |
| 7 | `def` | [zmodHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/zmodhom--d021bf6d41f32150252e4744.md) | 76 | `declaration-track:d021bf6d41f32150252e4744d5c954af8c2afb6d37434f775664a004dedd35b3` |
| 8 | `def` | [mkZModAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/mkzmodaux--fd74ea87ce50650bf7f1543e.md) | 82 | `declaration-track:fd74ea87ce50650bf7f1543e9a2044f0d834b322e3cb14dec246cd3158eeb5b8` |
| 9 | `lemma` | [mkZModAux_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/mkzmodaux-injective--530d936abb2e27ae5227e8c4.md) | 86 | `result-track:530d936abb2e27ae5227e8c4689ce631324c0db35d8c65cffd7e6cbe3811b7f7` |
| 10 | `def` | [circleEquivComplex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/circleequivcomplex--8ac59492fb72d4620dafac54.md) | 92 | `declaration-track:8ac59492fb72d4620dafac54b84e9d3da3a9601f0e55096f1fd6ba3053fb2c51` |
| 11 | `lemma` | [card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/card-eq--ee63f8ba0652b070a1019434.md) | 102 | `result-track:ee63f8ba0652b070a101943492d8fb490581007c4d7891bc9c7165dd067c2d9f` |
| 12 | `def` | [zmodAddEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/zmodaddequiv--ee78ecc9bd8b67472a6ac1a1.md) | 113 | `declaration-track:ee78ecc9bd8b67472a6ac1a118762dd453c46067cb902c10ff672f7905b02def` |
| 13 | `lemma` | [zmodAddEquiv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/zmodaddequiv-apply--b3f35457a4dac24d12ba3ff5.md) | 119 | `result-track:b3f35457a4dac24d12ba3ff563a8bf262e0fce274cb10e0bc94784311db00d5c` |
| 14 | `def` | [complexBasis](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/complexbasis--15e4cb56be8e61703fa39076.md) | 126 | `declaration-track:15e4cb56be8e61703fa39076fa2000a48e250879dc0161c4bd3e814a37fd1d86` |
| 15 | `lemma` | [coe_complexBasis](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/coe-complexbasis--596c252de29096a62b519dbd.md) | 131 | `result-track:596c252de29096a62b519dbdd1287a20793797ed2962ff9b91d4d0e0db731e45` |
| 16 | `lemma` | [complexBasis_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/complexbasis-apply--8a34e350cf261891008fb42a.md) | 137 | `result-track:8a34e350cf261891008fb42a6755128ece7625ef896a9479c201048d802f0c19` |
| 17 | `lemma` | [exists_apply_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/exists-apply-ne-zero--972789b4ad1593f6bb9795f6.md) | 139 | `result-track:972789b4ad1593f6bb9795f6f9cfab3e2cce29fb0981b4545c2bb5c3a8919433` |
| 18 | `lemma` | [forall_apply_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/forall-apply-eq-zero--a2689a84b900f691cabb720e.md) | 152 | `result-track:a2689a84b900f691cabb720e572195f09adca2ebc2a7c8511fd272ab27ead191` |
| 19 | `lemma` | [doubleDualEmb_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/doubledualemb-injective--7f68f66b1ac90b0d7498e4a1.md) | 155 | `result-track:7f68f66b1ac90b0d7498e4a1b5c2d1e9fff9183f13699a674209cbe0a4c53d99` |
| 20 | `lemma` | [doubleDualEmb_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/doubledualemb-bijective--642d2b5d6a2eff4404b75b8b.md) | 159 | `result-track:642d2b5d6a2eff4404b75b8b3b96ed16688c620c3fd5e704ce4825b878f3ca72` |
| 21 | `lemma` | [doubleDualEmb_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/doubledualemb-inj--88e9ff3b76b79ecc760b830c.md) | 165 | `result-track:88e9ff3b76b79ecc760b830c72b86a96758a45610062491e8ae80fc6d20fed93` |
| 22 | `lemma` | [doubleDualEmb_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/doubledualemb-eq-zero--254c6fe3011bbf91c4707dc2.md) | 168 | `result-track:254c6fe3011bbf91c4707dc29f7286940901821a990ca277198968652de22d30` |
| 23 | `lemma` | [doubleDualEmb_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/doubledualemb-ne-zero--b568ffb9399df8c98a465939.md) | 171 | `result-track:b568ffb9399df8c98a465939af608b55f06cf3c48ee33388118ea30f455e4455` |
| 24 | `def` | [doubleDualEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/doubledualequiv--085ec361c76b1f15bedcbcb3.md) | 175 | `declaration-track:085ec361c76b1f15bedcbcb3a9ca1dfe5f5abdc29bf339d080f98853d0bdf95a` |
| 25 | `lemma` | [coe_doubleDualEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/coe-doubledualequiv--a614bbaaa53765de76afae71.md) | 178 | `result-track:a614bbaaa53765de76afae7170babc929def05f6dc1f67ec3d7176f224c72ded` |
| 26 | `lemma` | [doubleDualEmb_doubleDualEquiv_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/doubledualemb-doubledualequiv-symm-apply--89d6bbb4e00c29c62a3bee2d.md) | 180 | `result-track:89d6bbb4e00c29c62a3bee2d48708e7c4830484e7131acfc13378c6d3e2859ad` |
| 27 | `lemma` | [doubleDualEquiv_symm_doubleDualEmb_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/doubledualequiv-symm-doubledualemb-apply--8bb33a2548eb0d2a4de5f58c.md) | 184 | `result-track:8bb33a2548eb0d2a4de5f58c107c45c16b7c9d93e0ebf9be135fdfcdff11e1fa` |
| 28 | `lemma` | [sum_apply_eq_ite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/sum-apply-eq-ite--2409936c553479879df9033f.md) | 189 | `result-track:2409936c553479879df9033f7ca4c703bcb0a57c653898e1e1fe2f9bbeaedd96` |
| 29 | `lemma` | [expect_apply_eq_ite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/expect-apply-eq-ite--6a15b54360ae220783514a38.md) | 193 | `result-track:6a15b54360ae220783514a382e53ab258e8af32c192e923ef2df5c3aeb85cc64` |
| 30 | `lemma` | [sum_apply_eq_zero_iff_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/sum-apply-eq-zero-iff-ne-zero--b5ce262b094a5895d8f37c1e.md) | 197 | `result-track:b5ce262b094a5895d8f37c1e2fd0d9bf7405f8181851a74b63eb338f1a85832e` |
| 31 | `lemma` | [sum_apply_ne_zero_iff_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/sum-apply-ne-zero-iff-eq-zero--17d947c9c5c7b10bf8dc815c.md) | 203 | `result-track:17d947c9c5c7b10bf8dc815cafab71804a61b47d2db7a152249046e1745fbc62` |
| 32 | `lemma` | [expect_apply_eq_zero_iff_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/expect-apply-eq-zero-iff-ne-zero--faa504c656ac39a267f094a5.md) | 206 | `result-track:faa504c656ac39a267f094a58c0dfe06e8b66f845fc6ae94d28da694ca8cfd2d` |
| 33 | `lemma` | [expect_apply_ne_zero_iff_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PontryaginDuality/Variantd7864bd1ef9efb74f7c4f8d0812f28a8854ec044d7c109cf1916d5fac976b338.lean/declarations/expect-apply-ne-zero-iff-eq-zero--eb3ff75ccfd7d8b1c0144ed8.md) | 211 | `result-track:eb3ff75ccfd7d8b1c0144ed87a6893895cea890a8a7dfb7fd57334ea530786be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
