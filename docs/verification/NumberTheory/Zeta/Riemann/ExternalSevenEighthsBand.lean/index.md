# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ExternalSevenEighthsBand

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b74b3146f9365cbe4dd42df1c43897f3d9b0be6d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ExternalSevenEighthsBand.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalSevenEighthsBand.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalSevenEighthsBand.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b74b3146f9365cbe4dd42df1c43897f3d9b0be6d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ExternalSevenEighthsBand.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ExternalSevenEighthsBand.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SevenEighthsZeroFree](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalSevenEighthsBand.lean/declarations/seveneighthszerofree--3d35e3db5a94aff78a2dbb41.md) | 29 | `declaration-track:3d35e3db5a94aff78a2dbb41e66f199b9507b1df03dc561684df1ca98802d02c` |
| 2 | `theorem` | [NontrivialZetaZero.re_le_seven_eighths](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalSevenEighthsBand.lean/declarations/nontrivialzetazero-re-le-seven-eighths--7d332d206823541748681fad.md) | 34 | `result-track:7d332d206823541748681fad054e71f35cf68bdd86338058835bd34e46116405` |
| 3 | `theorem` | [NontrivialZetaZero.one_eighth_le_re](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalSevenEighthsBand.lean/declarations/nontrivialzetazero-one-eighth-le-re--9ce71e472238501787a44144.md) | 44 | `result-track:9ce71e472238501787a44144981a06b8493a9d593d4a78002d357d668c89422f` |
| 4 | `theorem` | [NontrivialZetaZero.mem_closed_seven_eighths_band](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalSevenEighthsBand.lean/declarations/nontrivialzetazero-mem-closed-seven-eighths-band--b33740da8b5eca9258388f4b.md) | 55 | `result-track:b33740da8b5eca9258388f4b62fc01bcdc7da442cfbab7879ec036a0de6749ff` |
| 5 | `theorem` | [seven_eighths_band_does_not_discharge_line](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalSevenEighthsBand.lean/declarations/seven-eighths-band-does-not-discharge-line--98755cef70e5e668327db3cd.md) | 63 | `result-track:98755cef70e5e668327db3cd346270d1991a5ff5ed7e25b541e4cbc38d005982` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
