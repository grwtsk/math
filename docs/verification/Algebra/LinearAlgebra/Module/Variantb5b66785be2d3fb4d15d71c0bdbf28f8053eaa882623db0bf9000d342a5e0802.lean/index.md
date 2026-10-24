# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a0cd504be2562185a9c53ee95916fc308be9926",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a0cd504be2562185a9c53ee95916fc308be9926`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LocalizedModule.IsLocalization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integer` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [span_eq_top_of_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/span-eq-top-of-islocalizedmodule--5f99c5bdc55bf5de30328f7d.md) | 51 | `result-track:5f99c5bdc55bf5de30328f7dc42c63a781cae34e7f147f1df16822a5ea87ad6f` |
| 2 | `theorem` | [LinearIndependent.of_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/linearindependent-of-islocalizedmodule--c01f19ff6f7cd9f3adc8975e.md) | 60 | `result-track:c01f19ff6f7cd9f3adc8975ec7b6aa2452ad1b2798c69bee34f42d63aa9f598b` |
| 3 | `theorem` | [LinearIndependent.of_isLocalizedModule_of_isRegular](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/linearindependent-of-islocalizedmodule-of-isregular--47937d603b157868f85cb8a6.md) | 78 | `result-track:47937d603b157868f85cb8a62c258c233e7b86949ece9648a3da9af027561a1c` |
| 4 | `theorem` | [LinearIndependent.localization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/linearindependent-localization--195627f22c25b8842da8790a.md) | 88 | `result-track:195627f22c25b8842da8790ad8347556d798de7ad42d22eb0890f4ecb0f722fc` |
| 5 | `lemma` | [IsLocalizedModule.linearIndependent_lift](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/islocalizedmodule-linearindependent-lift--b19fbadfa4f8eebf78c4709d.md) | 95 | `result-track:b19fbadfa4f8eebf78c4709d2f5dddfbb5e4ddbecf5ae092162e597178d152ab` |
| 6 | `def` | [Basis.ofIsLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/basis-ofislocalizedmodule--a373141372c111ef0db77af9.md) | 113 | `declaration-track:a373141372c111ef0db77af9a01bcf54937e54935fb6f6592e9f488d2b566f5a` |
| 7 | `theorem` | [Basis.ofIsLocalizedModule_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/basis-ofislocalizedmodule-apply--95feb1c3660b22c2937a0353.md) | 118 | `result-track:95feb1c3660b22c2937a0353b77ae2b469707953149fe0977b10f246a32e4953` |
| 8 | `theorem` | [Basis.ofIsLocalizedModule_repr_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/basis-ofislocalizedmodule-repr-apply--853921a0ba34ff18a89d97a9.md) | 122 | `result-track:853921a0ba34ff18a89d97a906efa40c52a125ab01f460ecf4bbb43925a0d0af` |
| 9 | `theorem` | [Basis.ofIsLocalizedModule_span](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/basis-ofislocalizedmodule-span--24fd8608d21b1cab4f8d9652.md) | 133 | `result-track:24fd8608d21b1cab4f8d9652aeb0d9fdbfae71e2a8b989918832b38d3ba07bfd` |
| 10 | `theorem` | [LinearIndependent.localization_localization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/linearindependent-localization-localization--7fafeb0fd6a3b545b787c5d4.md) | 157 | `result-track:7fafeb0fd6a3b545b787c5d4acbdf3bc1628e4632e3776a73336851da0cbf0dd` |
| 11 | `theorem` | [span_eq_top_localization_localization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/span-eq-top-localization-localization--a319cdf06b41b861fc91466a.md) | 161 | `result-track:a319cdf06b41b861fc91466a7fe68895fd421d9ed8d42ac67bb888647b71c234` |
| 12 | `def` | [Basis.localizationLocalization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/basis-localizationlocalization--619a8cc0e9d4a9f68a998d58.md) | 169 | `declaration-track:619a8cc0e9d4a9f68a998d583d38de479ae2b60ad96eb85f4ee94fb1d65c4914` |
| 13 | `theorem` | [Basis.localizationLocalization_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/basis-localizationlocalization-apply--139c21e633819343a8d3ab82.md) | 173 | `result-track:139c21e633819343a8d3ab827fdf4beb159cafcc23b7a6d23cab1e8c42d48aea` |
| 14 | `theorem` | [Basis.localizationLocalization_repr_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/basis-localizationlocalization-repr-algebramap--60ad735faf52ee8054e9a8e7.md) | 178 | `result-track:60ad735faf52ee8054e9a8e75f808a6d865ad909abc8cee7d318ebff9bd9c885` |
| 15 | `theorem` | [Basis.localizationLocalization_span](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/basis-localizationlocalization-span--4b3883064e82d7390a141586.md) | 182 | `result-track:4b3883064e82d7390a141586a39a2fd1abda1c9dee6711cd3426af1ad4009d82` |
| 16 | `theorem` | [LinearIndependent.iff_fractionRing](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/linearindependent-iff-fractionring--e99b3e0e944ee468550bfe25.md) | 194 | `result-track:e99b3e0e944ee468550bfe25bf03eaecafdf271c6e0a071e7cabe7a2c5d793a4` |
| 17 | `def` | [LinearMap.extendScalarsOfIsLocalization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/linearmap-extendscalarsofislocalization--7513a97d3d6d940c636bf69c.md) | 212 | `declaration-track:7513a97d3d6d940c636bf69c6d4fc0125a5bf4638c3d0a131f6db353e679c07c` |
| 18 | `lemma` | [LinearMap.restrictScalars_extendScalarsOfIsLocalization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/linearmap-restrictscalars-extendscalarsofislocalization--5f4965508f85357d5c44934e.md) | 217 | `result-track:5f4965508f85357d5c44934e82500229ebcef52e2e1d057f9bfe262c40f98fb5` |
| 19 | `lemma` | [LinearMap.extendScalarsOfIsLocalization_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/linearmap-extendscalarsofislocalization-apply--9ce1f123c03b6bfdf8ec17f2.md) | 220 | `result-track:9ce1f123c03b6bfdf8ec17f2aadf3fe297dbc026ae5db0fac8fa3cc8ac3f52a5` |
| 20 | `lemma` | [LinearMap.extendScalarsOfIsLocalization_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/linearmap-extendscalarsofislocalization-apply--8e1ae0c967c506751a9bd3e8.md) | 223 | `result-track:8e1ae0c967c506751a9bd3e8851d4dd14b5a82f83973deae76377cf7777a3522` |
| 21 | `def` | [LinearMap.extendScalarsOfIsLocalizationEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/linearmap-extendscalarsofislocalizationequiv--45d34687bfe5e4dd729eeff0.md) | 228 | `declaration-track:45d34687bfe5e4dd729eeff0b450ce504ef65844ef2ad8847a95c21efd2c8480` |
| 22 | `def` | [LinearEquiv.extendScalarsOfIsLocalization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/linearequiv-extendscalarsofislocalization--45148d5de6046f891d13aeff.md) | 238 | `declaration-track:45148d5de6046f891d13aeff14743402c40bf08eb8cd4944e7cc3d4d515dae29` |
| 23 | `def` | [LinearEquiv.extendScalarsOfIsLocalizationEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/linearequiv-extendscalarsofislocalizationequiv--913935666b9f7dd8dac8660e.md) | 246 | `declaration-track:913935666b9f7dd8dac8660e497403885c7a52bad9850159f922a6c1703e0340` |
| 24 | `def` | [mapExtendScalars](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/mapextendscalars--8a2ab06efd2fef9d088f5ffd.md) | 270 | `declaration-track:8a2ab06efd2fef9d088f5ffd17577dd1a12ef24861d126b347899dba90887ef0` |
| 25 | `def` | [mapEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/mapequiv--f70b8be37b51ce5ca82d80cd.md) | 276 | `declaration-track:f70b8be37b51ce5ca82d80cd6f7507c512e6bae30d40c894fabf2c498e2644d2` |
| 26 | `def` | [LocalizedModule.map](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/localizedmodule-map--6a81a8344cbe9fc3e84c5a95.md) | 299 | `declaration-track:6a81a8344cbe9fc3e84c5a950729b856c171f9cff6e5e78a1fadf3e4b7c00ec9` |
| 27 | `lemma` | [LocalizedModule.map_mk](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/localizedmodule-map-mk--17f605eba1247ca4aeb1d9bc.md) | 305 | `result-track:17f605eba1247ca4aeb1d9bcd72e76714b1d2e0881017ae6df4ed08150444e7a` |
| 28 | `lemma` | [LocalizedModule.map_id](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/localizedmodule-map-id--bfe71b616dc20481896e2e96.md) | 311 | `result-track:bfe71b616dc20481896e2e96eb2017aed64aa8b77c83eca5de7feb46cf5a9700` |
| 29 | `lemma` | [LocalizedModule.map_injective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/localizedmodule-map-injective--5c51295edb24fd0b6265ffa2.md) | 315 | `result-track:5c51295edb24fd0b6265ffa2f37515bfdac1921a5202b75c2346122d10eb1b7a` |
| 30 | `lemma` | [LocalizedModule.map_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/localizedmodule-map-surjective--1869ccf19dd48e5eedaa0760.md) | 319 | `result-track:1869ccf19dd48e5eedaa0760e23803fe87586587de687ffcfe18f759c33dbe18` |
| 31 | `lemma` | [LocalizedModule.restrictScalars_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variantb5b66785be2d3fb4d15d71c0bdbf28f8053eaa882623db0bf9000d342a5e0802.lean/declarations/localizedmodule-restrictscalars-map-eq--180a3aa708f2be2604e3f028.md) | 323 | `result-track:180a3aa708f2be2604e3f02836b1fac7d74c9c3fd908ea59bb5209aabb68b338` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
