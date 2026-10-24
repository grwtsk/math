# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RationalPolePatch

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd6ac991c5f07a1438648fe7531882670b787c45",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalPolePatch.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPolePatch.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPolePatch.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd6ac991c5f07a1438648fe7531882670b787c45`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RationalPolePatch.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RationalPolePatch.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PoleNormalizedContourBounds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleNormalizedContourBounds.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleNormalizedJet`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPoleNormalizedJet.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sampleLower](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPolePatch.lean/declarations/samplelower--a13b3f15d2a2b4fa486ec239.md) | 26 | `declaration-track:a13b3f15d2a2b4fa486ec239bba3fac92ac5140107ff833dfb5b58beaa8cfbb8` |
| 2 | `def` | [leftMargin](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPolePatch.lean/declarations/leftmargin--4cd0a394c75c809e22c6d311.md) | 28 | `declaration-track:4cd0a394c75c809e22c6d311b95078a30194e8ba6a38b75445cdbf63ae4985ad` |
| 3 | `def` | [sizeBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPolePatch.lean/declarations/sizebound--7d59ca1d327d84f30e1f2aee.md) | 30 | `declaration-track:7d59ca1d327d84f30e1f2aeedfe21c2b4f30ef83b0060759b0ea930a404e7545` |
| 4 | `def` | [factorBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPolePatch.lean/declarations/factorbound--4beb6e01423ecb300f106e6b.md) | 32 | `declaration-track:4beb6e01423ecb300f106e6b9f33e5ec8c9326a90de5f39caaf0c407fbb7d09c` |
| 5 | `def` | [sourceBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPolePatch.lean/declarations/sourcebound--5a1f227dc49447afd522da80.md) | 34 | `declaration-track:5a1f227dc49447afd522da80380fbca54c3de2d050d973963de66510b44ca8ee` |
| 6 | `def` | [slopeBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPolePatch.lean/declarations/slopebound--bf211efe8e13adb09a9b7128.md) | 37 | `declaration-track:bf211efe8e13adb09a9b71284488953b71897df2f7d5aca22f22b6e66dcddaa0` |
| 7 | `def` | [Valid](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPolePatch.lean/declarations/valid--1f7d64137ad8ba6cbcb7c5f4.md) | 39 | `declaration-track:1f7d64137ad8ba6cbcb7c5f4851407c6c9b42040b3c7a1826a9f714e08be8b61` |
| 8 | `instance` | [validDecidable](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPolePatch.lean/declarations/validdecidable--205f74357d7e48b3c89c1b20.md) | 43 | `declaration-track:205f74357d7e48b3c89c1b2098b08d3c6306d24d024f8c242040386f2c934a24` |
| 9 | `def` | [check](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPolePatch.lean/declarations/check--b2573c66f15f14f8f22875ca.md) | 47 | `declaration-track:b2573c66f15f14f8f22875ca5ff26c8afc799a4d939fd2bc56a64484fd9512d2` |
| 10 | `theorem` | [check_iff_valid](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPolePatch.lean/declarations/check-iff-valid--8d5684e4fb07613756dfc04a.md) | 49 | `result-track:8d5684e4fb07613756dfc04a37b769d5b791373924fac7cea8e905fab4fb1b0e` |
| 11 | `theorem` | [sampleLower_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPolePatch.lean/declarations/samplelower-le--d92ae139e4de764529deeb0d.md) | 52 | `result-track:d92ae139e4de764529deeb0d585fc4b2567b8776c28a16115b780b7c29ac9342` |
| 12 | `def` | [patchOfCheck](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPolePatch.lean/declarations/patchofcheck--886f92aec94c9fdeb8b54919.md) | 63 | `declaration-track:886f92aec94c9fdeb8b54919c3bce054f4d11396acd142d4151e00b240e831b4` |
| 13 | `theorem` | [check_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPolePatch.lean/declarations/check-sound--6fb48de6333003e8fae5d911.md) | 94 | `result-track:6fb48de6333003e8fae5d9112dbc17c7548679296b86a4a9ffbfa8b1c346c1f1` |
| 14 | `theorem` | [assembled_patch_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPolePatch.lean/declarations/assembled-patch-sound--bfa08a962e82475686769798.md) | 101 | `result-track:bfa08a962e82475686769798c19c02fa87b808cfe15a19475fb415b4cf443f47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
