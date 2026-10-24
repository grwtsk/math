# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMirrorIsolation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53b67910db11d6614bf43ba63f5aa1fca62e9263",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53b67910db11d6614bf43ba63f5aa1fca62e9263`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripDerivativeIsolation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripDerivativeIsolation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPolePatch`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPolePatch.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.Complex.Convex` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MirrorStable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/declarations/mirrorstable--3aaec5de94e9a08dd8fd4875.md) | 25 | `declaration-track:3aaec5de94e9a08dd8fd48755633c54c9b1c6ebb3169131026f280286b81697e` |
| 2 | `def` | [AtMostOneTarget](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/declarations/atmostonetarget--7b6061cfe64a38128176ec28.md) | 27 | `declaration-track:7b6061cfe64a38128176ec281fb0c7456e83205f12dc068b89586930cf55052a` |
| 3 | `lemma` | [mirror_fixed_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/declarations/mirror-fixed-iff--baba6aeb21fab51ed781e895.md) | 30 | `result-track:baba6aeb21fab51ed781e895e5576f410a1e96c1124d7f9f62cca39f1ecce9d5` |
| 4 | `lemma` | [target_capacity_of_source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/declarations/target-capacity-of-source--1f514c2e8366ab73c4d47bdb.md) | 42 | `result-track:1f514c2e8366ab73c4d47bdb3ab7af670dd6300ca970eaf81c1da418017ba0b0` |
| 5 | `theorem` | [rhOn_of_mirror_capacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/declarations/rhon-of-mirror-capacity--cd66932e80fde9f374b16592.md) | 48 | `result-track:cd66932e80fde9f374b16592216734c652284e08759b41858480d7de61e12c72` |
| 6 | `theorem` | [rhOn_of_derivative_disk](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/declarations/rhon-of-derivative-disk--4a47da83619787f6dd23e86a.md) | 54 | `result-track:4a47da83619787f6dd23e86a527de920a3d1464746621fd5cd57fc806a2c6432` |
| 7 | `lemma` | [norm_mirror_displacement](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/declarations/norm-mirror-displacement--b3e365dd7bd6252e3cd8c989.md) | 60 | `result-track:b3e365dd7bd6252e3cd8c989ac04e670334b36f6ed24a2d28655fdfbaf456ca2` |
| 8 | `theorem` | [mirror_source_separation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/declarations/mirror-source-separation--1888c693c6160863a0322ec7.md) | 71 | `result-track:1888c693c6160863a0322ec74f1993377b0207bf6ab073ef7a59839be5f0cee1` |
| 9 | `theorem` | [no_derivative_disk_at_offline_target](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/declarations/no-derivative-disk-at-offline-target--cfe9078b71edd2a6062c6ac5.md) | 78 | `result-track:cfe9078b71edd2a6062c6ac5e96265257e24b4963d18fbdd6b775d1b12b585db` |
| 10 | `def` | [mirrorBox](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/declarations/mirrorbox--747db7baabefe80dc4ecbaf0.md) | 85 | `declaration-track:747db7baabefe80dc4ecbaf0494503b411f09e4c83f7ce61767c0b5b5e920fdc` |
| 11 | `lemma` | [mirrorBox_stable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/declarations/mirrorbox-stable--e66b282a57c497f7e6ccb9cb.md) | 88 | `result-track:e66b282a57c497f7e6ccb9cb2df0ffd117d09ff42cffafea1a0fdaa45eb8939e` |
| 12 | `lemma` | [mirrorBox_convex](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/declarations/mirrorbox-convex--5a6c5f4fbe990235cc7dbe3d.md) | 98 | `result-track:5a6c5f4fbe990235cc7dbe3dd0722cbf10194dd212ae931e3c0fcd7af2c33859` |
| 13 | `lemma` | [mirrorBox_nonempty](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/declarations/mirrorbox-nonempty--691bd739476c671303223735.md) | 105 | `result-track:691bd739476c6713032237358d0fbbca264075e8d47442a309409886d84409ca` |
| 14 | `structure` | [ZeroPermittingCover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/declarations/zeropermittingcover--7f31fdbe0ad9a05a39042a2b.md) | 114 | `declaration-track:7f31fdbe0ad9a05a39042a2b0a3950443cee891b4307bd9070e47438da0c8844` |
| 15 | `theorem` | [rhOn](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/declarations/rhon--f07f00aab4a98418985b7b62.md) | 126 | `result-track:f07f00aab4a98418985b7b62c5a441d5ed3f12b1903b181c9724d83ee5812f4f` |
| 16 | `def` | [restrict](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/declarations/restrict--535f1a663f0872bcd0851dd7.md) | 133 | `declaration-track:535f1a663f0872bcd0851dd7a8ece77a3489946d296a826cc631d5a9d2b507c5` |
| 17 | `theorem` | [noTargetZero_of_count_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMirrorIsolation.lean/declarations/notargetzero-of-count-zero--28fa56985f0e79adb34b1e6a.md) | 143 | `result-track:28fa56985f0e79adb34b1e6a9cfcf6eddc9428ef3e3ff5916206b8556b1f8fdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
