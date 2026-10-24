# Verification target: GRWTSK.Algebra.Localization.Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f73a584c62807b201936d85bea131ee72c2a31b",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/index.md) · [Full source](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f73a584c62807b201936d85bea131ee72c2a31b`.

Source path: `GRWTSK/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.AsSubring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Maximal.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.RingHom` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iInf_localization_eq_bot](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/iinf-localization-eq-bot--d87aee71ca0930a5cc715a8e.md) | 39 | `result-track:d87aee71ca0930a5cc715a8e192769252d73d1098934e06a12a5e3ddfb0a9f7b` |
| 2 | `theorem` | [iInf_localization_eq_bot](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/iinf-localization-eq-bot--89fd1ca51fb1f2d3145e7b3a.md) | 64 | `result-track:89fd1ca51fb1f2d3145e7b3a9b848b3aa476600c719711be1b1ce89a3a6e9a73` |
| 3 | `abbrev` | [PiLocalization](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/pilocalization--ed775ecf07f3cd4a742933aa.md) | 74 | `declaration-track:ed775ecf07f3cd4a742933aa6af8d54233b55371640ce7dbb32cafb245f9d2e1` |
| 4 | `def` | [toPiLocalization](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/topilocalization--6ba0765a1c7a248031d7879a.md) | 78 | `declaration-track:6ba0765a1c7a248031d7879ae79a3b85fb18bd1f25d3ef197a6b40308e809443` |
| 5 | `theorem` | [toPiLocalization_injective](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/topilocalization-injective--5d64e6c31b03175d277ca3ae.md) | 80 | `result-track:5d64e6c31b03175d277ca3aea8a80d486f59bbd97ebc51ffaa635a20c036c583` |
| 6 | `theorem` | [toPiLocalization_apply_apply](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/topilocalization-apply-apply--33c5e570ec0262b945e6f59d.md) | 87 | `result-track:33c5e570ec0262b945e6f59db25ebd96ca76cd5214f9a9f1f70556fa69580cef` |
| 7 | `def` | [mapPiLocalization](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/mappilocalization--8718c2e4d07b8c8b41aaa0ed.md) | 93 | `declaration-track:8718c2e4d07b8c8b41aaa0edaa4799c2ac573e002199a441887ba5831e66b922` |
| 8 | `theorem` | [mapPiLocalization_naturality](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/mappilocalization-naturality--ab161c49c351501ca91c7db7.md) | 97 | `result-track:ab161c49c351501ca91c7db7e5adaf70c87d7149a28d76901306d9818bc10f60` |
| 9 | `theorem` | [mapPiLocalization_id](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/mappilocalization-id--83b1678c029e785470cbe6fe.md) | 106 | `result-track:83b1678c029e785470cbe6fed6d97f671cf6aee428dfaaea5d9ff1af157e67d8` |
| 10 | `theorem` | [mapPiLocalization_comp](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/mappilocalization-comp--e65f119e46f80ae686cba945.md) | 109 | `result-track:e65f119e46f80ae686cba94548e003e050c38b2b15647e22f623ca98fb12d81d` |
| 11 | `theorem` | [mapPiLocalization_bijective](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/mappilocalization-bijective--f6f117e7aa70acc15a971f17.md) | 114 | `result-track:f6f117e7aa70acc15a971f17f5e18b9aa3a63b8f94ecf13fefd82bd97357fe46` |
| 12 | `theorem` | [toPiLocalization_not_surjective_of_infinite](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/topilocalization-not-surjective-of-infinite--84c03d2c6b814934dad45d5f.md) | 128 | `result-track:84c03d2c6b814934dad45d5fbf27c8797cd2d861128c9ac8c10ddc8014ba4390` |
| 13 | `theorem` | [finite_of_toPiLocalization_pi_surjective](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/finite-of-topilocalization-pi-surjective--95d530531d344de021f1a482.md) | 146 | `result-track:95d530531d344de021f1a48275cb7266a920f05ca2e968dacedaaf109e125ab2` |
| 14 | `theorem` | [finite_of_toPiLocalization_surjective](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/finite-of-topilocalization-surjective--e7b6a3e7f1c66e11925c07df.md) | 154 | `result-track:e7b6a3e7f1c66e11925c07dfcccf2658520e6f2ec7d76224550124678241d68a` |
| 15 | `abbrev` | [PiLocalization](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/pilocalization--228c0609ad3b8cf20c968da1.md) | 167 | `declaration-track:228c0609ad3b8cf20c968da162c0eafff5658a7861236827f20cb2a5c6dd37cc` |
| 16 | `def` | [toPiLocalization](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/topilocalization--6f6ccc428c6924e30e748108.md) | 171 | `declaration-track:6f6ccc428c6924e30e74810804899a707dba9fb7a33b59ab90fed770fede9361` |
| 17 | `theorem` | [toPiLocalization_injective](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/topilocalization-injective--6a13e0c748c619f9af09ee45.md) | 173 | `result-track:6a13e0c748c619f9af09ee458d0a409f10ad4aee29fba4efc2acbfec37d57fca` |
| 18 | `def` | [piLocalizationToMaximal](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/pilocalizationtomaximal--adc092e84b733b0981a01a7c.md) | 179 | `declaration-track:adc092e84b733b0981a01a7ce04705078183a9002e9c57cacfd615866c4221bf` |
| 19 | `theorem` | [piLocalizationToMaximal_surjective](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/pilocalizationtomaximal-surjective--1b1e7a871e019d26d4f088a1.md) | 183 | `result-track:1b1e7a871e019d26d4f088a165cd2db565de952c9e732cb415ea95576e1aa512` |
| 20 | `def` | [piLocalizationToMaximalEquiv](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/pilocalizationtomaximalequiv--9a8d8bd06eb4acd6d901f7be.md) | 189 | `declaration-track:9a8d8bd06eb4acd6d901f7be76d64ec62712106aa85b3d079f8d8f4b605b301d` |
| 21 | `theorem` | [piLocalizationToMaximal_bijective](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/pilocalizationtomaximal-bijective--e48a4293e2b62e278939b3be.md) | 196 | `result-track:e48a4293e2b62e278939b3be49a2a661efa83d4e075bf8d2cb85326fa9fdbfd8` |
| 22 | `theorem` | [piLocalizationToMaximal_comp_toPiLocalization](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/pilocalizationtomaximal-comp-topilocalization--a35a671b5c273d3d0fe1d6e5.md) | 200 | `result-track:a35a671b5c273d3d0fe1d6e521835c8b624a0f93a6cad2370409c88d86f4e12d` |
| 23 | `theorem` | [isMaximal_of_toPiLocalization_surjective](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/ismaximal-of-topilocalization-surjective--21059f05f27d512d988e37bb.md) | 206 | `result-track:21059f05f27d512d988e37bb7c06a97c3c468a1599d0b6a7c7058bc5014e7b0d` |
| 24 | `def` | [mapPiLocalization](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/mappilocalization--d3fb35660d6debca8e83dc55.md) | 223 | `declaration-track:d3fb35660d6debca8e83dc551f33395d2a07ec7a5d768ca170ee596490d5198e` |
| 25 | `theorem` | [mapPiLocalization_naturality](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/mappilocalization-naturality--6a3da13064c090d09753f106.md) | 226 | `result-track:6a3da13064c090d09753f10663b4b5e28fbf882e5e61027fd2c0d0f299268fb3` |
| 26 | `theorem` | [mapPiLocalization_id](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/mappilocalization-id--c11ee304b7b3504821527de2.md) | 234 | `result-track:c11ee304b7b3504821527de2b9b70d11f233ce5a90241614700e7c3a4f1f5eab` |
| 27 | `theorem` | [mapPiLocalization_comp](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/mappilocalization-comp--7228302dfc24b62235e2e516.md) | 237 | `result-track:7228302dfc24b62235e2e5168a4a9388dcbfc9c581eb6261a80540aa413e51c4` |
| 28 | `theorem` | [mapPiLocalization_bijective](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/mappilocalization-bijective--4547aba6e1c29c2ed26e53a0.md) | 241 | `result-track:4547aba6e1c29c2ed26e53a04617280e151260a4e1100b29f2f1a5b2bef643f8` |
| 29 | `theorem` | [toPiLocalization_not_surjective_of_infinite](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/topilocalization-not-surjective-of-infinite--ad7f403dd534f67f307cf94d.md) | 253 | `result-track:ad7f403dd534f67f307cf94d00f8d78c7ffd2bea403a322997c943ac9b02755b` |
| 30 | `theorem` | [finite_of_toPiLocalization_pi_surjective](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/finite-of-topilocalization-pi-surjective--251eedc579cba4f2e4210f98.md) | 261 | `result-track:251eedc579cba4f2e4210f985bf0d385d072863f2e252d02a86ea1de281bb47c` |
| 31 | `theorem` | [finite_of_toPiLocalization_surjective](../../../../mathematics/Algebra/Localization/Variantfa6211db04dfc85fb0587504a59c75f2e7671ac8d790ca94941d15c0e869a3da.lean/declarations/finite-of-topilocalization-surjective--020864d75c82a4d12b24f9b1.md) | 269 | `result-track:020864d75c82a4d12b24f9b1a9e3e896d18ade5c8e83473472a7dd4bc3aed6fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
