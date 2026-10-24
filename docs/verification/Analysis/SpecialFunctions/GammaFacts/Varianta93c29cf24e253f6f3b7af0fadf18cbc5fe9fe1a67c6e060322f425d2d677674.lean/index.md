# Verification target: GRWTSK.Analysis.SpecialFunctions.GammaFacts.Varianta93c29cf24e253f6f3b7af0fadf18cbc5fe9fe1a67c6e060322f425d2d677674

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "893f83b41d3989ec7d7ab68ec0f82819158a6bcc",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/GammaFacts/Varianta93c29cf24e253f6f3b7af0fadf18cbc5fe9fe1a67c6e060322f425d2d677674.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/GammaFacts/Varianta93c29cf24e253f6f3b7af0fadf18cbc5fe9fe1a67c6e060322f425d2d677674.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/GammaFacts/Varianta93c29cf24e253f6f3b7af0fadf18cbc5fe9fe1a67c6e060322f425d2d677674.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `893f83b41d3989ec7d7ab68ec0f82819158a6bcc`.

Source path: `GRWTSK/Analysis/SpecialFunctions/GammaFacts/Varianta93c29cf24e253f6f3b7af0fadf18cbc5fe9fe1a67c6e060322f425d2d677674.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/GammaFacts/Varianta93c29cf24e253f6f3b7af0fadf18cbc5fe9fe1a67c6e060322f425d2d677674.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Defs` — import line 33; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 34; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 35; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 36; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [digamma_conj](../../../../../mathematics/Analysis/SpecialFunctions/GammaFacts/Varianta93c29cf24e253f6f3b7af0fadf18cbc5fe9fe1a67c6e060322f425d2d677674.lean/declarations/digamma-conj--bbd1445b8b48e32e392d8dfb.md) | 45 | `result-track:bbd1445b8b48e32e392d8dfbee15a02403fc1d111eeee7a036c55f6bd8a4ef10` |
| 2 | `theorem` | [mu_even](../../../../../mathematics/Analysis/SpecialFunctions/GammaFacts/Varianta93c29cf24e253f6f3b7af0fadf18cbc5fe9fe1a67c6e060322f425d2d677674.lean/declarations/mu-even--ed42055f326ad5a2c9e18827.md) | 60 | `result-track:ed42055f326ad5a2c9e18827f166e5e01c2ddc03c7cae402451d60364de45c56` |
| 3 | `lemma` | [gamma_ne_neg_nat](../../../../../mathematics/Analysis/SpecialFunctions/GammaFacts/Varianta93c29cf24e253f6f3b7af0fadf18cbc5fe9fe1a67c6e060322f425d2d677674.lean/declarations/gamma-ne-neg-nat--9a1ff2e074b0c74fffe4be48.md) | 70 | `result-track:9a1ff2e074b0c74fffe4be4859fb0aeb63e98fdb86e3cd989a615d7043f98606` |
| 4 | `lemma` | [analyticAt_digamma](../../../../../mathematics/Analysis/SpecialFunctions/GammaFacts/Varianta93c29cf24e253f6f3b7af0fadf18cbc5fe9fe1a67c6e060322f425d2d677674.lean/declarations/analyticat-digamma--e7da1b6b69c73e77be8a045a.md) | 76 | `result-track:e7da1b6b69c73e77be8a045a09bdadafd6e0f3a2b5262e171e2204063a9459ac` |
| 5 | `theorem` | [mu_smooth](../../../../../mathematics/Analysis/SpecialFunctions/GammaFacts/Varianta93c29cf24e253f6f3b7af0fadf18cbc5fe9fe1a67c6e060322f425d2d677674.lean/declarations/mu-smooth--7f62c9850ca5b25095a4eadd.md) | 96 | `result-track:7f62c9850ca5b25095a4eadd24637e32b90deb1d5a3c913c496b0681dfc5599b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
