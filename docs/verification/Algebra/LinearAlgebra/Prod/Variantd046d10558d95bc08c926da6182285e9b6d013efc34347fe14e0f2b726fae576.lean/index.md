# Verification target: GRWTSK.Algebra.LinearAlgebra.Prod.Variantd046d10558d95bc08c926da6182285e9b6d013efc34347fe14e0f2b726fae576

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "798e32e325a5c3a72f2a07123ff8243f5afd422c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variantd046d10558d95bc08c926da6182285e9b6d013efc34347fe14e0f2b726fae576.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantd046d10558d95bc08c926da6182285e9b6d013efc34347fe14e0f2b726fae576.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantd046d10558d95bc08c926da6182285e9b6d013efc34347fe14e0f2b726fae576.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `798e32e325a5c3a72f2a07123ff8243f5afd422c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Prod/Variantd046d10558d95bc08c926da6182285e9b6d013efc34347fe14e0f2b726fae576.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Prod/Variantd046d10558d95bc08c926da6182285e9b6d013efc34347fe14e0f2b726fae576.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.SumProd` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantd046d10558d95bc08c926da6182285e9b6d013efc34347fe14e0f2b726fae576.lean/declarations/prod--8fbe9d7163c8f0a0e531df79.md) | 48 | `declaration-track:8fbe9d7163c8f0a0e531df79dac1d349d3f845e6b66083b77f1bd53c52818206` |
| 2 | `theorem` | [prod_repr_inl](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantd046d10558d95bc08c926da6182285e9b6d013efc34347fe14e0f2b726fae576.lean/declarations/prod-repr-inl--be0305dacbb778ec608105ce.md) | 52 | `result-track:be0305dacbb778ec608105ce5ed4f0b5c90add877ee5372d6cc7d65dc3438fe3` |
| 3 | `theorem` | [prod_repr_inr](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantd046d10558d95bc08c926da6182285e9b6d013efc34347fe14e0f2b726fae576.lean/declarations/prod-repr-inr--4cc410939fc783b17645325d.md) | 56 | `result-track:4cc410939fc783b17645325dbd6a486d6134f3027383d0540769ac51bee120eb` |
| 4 | `theorem` | [prod_apply_inl_fst](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantd046d10558d95bc08c926da6182285e9b6d013efc34347fe14e0f2b726fae576.lean/declarations/prod-apply-inl-fst--16ef2a6f24e657fccaefea0c.md) | 59 | `result-track:16ef2a6f24e657fccaefea0c09eb9b02f849fbb922185a2256e5d2525b17c9bc` |
| 5 | `theorem` | [prod_apply_inr_fst](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantd046d10558d95bc08c926da6182285e9b6d013efc34347fe14e0f2b726fae576.lean/declarations/prod-apply-inr-fst--7d58e0a7006e1c1e032a3441.md) | 67 | `result-track:7d58e0a7006e1c1e032a34412d3d0fcf747b009e30aecf0e2abfadeda4e9ce29` |
| 6 | `theorem` | [prod_apply_inl_snd](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantd046d10558d95bc08c926da6182285e9b6d013efc34347fe14e0f2b726fae576.lean/declarations/prod-apply-inl-snd--2d5372e993b466ade81f0db8.md) | 76 | `result-track:2d5372e993b466ade81f0db8dd675233f3f108bc1964b4b9769d93496e7c44a6` |
| 7 | `theorem` | [prod_apply_inr_snd](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantd046d10558d95bc08c926da6182285e9b6d013efc34347fe14e0f2b726fae576.lean/declarations/prod-apply-inr-snd--98c85be09fbcf3a665888de0.md) | 85 | `result-track:98c85be09fbcf3a665888de0e1041da9bd2521aaba956e74edf46f01f5ea2242` |
| 8 | `theorem` | [prod_apply](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantd046d10558d95bc08c926da6182285e9b6d013efc34347fe14e0f2b726fae576.lean/declarations/prod-apply--10051bcd153f6549348af042.md) | 94 | `result-track:10051bcd153f6549348af04200057ff70a55bb3947a3d5a3d51b2f0d2c002351` |
| 9 | `instance` | [prod](../../../../../mathematics/Algebra/LinearAlgebra/Prod/Variantd046d10558d95bc08c926da6182285e9b6d013efc34347fe14e0f2b726fae576.lean/declarations/prod--39b177780f8705032d33fda2.md) | 107 | `declaration-track:39b177780f8705032d33fda20e33fc88650cac5cc074e7c050d8279910d797f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
