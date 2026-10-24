# Verification target: GRWTSK.NumberTheory.Primes.QuadraticPlusOneLocalRoots

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e29543503364c65c33a691c12309f73f1b3fb060",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e29543503364c65c33a691c12309f73f1b3fb060`.

Source path: `GRWTSK/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.ConfigurationCounts`](../../../../mathematics/NumberTheory/Primes/ConfigurationCounts.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.ZMod.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadraticPlusOneResidues](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/declarations/quadraticplusoneresidues--7a6d645e6d80ac5f6751e697.md) | 37 | `declaration-track:7a6d645e6d80ac5f6751e6979075efe8cfc18566de38c044474b6e9fa2f69b6d` |
| 2 | `theorem` | [mem_quadraticPlusOneResidues](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/declarations/mem-quadraticplusoneresidues--0af824b99ba9c8829e5c6338.md) | 41 | `result-track:0af824b99ba9c8829e5c633865f11bea9fca3af91cecf7a7e0f346b62364603c` |
| 3 | `def` | [quadraticPlusOneRootCount](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/declarations/quadraticplusonerootcount--08e149aa5447c4a8eff2c85a.md) | 48 | `declaration-track:08e149aa5447c4a8eff2c85a2b45d09432a13148ab828db736412022f0350856` |
| 4 | `def` | [QuadraticPlusOneZModRoot](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/declarations/quadraticplusonezmodroot--f70ceb4cd0d1a90b1ed0ea74.md) | 53 | `declaration-track:f70ceb4cd0d1a90b1ed0ea74d9f48c1d1c9af0fb5df3d1035afbcce458aea2f3` |
| 5 | `instance` | [quadraticPlusOneZModRootFintype](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/declarations/quadraticplusonezmodrootfintype--23000bf4729ba2d345c9ae37.md) | 57 | `declaration-track:23000bf4729ba2d345c9ae37faefe9f7bdb2bfddeb587f4a8ac31c6835e35888` |
| 6 | `def` | [quadraticPlusOneResiduesEquivZModRoots](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/declarations/quadraticplusoneresiduesequivzmodroots--1cdc4a3e833df261c959a2c1.md) | 63 | `declaration-track:1cdc4a3e833df261c959a2c12d35e69e88983bfcd1177dc05597174cd15d2826` |
| 7 | `theorem` | [quadraticPlusOneRootCount_eq_zmod](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/declarations/quadraticplusonerootcount-eq-zmod--611cede8607cf0f848e10780.md) | 101 | `result-track:611cede8607cf0f848e1078073e0d183173526c3a4a7fac43001fcc5c9b6fc55` |
| 8 | `def` | [quadraticPlusOneZModRootsMulEquiv](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/declarations/quadraticplusonezmodrootsmulequiv--ec07cd76c9662795f53aa8ed.md) | 111 | `declaration-track:ec07cd76c9662795f53aa8ed48147e37e83e9c754831bcba98e3f717d46dabd7` |
| 9 | `theorem` | [quadraticPlusOneRootCount_mul](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/declarations/quadraticplusonerootcount-mul--a3a90f381b3d2397037004de.md) | 142 | `result-track:a3a90f381b3d2397037004de34b5aedec7f03fee02842d4e55dc5ed78bc1694c` |
| 10 | `theorem` | [quadraticPlusOneRootCount_one](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/declarations/quadraticplusonerootcount-one--c577e22630a1eb0d40e40ff9.md) | 159 | `result-track:c577e22630a1eb0d40e40ff9e79c5cf01c7521557f8e264de6b8a40767d1327d` |
| 11 | `theorem` | [quadraticPlusOneRootCount_two](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/declarations/quadraticplusonerootcount-two--53b8584ad5b7081299609b25.md) | 164 | `result-track:53b8584ad5b7081299609b2508e8b0744ac1e6798f22f0efabfbad280f66b8a6` |
| 12 | `theorem` | [quadraticPlusOneRootCount_prime_mod_four_one](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/declarations/quadraticplusonerootcount-prime-mod-four-one--f9889aca1855a68719136c40.md) | 170 | `result-track:f9889aca1855a68719136c40b3a1ed842fc3c01361e1ea92a41bcd75128810d7` |
| 13 | `theorem` | [quadraticPlusOneRootCount_prime_mod_four_three](../../../../mathematics/NumberTheory/Primes/QuadraticPlusOneLocalRoots.lean/declarations/quadraticplusonerootcount-prime-mod-four-three--17602cb6831eab086b324fe7.md) | 202 | `result-track:17602cb6831eab086b324fe711cc7b0649f1a254efe4953c885a863739382bea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
