# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Bicomplex.Variant7da3513cc2d3703594de85b426425800a54d18e823b3e2d96c1dc53b0ddfe4d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7068c0dbad3b9cb3c2a26e81ecc47fd30f03207a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Bicomplex/Variant7da3513cc2d3703594de85b426425800a54d18e823b3e2d96c1dc53b0ddfe4d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Bicomplex/Variant7da3513cc2d3703594de85b426425800a54d18e823b3e2d96c1dc53b0ddfe4d2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Bicomplex/Variant7da3513cc2d3703594de85b426425800a54d18e823b3e2d96c1dc53b0ddfe4d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7068c0dbad3b9cb3c2a26e81ecc47fd30f03207a`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Bicomplex/Variant7da3513cc2d3703594de85b426425800a54d18e823b3e2d96c1dc53b0ddfe4d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Bicomplex/Variant7da3513cc2d3703594de85b426425800a54d18e823b3e2d96c1dc53b0ddfe4d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Hilbert.DifferentialComplex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteBicomplex](../../../../../mathematics/Analysis/FunctionalAnalysis/Bicomplex/Variant7da3513cc2d3703594de85b426425800a54d18e823b3e2d96c1dc53b0ddfe4d2.lean/declarations/finitebicomplex--a6b745d81f82ff229b0bf670.md) | 28 | `declaration-track:a6b745d81f82ff229b0bf6702a202c4629badf4ddd428a508d702f750c7248b4` |
| 2 | `def` | [totalDifferential](../../../../../mathematics/Analysis/FunctionalAnalysis/Bicomplex/Variant7da3513cc2d3703594de85b426425800a54d18e823b3e2d96c1dc53b0ddfe4d2.lean/declarations/totaldifferential--9e6efff5c41cb2b70c829b18.md) | 43 | `declaration-track:9e6efff5c41cb2b70c829b181a12ee482b1096e168442ea0ac8d9b75de04407d` |
| 3 | `theorem` | [totalDifferential_sq_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Bicomplex/Variant7da3513cc2d3703594de85b426425800a54d18e823b3e2d96c1dc53b0ddfe4d2.lean/declarations/totaldifferential-sq-zero--df8627e2af636b4393b64f5f.md) | 48 | `result-track:df8627e2af636b4393b64f5f15fa524df3a287eb9368f6ca1bae9261ff77fc28` |
| 4 | `def` | [toDifferentialComplex](../../../../../mathematics/Analysis/FunctionalAnalysis/Bicomplex/Variant7da3513cc2d3703594de85b426425800a54d18e823b3e2d96c1dc53b0ddfe4d2.lean/declarations/todifferentialcomplex--b15bdee9326693854794941a.md) | 65 | `declaration-track:b15bdee9326693854794941aaa99bd78797db5c54dfab25fb6f2c92d82be8c3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
