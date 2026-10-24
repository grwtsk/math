# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPrimePowerSelector

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "837dc4fdf2f9d2b988795bd3a25504a464226197",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `837dc4fdf2f9d2b988795bd3a25504a464226197`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtCoefficientSource`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedVonMangoldtCoefficientSource.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Nat.Factorization.PrimePow` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Infinite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_primePower_gt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/declarations/exists-primepower-gt--2f2ecfc173dcbd85ae44914f.md) | 33 | `result-track:2f2ecfc173dcbd85ae44914fd3cfa61e2d504065d00a41c4b3b1115d419ce9ad` |
| 2 | `def` | [nextPrimePowerValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/declarations/nextprimepowervalue--b8653d83da66eec691b32240.md) | 39 | `declaration-track:b8653d83da66eec691b3224049d86f3da23f532012851db838f5648021d80c63` |
| 3 | `theorem` | [nextPrimePowerValue_gt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/declarations/nextprimepowervalue-gt--d8d0a8a1b1b2ced22dbca80b.md) | 42 | `result-track:d8d0a8a1b1b2ced22dbca80b187f5de499538c8b2dad73eb45a9d9fe636ca2c5` |
| 4 | `theorem` | [nextPrimePowerValue_isPrimePow](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/declarations/nextprimepowervalue-isprimepow--1b3056d85b979d8ed1454702.md) | 46 | `result-track:1b3056d85b979d8ed14547024e3e6ea6416b1aad7ea37ffadc3abf327639fbb4` |
| 5 | `theorem` | [nextPrimePowerValue_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/declarations/nextprimepowervalue-le--4bfceae1f330ce2d79c2696d.md) | 52 | `result-track:4bfceae1f330ce2d79c2696d19e63ca96d559dc3e8f0e0070d16b10675ce913d` |
| 6 | `def` | [canonicalPrimePowerEvent](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/declarations/canonicalprimepowerevent--a09aff49c58c82e9616ea18d.md) | 58 | `declaration-track:a09aff49c58c82e9616ea18deeca052ac1656fe53c030cb8bff8230e91f0037d` |
| 7 | `theorem` | [canonicalPrimePowerEvent_natValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/declarations/canonicalprimepowerevent-natvalue--d3e09cafa1df33c8d4627a7e.md) | 70 | `result-track:d3e09cafa1df33c8d4627a7e32a8adeed656426789fd2ee5ef9d77aca263a51b` |
| 8 | `theorem` | [primePowerEvent_representation_unique](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/declarations/primepowerevent-representation-unique--37d2372acc4768b085385046.md) | 78 | `result-track:37d2372acc4768b085385046c49ef60da5864f826638f3be6755677631ec1821` |
| 9 | `def` | [nextPrimePowerEvent](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/declarations/nextprimepowerevent--b1855432a67a1e93dad4ff96.md) | 97 | `declaration-track:b1855432a67a1e93dad4ff96753c853bc546432ec9849d6265d5e72a5ea9881f` |
| 10 | `theorem` | [nextPrimePowerEvent_natValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/declarations/nextprimepowerevent-natvalue--ac3b297f74cac6fd90252290.md) | 102 | `result-track:ac3b297f74cac6fd90252290dbf688db7d9dbfb9b1a1f17efd3da486b2f9dc7e` |
| 11 | `theorem` | [nextPrimePowerEvent_gt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/declarations/nextprimepowerevent-gt--5ca714c95fbe3711bdaac933.md) | 106 | `result-track:5ca714c95fbe3711bdaac93364134ef9a9fecd8419c6b918ca80690a2c55fa13` |
| 12 | `def` | [canonicalPrimePowerValueSequence](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/declarations/canonicalprimepowervaluesequence--77a33b38ba48c9da582c1475.md) | 113 | `declaration-track:77a33b38ba48c9da582c14752c21ea2b1767e2c2dc91e0618edbb6362376c482` |
| 13 | `theorem` | [canonicalPrimePowerValueSequence_isPrimePow](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/declarations/canonicalprimepowervaluesequence-isprimepow--b4d85c86608e3cf0c2090a51.md) | 117 | `result-track:b4d85c86608e3cf0c2090a51faac497a3aae078769a304c3a9cf0603b6f0e435` |
| 14 | `theorem` | [canonicalPrimePowerValueSequence_strict](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/declarations/canonicalprimepowervaluesequence-strict--6ba84be8e52fdd13d2c7eb80.md) | 123 | `result-track:6ba84be8e52fdd13d2c7eb8018222a1058faa5d927053946a9b87eebf30816cc` |
| 15 | `theorem` | [canonicalPrimePowerValueSequence_next_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/declarations/canonicalprimepowervaluesequence-next-le--419b1c47747b446caf90eaed.md) | 131 | `result-track:419b1c47747b446caf90eaedf65803e58657dfe48373b62aff4000cfd6c83708` |
| 16 | `def` | [canonicalPrimePowerEventSequence](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/declarations/canonicalprimepowereventsequence--33c694f4742e25dbecde9009.md) | 140 | `declaration-track:33c694f4742e25dbecde90091c8be65798e052bf788ae37decb438c21ae62a7f` |
| 17 | `theorem` | [canonicalPrimePowerEventSequence_natValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/declarations/canonicalprimepowereventsequence-natvalue--7e9201312482a11ec3f425eb.md) | 146 | `result-track:7e9201312482a11ec3f425eb4a3c9ad78749473db8e94b86374eabc7f80038d3` |
| 18 | `theorem` | [canonicalPrimePowerEventSequence_strict](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/declarations/canonicalprimepowereventsequence-strict--d47301e7cc5316a11ddbdcbe.md) | 151 | `result-track:d47301e7cc5316a11ddbdcbe755156f0831259f6b23140e32473196bb9256b7a` |
| 19 | `def` | [canonicalPrimePowerPackingPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPrimePowerSelector.lean/declarations/canonicalprimepowerpackingpoint--28e41e4d3e2a3db73ac411a0.md) | 158 | `declaration-track:28e41e4d3e2a3db73ac411a064ccdcec020051595c1d932935db6cc53cadb6bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
