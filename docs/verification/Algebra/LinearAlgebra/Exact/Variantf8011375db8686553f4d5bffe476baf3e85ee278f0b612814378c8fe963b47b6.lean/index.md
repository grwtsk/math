# Verification target: GRWTSK.Algebra.LinearAlgebra.Exact.Variantf8011375db8686553f4d5bffe476baf3e85ee278f0b612814378c8fe963b47b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10b2629f8bc19ef7afa412f8ee2e29a5fe9224e2",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Exact/Variantf8011375db8686553f4d5bffe476baf3e85ee278f0b612814378c8fe963b47b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variantf8011375db8686553f4d5bffe476baf3e85ee278f0b612814378c8fe963b47b6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variantf8011375db8686553f4d5bffe476baf3e85ee278f0b612814378c8fe963b47b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10b2629f8bc19ef7afa412f8ee2e29a5fe9224e2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Exact/Variantf8011375db8686553f4d5bffe476baf3e85ee278f0b612814378c8fe963b47b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Exact/Variantf8011375db8686553f4d5bffe476baf3e85ee278f0b612814378c8fe963b47b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Exact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LocalizedModule.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LocalizedModule.map_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variantf8011375db8686553f4d5bffe476baf3e85ee278f0b612814378c8fe963b47b6.lean/declarations/localizedmodule-map-exact--1de426763e2b57279c93e80a.md) | 41 | `result-track:1de426763e2b57279c93e80ac307d8ddfdda733699508b4ad473d1d731f0a2af` |
| 2 | `theorem` | [IsLocalizedModule.map_exact](../../../../../mathematics/Algebra/LinearAlgebra/Exact/Variantf8011375db8686553f4d5bffe476baf3e85ee278f0b612814378c8fe963b47b6.lean/declarations/islocalizedmodule-map-exact--33a3eaca4fa694d69cc586de.md) | 60 | `result-track:33a3eaca4fa694d69cc586deaa296bcd0d87fbc7c960886ecd06fa35c7c124cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
