# Verification target: GRWTSK.Geometry.AlgebraicGeometry.RingHomProperties.Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26f03c4e4fd6f07813b86af00e58b6663b93f91a",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26f03c4e4fd6f07813b86af00e58b6663b93f91a`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Constructors` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RingHom.Locally` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsStableUnderBaseChange.pullback_fst_appTop](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/isstableunderbasechange-pullback-fst-apptop--6606dd315cbfff0b69c84241.md) | 77 | `result-track:6606dd315cbfff0b69c842416cc18e2d97af6d51d4ef6bdaeb2217cfd63ae8ac` |
| 2 | `def` | [sourceAffineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/sourceaffinelocally--b89298f900fa0721265c6907.md) | 110 | `declaration-track:b89298f900fa0721265c69073c4ba8afe1baf6d825867091770500abe043711a` |
| 3 | `abbrev` | [affineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/affinelocally--b901e9e479ccb8073b5d63b8.md) | 116 | `declaration-track:b901e9e479ccb8073b5d63b8bf8acabc6ea433be5c66f02a6d62c563a8d0c679` |
| 4 | `theorem` | [sourceAffineLocally_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/sourceaffinelocally-respectsiso--b08660c3a805aa1a5802dfa6.md) | 119 | `result-track:b08660c3a805aa1a5802dfa64a441fe54a44e03afa3c140a782978a7208e7959` |
| 5 | `theorem` | [affineLocally_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/affinelocally-respectsiso--72068ac63e7726fd4e49526f.md) | 133 | `result-track:72068ac63e7726fd4e49526fabda11280f6daa39886a13d114085215f09c6782` |
| 6 | `theorem` | [sourceAffineLocally_morphismRestrict](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/sourceaffinelocally-morphismrestrict--726d2255d292cac674022fa1.md) | 138 | `result-track:726d2255d292cac674022fa1b7d0a5da7c7409bc036e7cb2411068ff51998ebb` |
| 7 | `theorem` | [affineLocally_iff_affineOpens_le](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/affinelocally-iff-affineopens-le--bb50aa2bcc93c64b83c9f6e4.md) | 149 | `result-track:bb50aa2bcc93c64b83c9f6e4a0dda9cb8442332d9ec80cc0abbb4d30abc20ba3` |
| 8 | `theorem` | [sourceAffineLocally_isLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/sourceaffinelocally-islocal--efdf90afd99db903ccd35552.md) | 154 | `result-track:efdf90afd99db903ccd3555242e688cba64bb0380ed1bbe4691d08f865d51d99` |
| 9 | `lemma` | [affineLocally_le](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/affinelocally-le--c3977d4b64362b0f480abf0d.md) | 183 | `result-track:c3977d4b64362b0f480abf0d12b3f099924e11cb87f7a0bea3086eb00fe12aaa` |
| 10 | `lemma` | [exists_basicOpen_le_appLE_of_appLE_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/exists-basicopen-le-apple-of-apple-of-isaffine--2cb94aea6e7e98d1b1f67aeb.md) | 195 | `result-track:2cb94aea6e7e98d1b1f67aeba559e7e97ef968c3080c6955aecfa238b06e97d9` |
| 11 | `lemma` | [exists_affineOpens_le_appLE_of_appLE](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/exists-affineopens-le-apple-of-apple--30d415c317ecb7b9698a3dde.md) | 231 | `result-track:30d415c317ecb7b9698a3dde9c1c6d915e1d84204a94856599d354b5df544fe6` |
| 12 | `class` | [HasRingHomProperty](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/hasringhomproperty--ad48cec36e1c5ce97c06c938.md) | 256 | `declaration-track:ad48cec36e1c5ce97c06c938fd05ca4d33e98f3a770c445c78224151de3299c1` |
| 13 | `lemma` | [copy](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/copy--1c3705ed6a444ce7357fcee4.md) | 266 | `result-track:1c3705ed6a444ce7357fcee4ffc6fdf4fa2b58ff11a523919892f5d3e8798f7f` |
| 14 | `lemma` | [eq_affineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/eq-affinelocally--ac38d413372d3e967c3c6e6a.md) | 277 | `result-track:ac38d413372d3e967c3c6e6a1ae3430dfee78ea4d22ccd7312e65af0366a8cc1` |
| 15 | `lemma` | [HasAffineProperty](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/hasaffineproperty--05c7063ccf56de42da59c010.md) | 280 | `result-track:05c7063ccf56de42da59c0108b99c7d7a8f4fe39b89e11dda7decb3bc2889fa7` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/instance--55c49a3b651e8547bf4a3da5.md) | 288 | `declaration-track:55c49a3b651e8547bf4a3da5f0ccc9c5fce2092b69bb1ba1648945aa7891eea3` |
| 17 | `theorem` | [appLE](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/apple--26b1d3c71160b9b9cb33602c.md) | 290 | `result-track:26b1d3c71160b9b9cb33602c20697f36098d946c367525822aff9840b2e1fe38` |
| 18 | `theorem` | [appTop](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/apptop--e55fa862db0dc3c71a6dc2e4.md) | 294 | `result-track:e55fa862db0dc3c71a6dc2e4863115a8aac503f2b2127c075e063ea3c32b6b2b` |
| 19 | `theorem` | [comp_of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/comp-of-isopenimmersion--2e4547583e479ab5f3b36e12.md) | 301 | `result-track:2e4547583e479ab5f3b36e12b3185a22b3d082985606ba358cef0d7b4bb41030` |
| 20 | `lemma` | [iff_appLE](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/iff-apple--7db17dd3e212c746be1bccdf.md) | 316 | `result-track:7db17dd3e212c746be1bccdf2067ce8e74c7c50c345229f347019aa64df0ca4a` |
| 21 | `theorem` | [of_source_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/of-source-opencover--d51bca8a0c074ed415387ee8.md) | 319 | `result-track:d51bca8a0c074ed415387ee87eb8ba6fe655050550e7f5ceb0b5156b782dd259` |
| 22 | `theorem` | [iff_of_source_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/iff-of-source-opencover--d650e998cd2459e810060e82.md) | 347 | `result-track:d650e998cd2459e810060e825bb0d2bfb1c9e58194359926c604fc5a28b6c2b6` |
| 23 | `theorem` | [iff_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/iff-of-isaffine--d0b3bf4d966f252a2221b638.md) | 351 | `result-track:d0b3bf4d966f252a2221b63818c277b6acb133b6952de9f91d374316692895ef` |
| 24 | `theorem` | [Spec_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/spec-iff--8cff858e7bd79634e036f09a.md) | 356 | `result-track:8cff858e7bd79634e036f09a77d641f40667529bb6328f480e470974a65e0d9d` |
| 25 | `theorem` | [of_iSup_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/of-isup-eq-top--bbd61dd696ada0506f635ab5.md) | 362 | `result-track:bbd61dd696ada0506f635ab574cd1a40267cc1dc3ac925d627791f142869d79c` |
| 26 | `theorem` | [iff_of_iSup_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/iff-of-isup-eq-top--be38e0041eabe4f01869a28e.md) | 370 | `result-track:be38e0041eabe4f01869a28ee66a6711010347cc1b763f3b93fd62edbd01e216` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/instance--d07364adbe6a66327b13538c.md) | 375 | `declaration-track:d07364adbe6a66327b13538c063afbee9b4f16d4123cd882ceb0930820e38bb9` |
| 28 | `lemma` | [containsIdentities](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/containsidentities--a076317062d53015833dd27b.md) | 383 | `result-track:a076317062d53015833dd27b997e078d99a8b20be66e4f3a26ed3effa51fee34` |
| 29 | `lemma` | [isLocal_ringHomProperty_of_isLocalAtSource_of_isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/islocal-ringhomproperty-of-islocalatsource-of-islocalattarget--3c677a5833ea224e8c5d420d.md) | 393 | `result-track:3c677a5833ea224e8c5d420d65dad0697074fa10b89155d595445ff8053da832` |
| 30 | `lemma` | [of_isLocalAtSource_of_isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/of-islocalatsource-of-islocalattarget--8322227899d37625e39b3655.md) | 427 | `result-track:8322227899d37625e39b36557bfbfe8f9bdbf5c4e03a6f15294f73d343629688` |
| 31 | `lemma` | [stalkwise](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/stalkwise--47b2a92770587223feaac4a7.md) | 451 | `result-track:47b2a92770587223feaac4a74fb4b8dae9c5bc50eca5f45a375df938fde7d302` |
| 32 | `lemma` | [stableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/stableundercomposition--3965ffae894d901d23a157f4.md) | 459 | `result-track:3965ffae894d901d23a157f41448f6f2f1fc3e903e894c8d2ce48c77c568946d` |
| 33 | `theorem` | [of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/of-comp--1d5935da33366b0482ddc548.md) | 481 | `result-track:1d5935da33366b0482ddc54833840cb8983b9f61e025d75e9467825c4a20da0d` |
| 34 | `lemma` | [isMultiplicative](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/ismultiplicative--c70420f50e94b1ebd531b03d.md) | 507 | `result-track:c70420f50e94b1ebd531b03db6ecdde24b90300e69ec4762e627b8c39eaccaae` |
| 35 | `lemma` | [of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/of-isopenimmersion--c4b3b3ecd5d7efaf8af78be5.md) | 514 | `result-track:c4b3b3ecd5d7efaf8af78be56428898c063f6e06263ad363ac384271ce2e1949` |
| 36 | `lemma` | [isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/isstableunderbasechange--f9f4ab585d38459254c448ec.md) | 518 | `result-track:f9f4ab585d38459254c448ec6d76b3a8b76122f3c9931759571a1e80dfd0b2fb` |
| 37 | `lemma` | [respects_isOpenImmersion_aux](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/respects-isopenimmersion-aux--96275c8b2accc7155850a810.md) | 536 | `result-track:96275c8b2accc7155850a81019514088043365e3a782434cf841b3e3bd6cbf0b` |
| 38 | `lemma` | [respects_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/respects-isopenimmersion--c686d488d7d4dc61db3e9076.md) | 575 | `result-track:c686d488d7d4dc61db3e90765caa19ae3f511c475bb8a9ad3f82c797e7fbfce7` |
| 39 | `lemma` | [iff_exists_appLE_locally](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/iff-exists-apple-locally--69ea3485f7af25e95e971cd0.md) | 592 | `result-track:69ea3485f7af25e95e971cd0979c1f16cda8963fdd62a16618ca8cba5904b524` |
| 40 | `lemma` | [iff_exists_appLE](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/iff-exists-apple--114b63aec381f84161a2bb4f.md) | 623 | `result-track:114b63aec381f84161a2bb4fc58a7cf16649971e20b2a3585b7ca0293d72059b` |
| 41 | `lemma` | [locally_of_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/locally-of-iff--f5ceeaa3331d1d927ce8fd31.md) | 640 | `result-track:f5ceeaa3331d1d927ce8fd3122ea80faecee169df3dfe596d72d3f90101fd1f7` |
| 42 | `lemma` | [of_stalkMap](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/of-stalkmap--82dcac0f748475767d365600.md) | 654 | `result-track:82dcac0f748475767d3656007691599d94011241bd935b0d1f5e513960057931` |
| 43 | `lemma` | [stalkMap](../../../../../mathematics/Geometry/AlgebraicGeometry/RingHomProperties/Variant8ee06ac8bafd1fe8139a6ee3484f1c4e616a84611453a0bf745584fe945ece0e.lean/declarations/stalkmap--7cf89e3c7b438037af1bad6e.md) | 686 | `result-track:7cf89e3c7b438037af1bad6e08e0306e3a6a05eecec3cd7c2dcc6cc8c01eb49b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
