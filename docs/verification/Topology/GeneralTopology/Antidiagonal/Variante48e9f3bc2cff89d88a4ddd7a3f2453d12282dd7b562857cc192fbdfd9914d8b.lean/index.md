# Verification target: GRWTSK.Topology.GeneralTopology.Antidiagonal.Variante48e9f3bc2cff89d88a4ddd7a3f2453d12282dd7b562857cc192fbdfd9914d8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af8de7d4977d661d716d175e5eefa09e3fc7c2df",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Antidiagonal/Variante48e9f3bc2cff89d88a4ddd7a3f2453d12282dd7b562857cc192fbdfd9914d8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variante48e9f3bc2cff89d88a4ddd7a3f2453d12282dd7b562857cc192fbdfd9914d8b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variante48e9f3bc2cff89d88a4ddd7a3f2453d12282dd7b562857cc192fbdfd9914d8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af8de7d4977d661d716d175e5eefa09e3fc7c2df`.

Source path: `GRWTSK/Topology/GeneralTopology/Antidiagonal/Variante48e9f3bc2cff89d88a4ddd7a3f2453d12282dd7b562857cc192fbdfd9914d8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Antidiagonal/Variante48e9f3bc2cff89d88a4ddd7a3f2453d12282dd7b562857cc192fbdfd9914d8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.NatAntidiagonal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Multiset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Antidiagonal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Init.IteSimp` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [antidiagonal'](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variante48e9f3bc2cff89d88a4ddd7a3f2453d12282dd7b562857cc192fbdfd9914d8b.lean/declarations/antidiagonal--c1a008608b1232f83f6cd1e3.md) | 35 | `declaration-track:c1a008608b1232f83f6cd1e326523f2726b567eafa2b2077b55c2d7b01c1e5bb` |
| 2 | `def` | [antidiagonal](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variante48e9f3bc2cff89d88a4ddd7a3f2453d12282dd7b562857cc192fbdfd9914d8b.lean/declarations/antidiagonal--fa694baadbf0eaa7c1ef6ddc.md) | 42 | `declaration-track:fa694baadbf0eaa7c1ef6ddc32b4a95235abb52d88431572acc12d71e0dc5c38` |
| 3 | `theorem` | [mem_antidiagonal](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variante48e9f3bc2cff89d88a4ddd7a3f2453d12282dd7b562857cc192fbdfd9914d8b.lean/declarations/mem-antidiagonal--aa0d505197508279d12f38bf.md) | 46 | `result-track:aa0d505197508279d12f38bfa820fed4f74a414ccf0df0ce11c4c5bd7e03ed54` |
| 4 | `theorem` | [swap_mem_antidiagonal](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variante48e9f3bc2cff89d88a4ddd7a3f2453d12282dd7b562857cc192fbdfd9914d8b.lean/declarations/swap-mem-antidiagonal--062cace6c7ba930613be6dac.md) | 53 | `result-track:062cace6c7ba930613be6dac72d4319b9e84a843ef6ef97c0d416b7c9a0427ac` |
| 5 | `theorem` | [antidiagonal_filter_fst_eq](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variante48e9f3bc2cff89d88a4ddd7a3f2453d12282dd7b562857cc192fbdfd9914d8b.lean/declarations/antidiagonal-filter-fst-eq--4479ca9eec9a2fb1fe8cec40.md) | 58 | `result-track:4479ca9eec9a2fb1fe8cec40f68196d7db67034f15f231f7b4a7dc5a9193edcb` |
| 6 | `theorem` | [antidiagonal_filter_snd_eq](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variante48e9f3bc2cff89d88a4ddd7a3f2453d12282dd7b562857cc192fbdfd9914d8b.lean/declarations/antidiagonal-filter-snd-eq--b927fd8709ad874d970db200.md) | 73 | `result-track:b927fd8709ad874d970db200c549c4055f093d548dbfcd84a80dfe00ac5ecefd` |
| 7 | `theorem` | [antidiagonal_zero](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variante48e9f3bc2cff89d88a4ddd7a3f2453d12282dd7b562857cc192fbdfd9914d8b.lean/declarations/antidiagonal-zero--accd673688739b2ad4c831f9.md) | 89 | `result-track:accd673688739b2ad4c831f90d02f2e5bc4ad9a17964a2e2033781da4aebdc04` |
| 8 | `theorem` | [prod_antidiagonal_swap](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variante48e9f3bc2cff89d88a4ddd7a3f2453d12282dd7b562857cc192fbdfd9914d8b.lean/declarations/prod-antidiagonal-swap--a073799adea66ce9a259ee50.md) | 93 | `result-track:a073799adea66ce9a259ee503c7ab65c08f8f8b73e003e5055a997a57cec8102` |
| 9 | `theorem` | [antidiagonal_single](../../../../../mathematics/Topology/GeneralTopology/Antidiagonal/Variante48e9f3bc2cff89d88a4ddd7a3f2453d12282dd7b562857cc192fbdfd9914d8b.lean/declarations/antidiagonal-single--862573aab100aff5668a6c30.md) | 103 | `result-track:862573aab100aff5668a6c308dc684890c972a75620b76469f696634d0d4c8c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
