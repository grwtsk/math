# Verification target: GRWTSK.Analysis.MeasureTheory.Measurability.Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f748bc7bf72120c05050a11d8dc6bf2985256f3",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f748bc7bf72120c05050a11d8dc6bf2985256f3`.

Source path: `GRWTSK/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Tactic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.SpecialFunctions.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.SpecialFunctions.Inner` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--3aab29294958bc22b0de9524.md) | 31 | `declaration-track:3aab29294958bc22b0de952433b8a91c8ec7f0a2a1bd5d239a79f4e3c11d2e5e` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--70b8a240e7761679ea764290.md) | 35 | `declaration-track:70b8a240e7761679ea76429069293e1e3dca7820f3c55059276351ee9656af4a` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--fc01e5484fb5d98a943deef0.md) | 39 | `declaration-track:fc01e5484fb5d98a943deef0b1102b28467a238ed4ff99ee6b091d299c4ba72b` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--bae848dff3e01b74a5a5d0c2.md) | 41 | `declaration-track:bae848dff3e01b74a5a5d0c2f1048e1b702e919b555558eae18fd1bc21a4fc7c` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--e2196b189a21fda760bf7fa6.md) | 46 | `declaration-track:e2196b189a21fda760bf7fa69d86f23d6b2894d44b4ead582fb3ad81baf6ba06` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--04f0ad18a29d7542aa17c5aa.md) | 49 | `declaration-track:04f0ad18a29d7542aa17c5aa1b3999e7e81741ede3ebd77c899af9d44bcbd074` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--6db3e283a46a70c071049ea3.md) | 52 | `declaration-track:6db3e283a46a70c071049ea3e6779278f344e92ec9a22a92b0b20d0448ae7da2` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--38b9a4aac2c6908be0cb3ede.md) | 62 | `declaration-track:38b9a4aac2c6908be0cb3ede431e660e86d9ba4a1ca105c62507a411ca4941e6` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--1adfbc3779c42525c8118548.md) | 65 | `declaration-track:1adfbc3779c42525c8118548857a57b0ed096b1f085286a9145e487bcc1a4d7f` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--93192f3f5c4f70f3d6dee572.md) | 68 | `declaration-track:93192f3f5c4f70f3d6dee572984342f50ccaa43a0428116add13c03e3b6095fb` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--c4483fd19564f09af5331d0b.md) | 76 | `declaration-track:c4483fd19564f09af5331d0b2133b37e16086ebd1de66a2a7384f83001c83c9c` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--789bb85d0909fce428070f93.md) | 80 | `declaration-track:789bb85d0909fce428070f9398ebc62e95bbcb4087af74a781cce0212066b0a4` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--7e7b48379a8e1f405a504d08.md) | 83 | `declaration-track:7e7b48379a8e1f405a504d089fa4426657050cc806ddd37718b1e11d0805177d` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--0c5de59cf1d826fe1488c75d.md) | 86 | `declaration-track:0c5de59cf1d826fe1488c75dff506b76ca49ef660513427a70087be3831699a7` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--fd024bc81e200d9d93d0700a.md) | 89 | `declaration-track:fd024bc81e200d9d93d0700ab8394c54c6e0e65442904d35dcbbc661c41d48ed` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--7b77fd51f0cf0f862df473b6.md) | 92 | `declaration-track:7b77fd51f0cf0f862df473b65dc1665b8c915d14c31a5a95e09ec3d6491f7871` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--f01a2a8c6087d2baa3169471.md) | 96 | `declaration-track:f01a2a8c6087d2baa316947184442462c06022f7057134f102802151d754f3d0` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--ce5496929fcea67180eaa780.md) | 101 | `declaration-track:ce5496929fcea67180eaa7803d9bf1ff5b3c64571f809d7d0f53023064fca5d6` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--d962f820619b7fe3e1fba212.md) | 106 | `declaration-track:d962f820619b7fe3e1fba212d39d8b6d952b311c63d9d26b8b63a9159fd5b6af` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--1392793e0489360f647ba7f1.md) | 108 | `declaration-track:1392793e0489360f647ba7f102eff218eeb9299b59d01aea209e571dde4a7f4d` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--5fe5459981f5995793f2ca02.md) | 110 | `declaration-track:5fe5459981f5995793f2ca022852b4d9ebb37b8ec618fa8c62bb95be338d30b5` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--eb4fb9e69e7caaf506b3b7c6.md) | 113 | `declaration-track:eb4fb9e69e7caaf506b3b7c67bb218b4f098999b4b0ee1b3cff918fd91585611` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--2a0c1500a15b22441a579ab6.md) | 116 | `declaration-track:2a0c1500a15b22441a579ab65f10660f0775d1bf5e7ec210cbc63ada0891b9d7` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--c88b28c5a34cc08a066f9795.md) | 119 | `declaration-track:c88b28c5a34cc08a066f9795ea3d01704c72b3dddb7f9fe0fc559e94c253bf0a` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measurability/Variant17090bd4799d4ced4a3afa69d13eb7d245c8384ddd46bf3c5de8f4b59272bbf2.lean/declarations/example--cb44416fe40b783dc99d760d.md) | 124 | `declaration-track:cb44416fe40b783dc99d760dfeeb271f637f44126e0dcac1063bf5dcea3a4723` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
