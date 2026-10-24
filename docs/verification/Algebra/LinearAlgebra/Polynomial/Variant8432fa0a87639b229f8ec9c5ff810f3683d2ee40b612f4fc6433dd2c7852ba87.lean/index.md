# Verification target: GRWTSK.Algebra.LinearAlgebra.Polynomial.Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1226b5b9dd5eceaaa54a8ebf7f62218f85acd9b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1226b5b9dd5eceaaa54a8ebf7f62218f85acd9b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Expand` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Finite.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [C_dvd_iff_zmod](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/c-dvd-iff-zmod--8d982d81b09006822f0e5c2c.md) | 23 | `result-track:8d982d81b09006822f0e5c2ccfea1153e495f67aa4a63d3840d3e107bc243f5a` |
| 2 | `theorem` | [frobenius_zmod](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/frobenius-zmod--4104bae8c362705fbd2c6ee1.md) | 31 | `result-track:4104bae8c362705fbd2c6ee1a366e11e220df1b960f9d31215042ef5c7a8b677` |
| 3 | `theorem` | [expand_zmod](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/expand-zmod--717b77a31621d98373fa6a96.md) | 38 | `result-track:717b77a31621d98373fa6a96f3403c9d2374c954411013c72233e864d6e29579` |
| 4 | `def` | [indicator](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/indicator--c59f30b5efc45b84c3ae57bb.md) | 58 | `declaration-track:c59f30b5efc45b84c3ae57bb48ce9cb69783b5b263441503736a17cfe7444f22` |
| 5 | `theorem` | [eval_indicator_apply_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/eval-indicator-apply-eq-one--c6e0d6e6245a555f4438d27e.md) | 65 | `result-track:c6e0d6e6245a555f4438d27e720a5a9249c481b570fe3c58d3871546280a8523` |
| 6 | `theorem` | [degrees_indicator](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/degrees-indicator--70ea2bdbb743a4519b0dda3f.md) | 71 | `result-track:70ea2bdbb743a4519b0dda3f8630e0fd8d67c84c1198af4c03bae6836c5ca873` |
| 7 | `theorem` | [indicator_mem_restrictDegree](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/indicator-mem-restrictdegree--31d48117c098749fb921f036.md) | 82 | `result-track:31d48117c098749fb921f03626cb77e72b97ee07a6a14a1f044853ce79bd80f8` |
| 8 | `theorem` | [eval_indicator_apply_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/eval-indicator-apply-eq-zero--50d1bc437daba857c86abcb7.md) | 101 | `result-track:50d1bc437daba857c86abcb7afd620d0b402463c134203830f9d3b31cbc90c0d` |
| 9 | `def` | [evalₗ](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/eval--5991fe9fb6afdb6ba77d90dd.md) | 117 | `declaration-track:5991fe9fb6afdb6ba77d90dd4d8bb16d3273f1f3b3f527564989a474496e640d` |
| 10 | `theorem` | [map_restrict_dom_evalₗ](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/map-restrict-dom-eval--a7c82353adeae032cce5e0b7.md) | 124 | `result-track:a7c82353adeae032cce5e0b78afea21098b71e8eab7297e9b7d53b9bb4bc64aa` |
| 11 | `def` | [R](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/r--b3410027918bee9c2f4a6871.md) | 157 | `declaration-track:b3410027918bee9c2f4a6871f4d4d8a62a0b6294b236310968d1e9c556eafa2f` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/instance--f781a35b69511e890e174962.md) | 161 | `declaration-track:f781a35b69511e890e1749621a209a340b9b5f6fd0f8db41b6a2aa6dcf35323d` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/instance--577128a186abd0fb5715502c.md) | 164 | `declaration-track:577128a186abd0fb5715502cd4b300ed00cfdfb97d7fe7514df5eb9317800d19` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/instance--c3ea256a823b27f1e78afa4d.md) | 167 | `declaration-track:c3ea256a823b27f1e78afa4d00e660abc2319dc68c1f05aaf977cead6b82c0bc` |
| 15 | `def` | [evalᵢ](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/eval--f90530ed7f5e8e59545bd042.md) | 171 | `declaration-track:f90530ed7f5e8e59545bd042f8ac2f6b4f7d7c3fa66dc6a89bfde357c2e5737e` |
| 16 | `instance` | [decidableRestrictDegree](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/decidablerestrictdegree--67b537d0b2c31bb55fadc9b6.md) | 176 | `declaration-track:67b537d0b2c31bb55fadc9b6f79f8a9345182ac5185901b8e23949f2884a40fb` |
| 17 | `theorem` | [rank_R](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/rank-r--e42b8ba3816736b073d02805.md) | 183 | `result-track:e42b8ba3816736b073d02805266ffa0c97e0587d266b0fb473b05b81f781421e` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/instance--f480d687b17183bdc01e25a2.md) | 201 | `declaration-track:f480d687b17183bdc01e25a21761fc822d926d53e655c804921b5bf633c6f874` |
| 19 | `theorem` | [finrank_R](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/finrank-r--21f8d92566b883f5c12f6886.md) | 210 | `result-track:21f8d92566b883f5c12f68869b8f05511afa59f499676545851be5cf87e62fd4` |
| 20 | `theorem` | [range_evalᵢ](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/range-eval--cf9375be63167b72598a6506.md) | 213 | `result-track:cf9375be63167b72598a6506a15573bd7c7abe3f7610aeece5308f7d220953ea` |
| 21 | `theorem` | [ker_evalₗ](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/ker-eval--4b07f6134db649851a83864f.md) | 217 | `result-track:4b07f6134db649851a83864fb2878d228c94415b7ed30beebac37fec0b0d383c` |
| 22 | `theorem` | [eq_zero_of_eval_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Polynomial/Variant8432fa0a87639b229f8ec9c5ff810f3683d2ee40b612f4fc6433dd2c7852ba87.lean/declarations/eq-zero-of-eval-eq-zero--2d66c020f320d31eed419f56.md) | 223 | `result-track:2d66c020f320d31eed419f5679f47edb61769ed4bc187d7703fc703eea85042b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
