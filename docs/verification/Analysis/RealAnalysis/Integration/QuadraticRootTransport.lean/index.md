# Verification target: GRWTSK.Analysis.Integration.QuadraticRootTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d17ad0600f23db011492c1a64cdaca16c86947b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Integration/QuadraticRootTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/RealAnalysis/Integration/QuadraticRootTransport.lean/index.md) · [Full source](../../../../../mathematics/Analysis/RealAnalysis/Integration/QuadraticRootTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d17ad0600f23db011492c1a64cdaca16c86947b`.

Source path: `GRWTSK/Analysis/Integration/QuadraticRootTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Integration/QuadraticRootTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [energy](../../../../../mathematics/Analysis/RealAnalysis/Integration/QuadraticRootTransport.lean/declarations/energy--32aebc3bba628ae59427aba5.md) | 15 | `declaration-track:32aebc3bba628ae59427aba5643b8ca86b9dbf986919f69f8fbd045f0fea9f0c` |
| 2 | `def` | [cross](../../../../../mathematics/Analysis/RealAnalysis/Integration/QuadraticRootTransport.lean/declarations/cross--8a72a9bf00b75ff3c49bff79.md) | 17 | `declaration-track:8a72a9bf00b75ff3c49bff79a725766771c055e60faf94c0a68ffdb17027cd5a` |
| 3 | `lemma` | [energy_nonnegative](../../../../../mathematics/Analysis/RealAnalysis/Integration/QuadraticRootTransport.lean/declarations/energy-nonnegative--af4b6a46b2263fb4e8b16c0c.md) | 19 | `result-track:af4b6a46b2263fb4e8b16c0c98bf2ba5771b22225d51394d574247e58ad4be4c` |
| 4 | `lemma` | [cross_integrable](../../../../../mathematics/Analysis/RealAnalysis/Integration/QuadraticRootTransport.lean/declarations/cross-integrable--2792bbc07d39dac324ee1af4.md) | 23 | `result-track:2792bbc07d39dac324ee1af46594d027e5db6b4a600d3b6fae7279d9451ec08c` |
| 5 | `lemma` | [moment_identity](../../../../../mathematics/Analysis/RealAnalysis/Integration/QuadraticRootTransport.lean/declarations/moment-identity--4bd55d8095e3b7d26582a3d9.md) | 32 | `result-track:4bd55d8095e3b7d26582a3d9113c8b28b0a0c5aef9b315bef90b85be4f6132b8` |
| 6 | `lemma` | [cross_square_bound](../../../../../mathematics/Analysis/RealAnalysis/Integration/QuadraticRootTransport.lean/declarations/cross-square-bound--87aa3ca51da8f5f39661c8b7.md) | 50 | `result-track:87aa3ca51da8f5f39661c8b78daab4e18193efdf514f9191b635db58c9d052c1` |
| 7 | `theorem` | [sqrt_energy_add_le](../../../../../mathematics/Analysis/RealAnalysis/Integration/QuadraticRootTransport.lean/declarations/sqrt-energy-add-le--451b1c75429e00e97b05ad02.md) | 73 | `result-track:451b1c75429e00e97b05ad02f76fe4d14b0f36a6dcb5b826571a1b6d8ff7ff82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
