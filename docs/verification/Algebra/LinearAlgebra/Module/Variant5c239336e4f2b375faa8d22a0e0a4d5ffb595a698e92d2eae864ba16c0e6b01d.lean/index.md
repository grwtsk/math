# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3d1bcc9a623feffb3b922b20f3b2defcd1185a8",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3d1bcc9a623feffb3b922b20f3b2defcd1185a8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LocalizedModule.IsLocalization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integer` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [span_eq_top_of_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/span-eq-top-of-islocalizedmodule--320d5835c168bad0f2cce737.md) | 43 | `result-track:320d5835c168bad0f2cce7379a4c824b48f754ddad3c3240c05ba2af1966351c` |
| 2 | `theorem` | [LinearIndependent.of_isLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/linearindependent-of-islocalizedmodule--b21e4d44320722ae2eac5aa1.md) | 52 | `result-track:b21e4d44320722ae2eac5aa1070b9ccbcd8537525f357d736944f75f10d88d6e` |
| 3 | `theorem` | [LinearIndependent.of_isLocalizedModule_of_isRegular](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/linearindependent-of-islocalizedmodule-of-isregular--3595979cb26f31fae49ef076.md) | 70 | `result-track:3595979cb26f31fae49ef0764aa5759361e0c50bc51c99232e104a104e90e829` |
| 4 | `theorem` | [LinearIndependent.localization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/linearindependent-localization--7b64c32c525d4bec0aceb30d.md) | 80 | `result-track:7b64c32c525d4bec0aceb30d27770a5ed2d81fee6b31e96618368e77825b0100` |
| 5 | `lemma` | [IsLocalizedModule.linearIndependent_lift](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/islocalizedmodule-linearindependent-lift--a16fd918aa70a96d770ff6f5.md) | 87 | `result-track:a16fd918aa70a96d770ff6f5e3630a0db8bba2e8351db2b5599bb8e621da2de2` |
| 6 | `def` | [Basis.ofIsLocalizedModule](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/basis-ofislocalizedmodule--faa7dd8240aef8506cd6f4fd.md) | 105 | `declaration-track:faa7dd8240aef8506cd6f4fdddb4dcf2a9f7eff066310cc96d1e763041844aeb` |
| 7 | `theorem` | [Basis.ofIsLocalizedModule_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/basis-ofislocalizedmodule-apply--f298bb166c0da22a5c87920f.md) | 110 | `result-track:f298bb166c0da22a5c87920f930e9f1f282b438de07a06947bfc7e7a99a2cbf7` |
| 8 | `theorem` | [Basis.ofIsLocalizedModule_repr_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/basis-ofislocalizedmodule-repr-apply--a2bf9e36bb467651fe65a796.md) | 114 | `result-track:a2bf9e36bb467651fe65a7967c2c984cf9f1b1fc145949615177bb5306c586b5` |
| 9 | `theorem` | [Basis.ofIsLocalizedModule_span](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/basis-ofislocalizedmodule-span--08109295f93fc0055227dcf8.md) | 125 | `result-track:08109295f93fc0055227dcf8ac1ff4de58999bb65318dabe17cdd233026cbd95` |
| 10 | `theorem` | [LinearIndependent.localization_localization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/linearindependent-localization-localization--e4986760b29fcbf3dd7778fd.md) | 149 | `result-track:e4986760b29fcbf3dd7778fd35e977a8dcfa0faf957d300e1fef04491a393534` |
| 11 | `theorem` | [span_eq_top_localization_localization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/span-eq-top-localization-localization--7823e932974920dbbaee0dc9.md) | 153 | `result-track:7823e932974920dbbaee0dc9c0f19edf2f8392f264c86ffb69c7975082e48f99` |
| 12 | `def` | [Basis.localizationLocalization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/basis-localizationlocalization--e49808b8209ff63322ee9e26.md) | 161 | `declaration-track:e49808b8209ff63322ee9e269ef3f729036ac007111a55dd5d4413552411defa` |
| 13 | `theorem` | [Basis.localizationLocalization_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/basis-localizationlocalization-apply--737f9619c8a0c0a07bba083f.md) | 165 | `result-track:737f9619c8a0c0a07bba083f31d4f6c3638e68370bd99f274c5052104515ce53` |
| 14 | `theorem` | [Basis.localizationLocalization_repr_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/basis-localizationlocalization-repr-algebramap--25f5308b68a93338508fcad0.md) | 170 | `result-track:25f5308b68a93338508fcad0cea18efe55097fb75f2e64e16f4ff50b8ab7a7e4` |
| 15 | `theorem` | [Basis.localizationLocalization_span](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/basis-localizationlocalization-span--9edbf8accc518bdc2c113eb6.md) | 174 | `result-track:9edbf8accc518bdc2c113eb61b62b0899c460d1eab32b8b8bfa4653578cd5007` |
| 16 | `theorem` | [LinearIndependent.iff_fractionRing](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/linearindependent-iff-fractionring--ca5c53fe8d2784ed17fd3b4d.md) | 186 | `result-track:ca5c53fe8d2784ed17fd3b4d87cc1ee1cf8c8f3b072a75c697862369ea8701af` |
| 17 | `def` | [LinearMap.extendScalarsOfIsLocalization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/linearmap-extendscalarsofislocalization--3749b89d7f3852013ee0b6de.md) | 204 | `declaration-track:3749b89d7f3852013ee0b6de853cdc020ec6934138c6a63adf1919a1a481a7a1` |
| 18 | `lemma` | [LinearMap.restrictScalars_extendScalarsOfIsLocalization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/linearmap-restrictscalars-extendscalarsofislocalization--e1874598d737fd0869485d84.md) | 209 | `result-track:e1874598d737fd0869485d845ecd4ff5fdf3c4c41ca497523a91c33fff0f2bfe` |
| 19 | `lemma` | [LinearMap.extendScalarsOfIsLocalization_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/linearmap-extendscalarsofislocalization-apply--6cb0aab262b540328266aa0c.md) | 212 | `result-track:6cb0aab262b540328266aa0c6e01264a5a681d16e97898cbf7f1fd2c0cceb08c` |
| 20 | `lemma` | [LinearMap.extendScalarsOfIsLocalization_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/linearmap-extendscalarsofislocalization-apply--e4ada38b561df2e39a7020fb.md) | 215 | `result-track:e4ada38b561df2e39a7020fb2717edb0d24098dacf101a464f68e870722dc35f` |
| 21 | `def` | [LinearMap.extendScalarsOfIsLocalizationEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/linearmap-extendscalarsofislocalizationequiv--2da41119a489d89d6cd059ce.md) | 220 | `declaration-track:2da41119a489d89d6cd059ce87898c5b12f36ce95e97fd25fd666ce94961d69b` |
| 22 | `def` | [LinearEquiv.extendScalarsOfIsLocalization](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/linearequiv-extendscalarsofislocalization--e2bc363de6a64577857eb53d.md) | 230 | `declaration-track:e2bc363de6a64577857eb53d3dfae7fa7f829079338c8f6e2f37cf5f7601732e` |
| 23 | `def` | [LinearEquiv.extendScalarsOfIsLocalizationEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/linearequiv-extendscalarsofislocalizationequiv--baec3edfe69fa942dccecf8d.md) | 238 | `declaration-track:baec3edfe69fa942dccecf8dc8aa69273e77ad9b3c0a8123543f4e72224726cb` |
| 24 | `def` | [mapExtendScalars](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/mapextendscalars--2904f80c2ae3e53341127bff.md) | 262 | `declaration-track:2904f80c2ae3e53341127bffa98f379eba71e3d4b72cc8141559f6a392a7e85d` |
| 25 | `def` | [mapEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/mapequiv--5005b4f6cd02ff851b3aecca.md) | 268 | `declaration-track:5005b4f6cd02ff851b3aecca8947c6a2b2e1eed5da16ea7bedbf864cfeb6a89c` |
| 26 | `def` | [LocalizedModule.map](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/localizedmodule-map--8b7f1dc496825aed6ab4bcc9.md) | 291 | `declaration-track:8b7f1dc496825aed6ab4bcc90d9bde79a3c9d8b7f584ef2a6911ac19e6661129` |
| 27 | `lemma` | [LocalizedModule.map_mk](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/localizedmodule-map-mk--dab7f485df6c5ec7c78ed54a.md) | 297 | `result-track:dab7f485df6c5ec7c78ed54af30172d0830550ca5be92a1815bd250ec8dfe5fe` |
| 28 | `lemma` | [LocalizedModule.map_id](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/localizedmodule-map-id--513cfaa1836f3b92202ec3b1.md) | 303 | `result-track:513cfaa1836f3b92202ec3b1adaed3796e3cb40f3d103a8277e7b59ab73e2701` |
| 29 | `lemma` | [LocalizedModule.map_injective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/localizedmodule-map-injective--e108fbd249b0c0cac65b2dd1.md) | 307 | `result-track:e108fbd249b0c0cac65b2dd1189243f57a6901353504488d9bcf4a58d342284a` |
| 30 | `lemma` | [LocalizedModule.map_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/localizedmodule-map-surjective--15d0799fc59321f429e34538.md) | 311 | `result-track:15d0799fc59321f429e34538722ce159245913f4321f6f3a0ed37db59efdfc83` |
| 31 | `lemma` | [LocalizedModule.restrictScalars_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant5c239336e4f2b375faa8d22a0e0a4d5ffb595a698e92d2eae864ba16c0e6b01d.lean/declarations/localizedmodule-restrictscalars-map-eq--f5bd690cade1125931938f70.md) | 315 | `result-track:f5bd690cade1125931938f700b451fc6979c10a9ec746e72d09bfbb6e992b7cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
