# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeFin.Variant611864fbd51505c8ec18114aa0cddb96c396a256de144eed8a7fec89c9b810ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec28228795c2dca46d5e311dc64a2ef2aef0ebf4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant611864fbd51505c8ec18114aa0cddb96c396a256de144eed8a7fec89c9b810ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant611864fbd51505c8ec18114aa0cddb96c396a256de144eed8a7fec89c9b810ab.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant611864fbd51505c8ec18114aa0cddb96c396a256de144eed8a7fec89c9b810ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec28228795c2dca46d5e311dc64a2ef2aef0ebf4`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant611864fbd51505c8ec18114aa0cddb96c396a256de144eed8a7fec89c9b810ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant611864fbd51505c8ec18114aa0cddb96c396a256de144eed8a7fec89c9b810ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Countable.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factors` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [infinite_setOf_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant611864fbd51505c8ec18114aa0cddb96c396a256de144eed8a7fec89c9b810ab.lean/declarations/infinite-setof-prime--00243e5559d94820b86be807.md) | 22 | `result-track:00243e5559d94820b86be807c3cf5216e21e40a6b439c517ef1f0b319545bca1` |
| 2 | `instance` | [Primes.infinite](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant611864fbd51505c8ec18114aa0cddb96c396a256de144eed8a7fec89c9b810ab.lean/declarations/primes-infinite--f9ac3e2ccfe0b9e8c3ce034a.md) | 26 | `declaration-track:f9ac3e2ccfe0b9e8c3ce034a050b0a2d76b18b3aed1778569f4cf9c455b9400a` |
| 3 | `instance` | [Primes.countable](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant611864fbd51505c8ec18114aa0cddb96c396a256de144eed8a7fec89c9b810ab.lean/declarations/primes-countable--e304e79ed57a3e3e50b00991.md) | 28 | `declaration-track:e304e79ed57a3e3e50b0099109bd401f28bb466ca9b64e88f96553bb292904b4` |
| 4 | `theorem` | [factors_mul_toFinset](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant611864fbd51505c8ec18114aa0cddb96c396a256de144eed8a7fec89c9b810ab.lean/declarations/factors-mul-tofinset--e9df0f1aa2b729c749424489.md) | 31 | `result-track:e9df0f1aa2b729c749424489e58cc28d05db24bdd0e2f63897a8695ec8b3af0a` |
| 5 | `theorem` | [pow_succ_factors_toFinset](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant611864fbd51505c8ec18114aa0cddb96c396a256de144eed8a7fec89c9b810ab.lean/declarations/pow-succ-factors-tofinset--debd8b9044338c39961109e1.md) | 37 | `result-track:debd8b9044338c39961109e1a319ffc2461fd356782981fb4ef1c3e84f66a3b4` |
| 6 | `theorem` | [pow_factors_toFinset](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant611864fbd51505c8ec18114aa0cddb96c396a256de144eed8a7fec89c9b810ab.lean/declarations/pow-factors-tofinset--2b1955c60177de5d878f8e5e.md) | 46 | `result-track:2b1955c60177de5d878f8e5eda747ee044ce3e4fe1daf47ff50751f4f77079c7` |
| 7 | `theorem` | [prime_pow_prime_divisor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant611864fbd51505c8ec18114aa0cddb96c396a256de144eed8a7fec89c9b810ab.lean/declarations/prime-pow-prime-divisor--31f08e1993de955c8d262f33.md) | 54 | `result-track:31f08e1993de955c8d262f3387254b907a907bfe3c28df34a3b1cf58d97b88e3` |
| 8 | `theorem` | [factors_mul_toFinset_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PrimeFin/Variant611864fbd51505c8ec18114aa0cddb96c396a256de144eed8a7fec89c9b810ab.lean/declarations/factors-mul-tofinset-of-coprime--2c7ec27f6c265e1098c9b343.md) | 58 | `result-track:2c7ec27f6c265e1098c9b343a1294849ade288d5e1b55a9e7197187a58fa6080` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
