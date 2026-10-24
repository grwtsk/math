# Verification target: GRWTSK.Analysis.BlaschkeFloorStatements.Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bfc405341c9f0a396e58197bbf291042fa0ae23",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean/index.md) · [Full source](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bfc405341c9f0a396e58197bbf291042fa0ae23`.

Source path: `GRWTSK/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Norm` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blaschkeAtOne](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean/declarations/blaschkeatone--23249452dbc581ecfd829321.md) | 9 | `declaration-track:23249452dbc581ecfd829321959bc517416a5f203bfd0bc05af5f6f3181d8db7` |
| 2 | `theorem` | [reference_denominator_ne_zero](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean/declarations/reference-denominator-ne-zero--90d1f07b7ac9c82666a9b607.md) | 12 | `result-track:90d1f07b7ac9c82666a9b607ae9360b1fd9960071d89ab86e59bb01af3735c24` |
| 3 | `theorem` | [reference_denominator_normSq](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean/declarations/reference-denominator-normsq--5907478f388bbad56fad2e01.md) | 20 | `result-track:5907478f388bbad56fad2e0144bbaf8cc781018e7967dc0e474dc75703310307` |
| 4 | `theorem` | [blaschke_deficit](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean/declarations/blaschke-deficit--ffe88455d716ef5d27ba4195.md) | 27 | `result-track:ffe88455d716ef5d27ba41953bc67a1a7c25ec8bd814b77b9e6bf1fa55acb71e` |
| 5 | `theorem` | [factor_deficit_lower](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean/declarations/factor-deficit-lower--c13a6eaef0851fff601fafc9.md) | 39 | `result-track:c13a6eaef0851fff601fafc96e8cf5be8a47d0d6598bef90b5528dc0a5b668ef` |
| 6 | `theorem` | [blaschke_floor_pos](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean/declarations/blaschke-floor-pos--02d4624a3f71af953bbf2e3a.md) | 47 | `result-track:02d4624a3f71af953bbf2e3a964c894c8bdf209bdb6fbb4d6a465ac2b2af0291` |
| 7 | `example` | [(anonymous)](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean/declarations/example--cbb90122cf600a855a330df1.md) | 58 | `declaration-track:cbb90122cf600a855a330df185f51edd73fe4a1324e516370fc52606015baceb` |
| 8 | `example` | [(anonymous)](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean/declarations/example--17204cf93a0cb3166abd1e64.md) | 60 | `declaration-track:17204cf93a0cb3166abd1e64911bb321a936c43416d617a4314b4b305e456430` |
| 9 | `example` | [(anonymous)](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean/declarations/example--654ec1f9d2194dcaf41b8225.md) | 64 | `declaration-track:654ec1f9d2194dcaf41b82250dc1195a730a7b9df94cc93456f330d15f3027f5` |
| 10 | `example` | [(anonymous)](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean/declarations/example--6401f559bd9dea46ddb6b0d7.md) | 68 | `declaration-track:6401f559bd9dea46ddb6b0d7c6c63e0ede8a93a1dbece67d787d5b52e7ee8439` |
| 11 | `example` | [(anonymous)](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean/declarations/example--69f090f3bf68ab84850471cc.md) | 72 | `declaration-track:69f090f3bf68ab84850471ccb0c334564b301b736b5db24c783c7563164df8ba` |
| 12 | `example` | [(anonymous)](../../../../mathematics/Analysis/BlaschkeFloorStatements/Variant8cb32e005455f85cb3cb8e4ca2b1a25de0c42affb9958a7c2b393ed6d420f8f7.lean/declarations/example--a35c191c489a1c72e58c7d77.md) | 76 | `declaration-track:a35c191c489a1c72e58c7d77904f8d492047bbcd7dcde033e013cac4660923d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
