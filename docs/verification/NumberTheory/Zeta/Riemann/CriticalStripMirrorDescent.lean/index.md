# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMirrorDescent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8954ac694ac5a170c4636154aa5e87851d760a71",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8954ac694ac5a170c4636154aa5e87851d760a71`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripHeightDescent`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripHeightDescent.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.ZetaZeros` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [windowZeroLocations](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/declarations/windowzerolocations--58dab870e507075f9b41a43f.md) | 28 | `declaration-track:58dab870e507075f9b41a43facae87ee838fc13a7fd44ee62897f73c16ee9f01` |
| 2 | `theorem` | [windowZeroLocations_finite](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/declarations/windowzerolocations-finite--76a6615e86208aac4df9f980.md) | 33 | `result-track:76a6615e86208aac4df9f980c412f7389e01b27f403612c55b7f43f0915deb05` |
| 3 | `def` | [CompleteWindowLocationList](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/declarations/completewindowlocationlist--05f736fbdc0cbff7da3a6cbb.md) | 51 | `declaration-track:05f736fbdc0cbff7da3a6cbbc21135026837aae3ffc83dfa3c8271d4aaeb0c4b` |
| 4 | `theorem` | [exists_completeWindowLocationList](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/declarations/exists-completewindowlocationlist--2a2b2b05d09626d11410fc42.md) | 56 | `result-track:2a2b2b05d09626d11410fc42a907b08d06c91df4f99c48282c0dda944169fc96` |
| 5 | `theorem` | [windowRH_iff_complete_list](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/declarations/windowrh-iff-complete-list--a5a12d1b30215944e3ab43a9.md) | 65 | `result-track:a5a12d1b30215944e3ab43a9f899a46fb2ad55bc66ac3a8d84d5240e92142a98` |
| 6 | `theorem` | [root_height_zeroConjugate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/declarations/root-height-zeroconjugate--ffed96df41e0502a6c23d483.md) | 75 | `result-track:ffed96df41e0502a6c23d4836e03792dcf2d00b0658d175ed04325cf2d68d752` |
| 7 | `theorem` | [root_height_criticalReflection](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/declarations/root-height-criticalreflection--743fbd679200891d571605e0.md) | 81 | `result-track:743fbd679200891d571605e0c11e5be20715a6e9de4a08df569d3bc48a400e21` |
| 8 | `def` | [upperHeightShell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/declarations/upperheightshell--9f81f90ece5864f2cb64c24f.md) | 88 | `declaration-track:9f81f90ece5864f2cb64c24f9fd3bea63c2c78acd8f577b59cbc6fe7cc1932b5` |
| 9 | `theorem` | [shellRH_iff_upperHeightShell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/declarations/shellrh-iff-upperheightshell--63f5569ce5f4498a8536b70a.md) | 94 | `result-track:63f5569ce5f4498a8536b70aeecd99ec4cae43dd06a1d0ff74b5a663624d8c52` |
| 10 | `def` | [upperRightHeightShell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/declarations/upperrightheightshell--89dc320b27babe4160192e3a.md) | 119 | `declaration-track:89dc320b27babe4160192e3a6c8bf341a49978e60f233c9e3491960f3bedfa93` |
| 11 | `def` | [NoTargetZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/declarations/notargetzero--d6da1f2d87684b68ce29adbb.md) | 124 | `declaration-track:d6da1f2d87684b68ce29adbb07dafca06867e7bc6028e45734eab3e6cb7580c4` |
| 12 | `theorem` | [upperHeightShellRH_iff_right_exclusion](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/declarations/upperheightshellrh-iff-right-exclusion--1a4ef866e4caac21428ca9f1.md) | 129 | `result-track:1a4ef866e4caac21428ca9f101d050cc248827b2ae8c0abfc4943d74b1e75334` |
| 13 | `theorem` | [shellRH_iff_upperRight_exclusion](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/declarations/shellrh-iff-upperright-exclusion--be437f3ada4a0ef2572280e2.md) | 155 | `result-track:be437f3ada4a0ef2572280e2fcd7201296b10df35ae87ae25d1528cff588faa3` |
| 14 | `def` | [rightAwayShell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/declarations/rightawayshell--b36811627108eeb212bcec50.md) | 161 | `declaration-track:b36811627108eeb212bcec507f1ca3483d12acf9fa4e0c4b243251c2ec330a2d` |
| 15 | `theorem` | [rightAwayShell_re_lt_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/declarations/rightawayshell-re-lt-one--444672b42d71067bb2353655.md) | 167 | `result-track:444672b42d71067bb2353655adfe48dafa35a7617a9b72e273d39b40820cdebb` |
| 16 | `theorem` | [right_exclusion_iff_all_away](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/declarations/right-exclusion-iff-all-away--4f0ea5a974de4a5ec86ede63.md) | 174 | `result-track:4f0ea5a974de4a5ec86ede63b62d900f4f3af683b4c41658fcf037493ebebb7a` |
| 17 | `theorem` | [base_and_rightAwayShells_iff_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/declarations/base-and-rightawayshells-iff-rh--e0b625ac84e22f62bda7bba2.md) | 191 | `result-track:e0b625ac84e22f62bda7bba26353f039ec41a0d26fb12d8c740525395a4c130e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
