# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42292725a209cfc7224d0d6ffe490f0c90b57e63",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42292725a209cfc7224d0d6ffe490f0c90b57e63`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean.json)

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
| 1 | `lemma` | [fst_mem_orbit_of_mem_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/fst-mem-orbit-of-mem-orbit--44380139a67bde4c06a07878.md) | 59 | `result-track:44380139a67bde4c06a0787836e27ad73d674aa1fbb2190aec176a8c56906df0` |
| 2 | `lemma` | [snd_mem_orbit_of_mem_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/snd-mem-orbit-of-mem-orbit--594fd13ff74b03dbcd8fd58a.md) | 65 | `result-track:594fd13ff74b03dbcd8fd58a6cde31735e55bde53ba47c6ead201910255080aa` |
| 3 | `lemma` | [_root_.GRWTSK.Algebra.GroupTheory.FstMemOrbitOfMemOrbit.Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.Finite.finite_mulAction_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/root-grwtsk-algebra-grouptheory-fstmemorbitofmemorbit-variant6d5751fb851--cb276063ce9d99257cb59a83.md) | 71 | `result-track:cb276063ce9d99257cb59a8347a439d38a9c4074d9f26c8fae72015fcaeda5ab` |
| 4 | `theorem` | [orbit_eq_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/orbit-eq-univ--66b88f27fcb6be49c075edf0.md) | 77 | `result-track:66b88f27fcb6be49c075edf0057ea65506ee31ea98b9ec7238730348271dfcfb` |
| 5 | `theorem` | [subsingleton_orbit_iff_mem_fixedPoints](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/subsingleton-orbit-iff-mem-fixedpoints--f626f224faa09bad0cde4102.md) | 87 | `result-track:f626f224faa09bad0cde4102b284dfcf0d118a80d3c670fc96812f92bd5d0f2e` |
| 6 | `theorem` | [mem_fixedPoints_iff_card_orbit_eq_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/mem-fixedpoints-iff-card-orbit-eq-one--331f7111f661cc0015703ae4.md) | 96 | `result-track:331f7111f661cc0015703ae4554083a5d5f05115e2eab8ba620b67b07b0256eb` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/instance--240360c54c4ee3e9aadd5ef0.md) | 103 | `declaration-track:240360c54c4ee3e9aadd5ef039db7799279bb6d3bd8741de4826596a91a63b31` |
| 8 | `theorem` | [smul_cancel_of_non_zero_divisor](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/smul-cancel-of-non-zero-divisor--235cca7eb1870ff93da3342e.md) | 115 | `result-track:235cca7eb1870ff93da3342ec66f3718849c3ae92d2b53d0b74555845bb287e3` |
| 9 | `theorem` | [fixedPoints_of_subsingleton](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/fixedpoints-of-subsingleton--352aace9479135b845e29658.md) | 125 | `result-track:352aace9479135b845e296585ad5ff7e1c9ce935b34562e0e58225d9c2a32e72` |
| 10 | `theorem` | [nontrivial_of_fixedPoints_ne_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/nontrivial-of-fixedpoints-ne-univ--aa3328cf3e4c2044a038f9ed.md) | 134 | `result-track:aa3328cf3e4c2044a038f9ed1df63e2d58914e7fb6e4b0750e86da78ce2d2256` |
| 11 | `theorem` | [smul_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/smul-orbit--afe2701283db4f63a45dfd02.md) | 143 | `result-track:afe2701283db4f63a45dfd022911744c83a2646c16a399980fd0e14546e717ca` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/instance--c570a01f0b6ff76586654557.md) | 151 | `declaration-track:c570a01f0b6ff765866545575249793eef93f86a06da67869e816fa092f2fc61` |
| 13 | `lemma` | [orbitRel_subgroup_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/orbitrel-subgroup-le--663710e48eb61923cb5bc050.md) | 159 | `result-track:663710e48eb61923cb5bc050717b0a60b94fa326bba20493cba0f63a4c7069cc` |
| 14 | `lemma` | [orbitRel_subgroupOf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/orbitrel-subgroupof--6cbbcc2e86d84a4ece712e74.md) | 163 | `result-track:6cbbcc2e86d84a4ece712e7428127040db3da5bbf0d67e2a08d8ccf8453b7e70` |
| 15 | `theorem` | [pretransitive_iff_subsingleton_quotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/pretransitive-iff-subsingleton-quotient--fd94913ae7869eef5fc34b3e.md) | 187 | `result-track:fd94913ae7869eef5fc34b3e4fe53a3b4af6bba57285dcd43a615d01e59102bd` |
| 16 | `theorem` | [pretransitive_iff_unique_quotient_of_nonempty](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/pretransitive-iff-unique-quotient-of-nonempty--afba56553e2a83756f14f911.md) | 199 | `result-track:afba56553e2a83756f14f91107c2720ea3488d5b118b33ea4bce6d2019fdafed` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/instance--299c01795b4f8ee1ad0805b5.md) | 208 | `declaration-track:299c01795b4f8ee1ad0805b5fb392c5a103d5c8686bc17a04d622be19b5272bf` |
| 18 | `lemma` | [_root_.GRWTSK.Algebra.GroupTheory.FstMemOrbitOfMemOrbit.Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.Finite.of_finite_mulAction_orbitRel_quotient](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/root-grwtsk-algebra-grouptheory-fstmemorbitofmemorbit-variant6d5751fb851--82fbd3869a81ed0088d93c23.md) | 224 | `result-track:82fbd3869a81ed0088d93c2326fe960985f1309c99778ac69c0d39df7e4142ad` |
| 19 | `lemma` | [orbitRel_le_fst](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/orbitrel-le-fst--7942848433fb0b078e4514f4.md) | 235 | `result-track:7942848433fb0b078e4514f45e02a18ad54c36d5e644500987ca09e20f712688` |
| 20 | `lemma` | [orbitRel_le_snd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/orbitrel-le-snd--11780b9beb4ced0685b97e82.md) | 240 | `result-track:11780b9beb4ced0685b97e82431f55c7bf8891488114f1dc6784c88e163a03dd` |
| 21 | `lemma` | [_root_.GRWTSK.Algebra.GroupTheory.FstMemOrbitOfMemOrbit.Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.IsCancelSMul.stabilizer_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/root-grwtsk-algebra-grouptheory-fstmemorbitofmemorbit-variant6d5751fb851--ce3de6d421b4daf47e551d7c.md) | 249 | `result-track:ce3de6d421b4daf47e551d7cebe016c9be7a2ac42f0e6b49743f18e4e6d7a38a` |
| 22 | `lemma` | [_root_.GRWTSK.Algebra.GroupTheory.FstMemOrbitOfMemOrbit.Variant6d5751fb85181a15315d36f72f32a27747e15bc0a8e979baf9558f0b770471bb.isCancelSMul_iff_stabilizer_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/root-grwtsk-algebra-grouptheory-fstmemorbitofmemorbit-variant6d5751fb851--fb7eae338b9eb6d93d07e5f5.md) | 254 | `result-track:fb7eae338b9eb6d93d07e5f583672ef3e9d62ac651d9055a984f4073fb01990b` |
| 23 | `theorem` | [stabilizer_smul_eq_stabilizer_map_conj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/stabilizer-smul-eq-stabilizer-map-conj--277ff226885180d938cfd77c.md) | 260 | `result-track:277ff226885180d938cfd77cf2a143deee7417de0b1f6b2c249cd3921466992d` |
| 24 | `def` | [stabilizerEquivStabilizer](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/stabilizerequivstabilizer--59a3bcdecd8e3a9699f89dd8.md) | 270 | `declaration-track:59a3bcdecd8e3a9699f89dd89644f96b2b0b2a207321112ba8e9621fbd5f4a1f` |
| 25 | `theorem` | [stabilizerEquivStabilizer_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/stabilizerequivstabilizer-apply--c443f1b42bbdefa17d738c68.md) | 276 | `result-track:c443f1b42bbdefa17d738c685ba06605630fcfdf228b50ea491da2af290ad7af` |
| 26 | `theorem` | [stabilizerEquivStabilizer_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/stabilizerequivstabilizer-symm-apply--f50ee15ee5932654db92fad0.md) | 281 | `result-track:f50ee15ee5932654db92fad0414950805c6a3390a57d1aaa6fc0232463ceb426` |
| 27 | `theorem` | [stabilizerEquivStabilizer_trans](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/stabilizerequivstabilizer-trans--9e9c0be836a9932f7096fe38.md) | 286 | `result-track:9e9c0be836a9932f7096fe387a2d1ce7535392d0b9475151974664f8246bf2fb` |
| 28 | `theorem` | [stabilizerEquivStabilizer_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/stabilizerequivstabilizer-one--91171f762c32263a98dc8141.md) | 293 | `result-track:91171f762c32263a98dc81410494bca1bb19e3b3fb065546a4374baf871e3d86` |
| 29 | `theorem` | [stabilizerEquivStabilizer_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/stabilizerequivstabilizer-symm--e33ff56ee220649d39456b5d.md) | 298 | `result-track:e33ff56ee220649d39456b5d7afd8c65a9bd19bcb10e338ebf3be940b4145a6f` |
| 30 | `theorem` | [stabilizerEquivStabilizer_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/stabilizerequivstabilizer-inv--59c1730f604ace6356071815.md) | 304 | `result-track:59c1730f604ace6356071815fabcab1a62b02c25632eb4186bb8d6845d471373` |
| 31 | `def` | [stabilizerEquivStabilizerOfOrbitRel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/stabilizerequivstabilizeroforbitrel--e22dff04a234b6397bbe5beb.md) | 311 | `declaration-track:e22dff04a234b6397bbe5bebbdca64ab142d135efd42f8555922b6a11229ba92` |
| 32 | `theorem` | [Equiv.swap_mem_stabilizer](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/equiv-swap-mem-stabilizer--3c6b87ea2c6e2df640b57da9.md) | 326 | `result-track:3c6b87ea2c6e2df640b57da9b019010de9d5af472d53329a56bfdb3ffefbf131` |
| 33 | `theorem` | [le_stabilizer_iff_smul_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/le-stabilizer-iff-smul-le--8d50ca4b7ca85307a3fa81ca.md) | 339 | `result-track:8d50ca4b7ca85307a3fa81cab072aae99ea5a3839f68f73f105b5dbbcfb1616d` |
| 34 | `lemma` | [Module.stabilizer_units_eq_bot_of_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/module-stabilizer-units-eq-bot-of-ne-zero--2158b411e75a4198dbc8e1fa.md) | 362 | `result-track:2158b411e75a4198dbc8e1fa579feabdf234757af9e0cc379f29da5b7e5fffa4` |
| 35 | `lemma` | [Multiplicative.mulAction_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/multiplicative-mulaction-orbit--7c5b08353d0b5d126df71d46.md) | 371 | `result-track:7c5b08353d0b5d126df71d4645c7dd13dfa0e2654c2a35d8be325db3fc6d4f9b` |
| 36 | `lemma` | [Additive.mulAction_orbit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant2813a8d159db6d8ca386962e9eeffd616a692fdb17c819294c48413b0e222674.lean/declarations/additive-mulaction-orbit--56d617092911e024454b1161.md) | 375 | `result-track:56d617092911e024454b1161ecdb1746bf136fff975510ff6a87cd7c2893e29c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
