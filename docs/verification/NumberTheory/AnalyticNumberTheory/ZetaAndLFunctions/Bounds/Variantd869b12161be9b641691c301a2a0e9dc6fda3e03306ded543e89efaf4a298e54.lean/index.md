# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Bounds.Variantd869b12161be9b641691c301a2a0e9dc6fda3e03306ded543e89efaf4a298e54

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36a6f9ca6fdba65ef7eeb9085934ee1da0f9f2e3",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Bounds/Variantd869b12161be9b641691c301a2a0e9dc6fda3e03306ded543e89efaf4a298e54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Bounds/Variantd869b12161be9b641691c301a2a0e9dc6fda3e03306ded543e89efaf4a298e54.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Bounds/Variantd869b12161be9b641691c301a2a0e9dc6fda3e03306ded543e89efaf4a298e54.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36a6f9ca6fdba65ef7eeb9085934ee1da0f9f2e3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Bounds/Variantd869b12161be9b641691c301a2a0e9dc6fda3e03306ded543e89efaf4a298e54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Bounds/Variantd869b12161be9b641691c301a2a0e9dc6fda3e03306ded543e89efaf4a298e54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.DirichletCharacter.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [unit_norm_eq_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Bounds/Variantd869b12161be9b641691c301a2a0e9dc6fda3e03306ded543e89efaf4a298e54.lean/declarations/unit-norm-eq-one--35c47ae7d247e2cb91a5e401.md) | 31 | `result-track:35c47ae7d247e2cb91a5e40103d1f46ec647cc0f2768a9a617b1ae28b1e69df1` |
| 2 | `lemma` | [norm_le_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Bounds/Variantd869b12161be9b641691c301a2a0e9dc6fda3e03306ded543e89efaf4a298e54.lean/declarations/norm-le-one--224fe8b0926c90fa5a1171b9.md) | 37 | `result-track:224fe8b0926c90fa5a1171b9146aa9a5b95805ee3fb0542664bfb32391d2b45d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
