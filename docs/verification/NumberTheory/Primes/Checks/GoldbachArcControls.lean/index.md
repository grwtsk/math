# Verification target: GRWTSK.NumberTheory.Primes.Checks.GoldbachArcControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3835250460dd3e3607853dca63c744af457a7392",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachArcControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachArcControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachArcControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3835250460dd3e3607853dca63c744af457a7392`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/GoldbachArcControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/GoldbachArcControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachArcDecomposition`](../../../../../mathematics/NumberTheory/Primes/GoldbachArcDecomposition.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_cutoff_five](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachArcControls.lean/declarations/prime-cutoff-five--6c7e26571e3c137595521fd9.md) | 27 | `result-track:6c7e26571e3c137595521fd9572cbc6d59d2730d3d808d606110f9b5f0a224a1` |
| 2 | `theorem` | [odd_prime_cutoff_five](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachArcControls.lean/declarations/odd-prime-cutoff-five--a6deea273583fd5232d24e74.md) | 31 | `result-track:a6deea273583fd5232d24e74d7d852d5291ddf8381fcfece19d043fe7aac59ff` |
| 3 | `theorem` | [odd_target_truncation_zero](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachArcControls.lean/declarations/odd-target-truncation-zero--7cea42e2d60e3930b298f50f.md) | 35 | `result-track:7cea42e2d60e3930b298f50fef784c6fceca168b03ea6d1b0dcd16e0321c2e5a` |
| 4 | `theorem` | [local_product_not_goldbach_witness](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachArcControls.lean/declarations/local-product-not-goldbach-witness--1e25c25686612356ca3425fa.md) | 41 | `result-track:1e25c25686612356ca3425fa799b936822e6103e396fee2ec949310c6f092709` |
| 5 | `theorem` | [empty_major_partition](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachArcControls.lean/declarations/empty-major-partition--eac4a252867821051a2aca76.md) | 49 | `result-track:eac4a252867821051a2aca76ec6bd128bb6f79eeef2db83bc4f285a9f4853479` |
| 6 | `theorem` | [full_major_partition](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachArcControls.lean/declarations/full-major-partition--2a5d57868604292f2f9476a1.md) | 59 | `result-track:2a5d57868604292f2f9476a127fdd8fdb12dcddb72e748e786080fe794833898` |
| 7 | `theorem` | [zero_margin_rejected](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachArcControls.lean/declarations/zero-margin-rejected--5f043347ff15a3af227323a4.md) | 64 | `result-track:5f043347ff15a3af227323a48dd774dcdf84bdbe8dfe69500c3a6c140954342d` |
| 8 | `theorem` | [truncated_scale_alone_not_count](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachArcControls.lean/declarations/truncated-scale-alone-not-count--ca788d2a374b5b059bd141b6.md) | 69 | `result-track:ca788d2a374b5b059bd141b68ea187588f7c54bc54ac50f36a4ecca342a64c7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
