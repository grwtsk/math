# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedWienerSmoothIntervalBrackets

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5830184b9c03d227551b941d0ba64962457ba6bb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5830184b9c03d227551b941d0ba64962457ba6bb`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedWienerIkeharaRelativeWindowToFull`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerIkeharaRelativeWindowToFull.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Geometry.Manifold.PartitionOfUnity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pinnedSmoothUrysohnIoo](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean/declarations/pinnedsmoothurysohnioo--bebb944b20b517292a0cfdfa.md) | 60 | `result-track:bebb944b20b517292a0cfdfa00b1e2850841818b737dcbb380a37d652f5aeda9` |
| 2 | `theorem` | [pinnedIntervalSupport_closure_away](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean/declarations/pinnedintervalsupport-closure-away--afc4ea742421fda909af679f.md) | 116 | `result-track:afc4ea742421fda909af679fe0be570dcff0b1f8ecc0f19304e9cf5f141fa3a6` |
| 3 | `def` | [PinnedSmoothIntervalBrackets](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean/declarations/pinnedsmoothintervalbrackets--b2d8cded2dc36147ca9f861d.md) | 131 | `declaration-track:b2d8cded2dc36147ca9f861d23a742daa71de859a10419fdad5755c71acee69f` |
| 4 | `theorem` | [pinnedSmoothIntervalLower](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean/declarations/pinnedsmoothintervallower--adf407f2276405fe33b34ce1.md) | 149 | `result-track:adf407f2276405fe33b34ce1ee262453bc55ccb6ccd1482c67183a75b7c59db0` |
| 5 | `theorem` | [pinnedSmoothIntervalUpper](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean/declarations/pinnedsmoothintervalupper--9ee97cc6b23430cd94bc56df.md) | 224 | `result-track:9ee97cc6b23430cd94bc56dffa7099042280e8c3097b35be95ada6af6d35b868` |
| 6 | `theorem` | [pinnedSmoothIntervalBrackets_exists](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothIntervalBrackets.lean/declarations/pinnedsmoothintervalbrackets-exists--d73a0c38675c092838666500.md) | 297 | `result-track:d73a0c38675c092838666500dd4f4a33003fcdca97fe9a42b821d009d93ea4cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
