# Verification target: GRWTSK.Algebra.LinearAlgebra.Rank.Variant014d6faa400dd397ff9c9f02ee2f2669f5fe025084013041bc9c7449e8d32756

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d00ed12bbe6ad7b4ee6851c83a496f40afe295a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant014d6faa400dd397ff9c9f02ee2f2669f5fe025084013041bc9c7449e8d32756.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant014d6faa400dd397ff9c9f02ee2f2669f5fe025084013041bc9c7449e8d32756.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant014d6faa400dd397ff9c9f02ee2f2669f5fe025084013041bc9c7449e8d32756.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d00ed12bbe6ad7b4ee6851c83a496f40afe295a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rank/Variant014d6faa400dd397ff9c9f02ee2f2669f5fe025084013041bc9c7449e8d32756.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rank/Variant014d6faa400dd397ff9c9f02ee2f2669f5fe025084013041bc9c7449e8d32756.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.Free` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Subsingleton` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rank_sup_eq_rank_left_mul_rank_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant014d6faa400dd397ff9c9f02ee2f2669f5fe025084013041bc9c7449e8d32756.lean/declarations/rank-sup-eq-rank-left-mul-rank-of-free--53ade2ff6acaba41422071fb.md) | 39 | `result-track:53ade2ff6acaba41422071fb77c955ad135e2d29f7ee7e5e502d614c025297a6` |
| 2 | `theorem` | [finrank_sup_eq_finrank_left_mul_finrank_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant014d6faa400dd397ff9c9f02ee2f2669f5fe025084013041bc9c7449e8d32756.lean/declarations/finrank-sup-eq-finrank-left-mul-finrank-of-free--3a636398dcf25fda203f7ebc.md) | 52 | `result-track:3a636398dcf25fda203f7ebc58f17bde023558256fedb1e554e74889ffa3e9de` |
| 3 | `theorem` | [finrank_left_dvd_finrank_sup_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant014d6faa400dd397ff9c9f02ee2f2669f5fe025084013041bc9c7449e8d32756.lean/declarations/finrank-left-dvd-finrank-sup-of-free--f7b1638e058f4c69e48cc177.md) | 56 | `result-track:f7b1638e058f4c69e48cc177bf846ecd85ad65b880d19b688c2c1c0546990285` |
| 4 | `theorem` | [rank_sup_eq_rank_right_mul_rank_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant014d6faa400dd397ff9c9f02ee2f2669f5fe025084013041bc9c7449e8d32756.lean/declarations/rank-sup-eq-rank-right-mul-rank-of-free--620557ccf313b6afb690e186.md) | 64 | `result-track:620557ccf313b6afb690e186015cffbe65387e4679c5714c9c595ffe77c914c5` |
| 5 | `theorem` | [finrank_sup_eq_finrank_right_mul_finrank_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant014d6faa400dd397ff9c9f02ee2f2669f5fe025084013041bc9c7449e8d32756.lean/declarations/finrank-sup-eq-finrank-right-mul-finrank-of-free--a72a9a7d519adc75cb916079.md) | 68 | `result-track:a72a9a7d519adc75cb91607963fae13c3961e0aff5cd2b706f1dd10ee0c82071` |
| 6 | `theorem` | [finrank_right_dvd_finrank_sup_of_free](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant014d6faa400dd397ff9c9f02ee2f2669f5fe025084013041bc9c7449e8d32756.lean/declarations/finrank-right-dvd-finrank-sup-of-free--72fad0bf957376a4d990dacb.md) | 72 | `result-track:72fad0bf957376a4d990dacb7b12e22b335c7235621f1c17c7c7337df3e6d5d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
