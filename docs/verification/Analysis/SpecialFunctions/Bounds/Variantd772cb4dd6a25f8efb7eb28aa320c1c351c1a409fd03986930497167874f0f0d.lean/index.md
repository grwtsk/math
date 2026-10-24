# Verification target: GRWTSK.Analysis.SpecialFunctions.Bounds.Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8d9247e6198c17085242df297c99d3c8c524723",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8d9247e6198c17085242df297c99d3c8c524723`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pi_gt_sqrtTwoAddSeries](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean/declarations/pi-gt-sqrttwoaddseries--a2fa7f065fe4dde50bab315c.md) | 32 | `result-track:a2fa7f065fe4dde50bab315cce5ecd634336a3b1c4bd4d2d5f64641438fd480f` |
| 2 | `theorem` | [pi_lt_sqrtTwoAddSeries](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean/declarations/pi-lt-sqrttwoaddseries--b8a21c9f108982077a062f3d.md) | 42 | `result-track:b8a21c9f108982077a062f3dba7f73766c079d69518ea4a6a045519f639a398e` |
| 3 | `theorem` | [pi_lower_bound_start](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean/declarations/pi-lower-bound-start--f0db9b9b309b13b49e9c5e54.md) | 65 | `result-track:f0db9b9b309b13b49e9c5e54dbe2f8ca426c0ec43c8f314421c69d643bc85397` |
| 4 | `theorem` | [sqrtTwoAddSeries_step_up](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean/declarations/sqrttwoaddseries-step-up--5758589c20c7e07ec0047c07.md) | 72 | `result-track:5758589c20c7e07ec0047c070ac67ae62285aed4897d7cbeb6c2eb42328f6760` |
| 5 | `theorem` | [pi_upper_bound_start](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean/declarations/pi-upper-bound-start--414edc73e0d340b12d70a14b.md) | 85 | `result-track:414edc73e0d340b12d70a14bad134b5e0e9c9534adc7d9c717a44370c36e2511` |
| 6 | `theorem` | [sqrtTwoAddSeries_step_down](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean/declarations/sqrttwoaddseries-step-down--a820a4f43ed82b445ee80ead.md) | 95 | `result-track:a820a4f43ed82b445ee80eade6ad7c8d2b151e8653905226d61be90fe214b63d` |
| 7 | `elab` | [(anonymous)](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean/declarations/elab--12ea70c2d0d8be052ff94b24.md) | 112 | `declaration-track:12ea70c2d0d8be052ff94b2486bdffe0a6aa494201e7386d6785c9350d4d6f77` |
| 8 | `elab` | [(anonymous)](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean/declarations/elab--988066635af21845f7c4d2b2.md) | 125 | `declaration-track:988066635af21845f7c4d2b288166e71eab3536124fa9104fd840672300d3d0a` |
| 9 | `theorem` | [pi_gt_three](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean/declarations/pi-gt-three--59250cdb5ac166ad1aa8f328.md) | 159 | `result-track:59250cdb5ac166ad1aa8f328535fa971ffc57dd93f09f1f4407bbe8e28ffbffb` |
| 10 | `theorem` | [pi_lt_four](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean/declarations/pi-lt-four--966389ab7862b2762b59e1d1.md) | 163 | `result-track:966389ab7862b2762b59e1d1bdceae7f9ca9b564f0a92c64db77b731ea3d863d` |
| 11 | `theorem` | [pi_gt_d2](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean/declarations/pi-gt-d2--12b4171f764802d9bf0acdc4.md) | 167 | `result-track:12b4171f764802d9bf0acdc4964b8b28c90a5f0f99ddc9d196eaba87af44289f` |
| 12 | `theorem` | [pi_lt_d2](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean/declarations/pi-lt-d2--1da9f9bd5a69d7f75ccfc548.md) | 171 | `result-track:1da9f9bd5a69d7f75ccfc548d54824ba2d471c841b7027241f17052dbe031716` |
| 13 | `theorem` | [pi_gt_d4](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean/declarations/pi-gt-d4--4dd22f3fbf07d599aa2238f5.md) | 175 | `result-track:4dd22f3fbf07d599aa2238f590d9e7786edce05bdd2de81c455157ec73692014` |
| 14 | `theorem` | [pi_lt_d4](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean/declarations/pi-lt-d4--4d00f089f396c655aa9e4c76.md) | 180 | `result-track:4d00f089f396c655aa9e4c76c061d4ad29997a5a58ba67255bc895aa17e16dca` |
| 15 | `theorem` | [pi_gt_d6](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean/declarations/pi-gt-d6--6201437f094b01e62bc3f86e.md) | 186 | `result-track:6201437f094b01e62bc3f86e9c8ea8b1488b0cd9a137cd843c58234ecb1fb1f2` |
| 16 | `theorem` | [pi_lt_d6](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean/declarations/pi-lt-d6--ac2cfcf4dafbe9a905b94ec7.md) | 192 | `result-track:ac2cfcf4dafbe9a905b94ec725e7d2e4039e8a142dfc1f6fa3aeb9a2e096fa3e` |
| 17 | `theorem` | [pi_gt_d20](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean/declarations/pi-gt-d20--8b2e67b989c3a68505322141.md) | 198 | `result-track:8b2e67b989c3a68505322141e837070b4e28364880112d04e71987c830788ce0` |
| 18 | `theorem` | [pi_lt_d20](../../../../../mathematics/Analysis/SpecialFunctions/Bounds/Variantd772cb4dd6a25f8efb7eb28aa320c1c351c1a409fd03986930497167874f0f0d.lean/declarations/pi-lt-d20--2c7346d4d96cb4b1e651f0bf.md) | 214 | `result-track:2c7346d4d96cb4b1e651f0bf111f571aa9a6af6e7d19a661a3e5f513fbc46062` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
