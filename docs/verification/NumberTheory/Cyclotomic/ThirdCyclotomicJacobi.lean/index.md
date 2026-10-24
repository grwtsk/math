# Verification target: GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicJacobi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70e08f0efedfe47fc71f53559ac3beea3f11ff74",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicJacobi.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicJacobi.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicJacobi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70e08f0efedfe47fc71f53559ac3beea3f11ff74`.

Source path: `GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicJacobi.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Cyclotomic/ThirdCyclotomicJacobi.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters`](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean/index.md) — import line 16; pinned internal source present.
- `Mathlib.NumberTheory.JacobiSum.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [quotientFintype](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicJacobi.lean/declarations/quotientfintype--acf5ab0ff2277d2ac5a23c5f.md) | 30 | `declaration-track:acf5ab0ff2277d2ac5a23c5fbf958511de7ae1db55e976bb48e8ca35a51b0417` |
| 2 | `instance` | [quotientField](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicJacobi.lean/declarations/quotientfield--d131ef72804b64a34363d5e8.md) | 33 | `declaration-track:d131ef72804b64a34363d5e829701c32470cac89f9b9a25af06bfdab2c62d280` |
| 3 | `theorem` | [cubicJacobi_primary](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicJacobi.lean/declarations/cubicjacobi-primary--4a26422920be63c0f9d82e2a.md) | 38 | `result-track:4a26422920be63c0f9d82e2a54f7a70b265650f4b7d046190d07bca6ba1e2858` |
| 4 | `theorem` | [lambda_sq_dvd_cubicJacobi_add_one](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicJacobi.lean/declarations/lambda-sq-dvd-cubicjacobi-add-one--f0ab84c2c1f84c63c12ff155.md) | 49 | `result-track:f0ab84c2c1f84c63c12ff155a78d72db0a2b6e6eae77a118bfa5272aa07d770c` |
| 5 | `theorem` | [lambda_sq_dvd_neg_cubicJacobi_sub_one](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicJacobi.lean/declarations/lambda-sq-dvd-neg-cubicjacobi-sub-one--ca1149879d31acebc1c1eb47.md) | 58 | `result-track:ca1149879d31acebc1c1eb470c3293615f3d9f7768c69bdf0e399c24b0b313fd` |
| 6 | `theorem` | [lambda_not_dvd_two](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicJacobi.lean/declarations/lambda-not-dvd-two--ff86d9008753f7dfc8dbd621.md) | 67 | `result-track:ff86d9008753f7dfc8dbd62154580f023536ba030d57f6c8204e76d8d82a0802` |
| 7 | `theorem` | [lambda_sq_not_dvd_cubicJacobi_sub_one](../../../../mathematics/NumberTheory/Cyclotomic/ThirdCyclotomicJacobi.lean/declarations/lambda-sq-not-dvd-cubicjacobi-sub-one--0bbab204d19f294b1995d0d4.md) | 74 | `result-track:0bbab204d19f294b1995d0d49668ce42514f552c1b11611292234e4ec068f926` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
