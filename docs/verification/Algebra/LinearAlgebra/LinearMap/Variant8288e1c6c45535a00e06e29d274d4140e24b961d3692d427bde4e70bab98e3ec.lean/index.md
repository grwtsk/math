# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearMap.Variant8288e1c6c45535a00e06e29d274d4140e24b961d3692d427bde4e70bab98e3ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91aa402f477fa817cbd2bb9260bbb76d620824dd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant8288e1c6c45535a00e06e29d274d4140e24b961d3692d427bde4e70bab98e3ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant8288e1c6c45535a00e06e29d274d4140e24b961d3692d427bde4e70bab98e3ec.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant8288e1c6c45535a00e06e29d274d4140e24b961d3692d427bde4e70bab98e3ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91aa402f477fa817cbd2bb9260bbb76d620824dd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant8288e1c6c45535a00e06e29d274d4140e24b961d3692d427bde4e70bab98e3ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearMap/Variant8288e1c6c45535a00e06e29d274d4140e24b961d3692d427bde4e70bab98e3ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.Finite.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Trace` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [toMatrix_directSum_collectedBasis_eq_blockDiagonal'](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant8288e1c6c45535a00e06e29d274d4140e24b961d3692d427bde4e70bab98e3ec.lean/declarations/tomatrix-directsum-collectedbasis-eq-blockdiagonal--45d971093d4cdb11abb45427.md) | 39 | `result-track:45d971093d4cdb11abb45427986149426e0aedddd3379024872b3f4aada334d6` |
| 2 | `lemma` | [diag_toMatrix_directSum_collectedBasis_eq_zero_of_mapsTo_ne](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant8288e1c6c45535a00e06e29d274d4140e24b961d3692d427bde4e70bab98e3ec.lean/declarations/diag-tomatrix-directsum-collectedbasis-eq-zero-of-mapsto-ne--826f65bc8954ccbc2ea03b29.md) | 53 | `result-track:826f65bc8954ccbc2ea03b29729b0aba6da42f1a84b29b6f42d043718a208b14` |
| 3 | `lemma` | [trace_eq_sum_trace_restrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant8288e1c6c45535a00e06e29d274d4140e24b961d3692d427bde4e70bab98e3ec.lean/declarations/trace-eq-sum-trace-restrict--357e2fd1dc9afcefdbacdf3b.md) | 73 | `result-track:357e2fd1dc9afcefdbacdf3b4f3a95d485886230469549700cc61d8d3a51e08e` |
| 4 | `lemma` | [trace_eq_sum_trace_restrict'](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant8288e1c6c45535a00e06e29d274d4140e24b961d3692d427bde4e70bab98e3ec.lean/declarations/trace-eq-sum-trace-restrict--93430078e635690d332d196c.md) | 81 | `result-track:93430078e635690d332d196c8e71b431eb28a789c1248f45a4249fe1bea90690` |
| 5 | `lemma` | [trace_eq_zero_of_mapsTo_ne](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant8288e1c6c45535a00e06e29d274d4140e24b961d3692d427bde4e70bab98e3ec.lean/declarations/trace-eq-zero-of-mapsto-ne--84f6a74c01bb3cb24dd449f1.md) | 89 | `result-track:84f6a74c01bb3cb24dd449f15bd43abdf8ef5fe70e86a0e8b9f7745db970df32` |
| 6 | `lemma` | [trace_comp_eq_zero_of_commute_of_trace_restrict_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant8288e1c6c45535a00e06e29d274d4140e24b961d3692d427bde4e70bab98e3ec.lean/declarations/trace-comp-eq-zero-of-commute-of-trace-restrict-eq-zero--6c5020e61e3cf31bb1a8450f.md) | 107 | `result-track:6c5020e61e3cf31bb1a8450f83c6306ab154cd3f5d161e0d402e7ed99f8a9b41` |
| 7 | `lemma` | [mapsTo_biSup_of_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant8288e1c6c45535a00e06e29d274d4140e24b961d3692d427bde4e70bab98e3ec.lean/declarations/mapsto-bisup-of-mapsto--76f14b2d4ea5b832c5a0478e.md) | 132 | `result-track:76f14b2d4ea5b832c5a0478e33b303d24b7e052b83ba5f52283c866bdfc873f8` |
| 8 | `lemma` | [trace_eq_sum_trace_restrict_of_eq_biSup](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant8288e1c6c45535a00e06e29d274d4140e24b961d3692d427bde4e70bab98e3ec.lean/declarations/trace-eq-sum-trace-restrict-of-eq-bisup--393e0417767c136ce6a776e6.md) | 145 | `result-track:393e0417767c136ce6a776e6df8e32d351f17f554e93261ca19cf6306e112b07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
