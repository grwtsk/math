# Verification target: GRWTSK.Analysis.Inequalities.PolynomialEnergyRatio

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0679f0a1b300c3094ddf927d8deff58fe5a2b8f3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inequalities/PolynomialEnergyRatio.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Inequalities/PolynomialEnergyRatio.lean/index.md) · [Full source](../../../../mathematics/Analysis/Inequalities/PolynomialEnergyRatio.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0679f0a1b300c3094ddf927d8deff58fe5a2b8f3`.

Source path: `GRWTSK/Analysis/Inequalities/PolynomialEnergyRatio.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inequalities/PolynomialEnergyRatio.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normPolynomial](../../../../mathematics/Analysis/Inequalities/PolynomialEnergyRatio.lean/declarations/normpolynomial--4a59e2be2105d04cad167555.md) | 22 | `declaration-track:4a59e2be2105d04cad167555134d2b5328bc5a6254075c4aa16becccbd2de6a9` |
| 2 | `def` | [derivativePolynomial](../../../../mathematics/Analysis/Inequalities/PolynomialEnergyRatio.lean/declarations/derivativepolynomial--ce8eb5a73e40ec123d412020.md) | 27 | `declaration-track:ce8eb5a73e40ec123d4120209420e67bdca13e123390e51c08b97237bde62e37` |
| 3 | `def` | [squaredCoefficient](../../../../mathematics/Analysis/Inequalities/PolynomialEnergyRatio.lean/declarations/squaredcoefficient--4dc5097ff67d34416e24ec8b.md) | 32 | `declaration-track:4dc5097ff67d34416e24ec8b3b3320662e46768420aff9ad58dd6aa446d03e7d` |
| 4 | `theorem` | [normPolynomial_pos](../../../../mathematics/Analysis/Inequalities/PolynomialEnergyRatio.lean/declarations/normpolynomial-pos--11e197d5849aae5e36b28161.md) | 34 | `result-track:11e197d5849aae5e36b28161bc05bad0f3ad90c996b0a7f8f4c98cf090db2688` |
| 5 | `theorem` | [exact_coefficient_gap](../../../../mathematics/Analysis/Inequalities/PolynomialEnergyRatio.lean/declarations/exact-coefficient-gap--bd069906f633b8946b97128e.md) | 39 | `result-track:bd069906f633b8946b97128e2215badc5c0409124a640cf44cabfea661c85ee1` |
| 6 | `theorem` | [derivativePolynomial_le](../../../../mathematics/Analysis/Inequalities/PolynomialEnergyRatio.lean/declarations/derivativepolynomial-le--3e2f81eb396005bcb954f395.md) | 45 | `result-track:3e2f81eb396005bcb954f395f05166427d908d4c9641e04940466f7de79f1f17` |
| 7 | `theorem` | [exact_ratio_upper_bound](../../../../mathematics/Analysis/Inequalities/PolynomialEnergyRatio.lean/declarations/exact-ratio-upper-bound--4ee288721ce9619fd4852d34.md) | 55 | `result-track:4ee288721ce9619fd4852d3431250d9e62154527329921e2385253927cc28c72` |
| 8 | `theorem` | [squaredCoefficient_lt_twenty_five](../../../../mathematics/Analysis/Inequalities/PolynomialEnergyRatio.lean/declarations/squaredcoefficient-lt-twenty-five--778bd7f7d6da06175ed8184c.md) | 60 | `result-track:778bd7f7d6da06175ed8184c7b35b2917ad7f385a0d9723b89ac5022b5bf4335` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
