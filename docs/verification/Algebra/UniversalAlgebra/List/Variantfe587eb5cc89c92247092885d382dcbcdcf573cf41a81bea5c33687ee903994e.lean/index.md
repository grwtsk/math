# Verification target: GRWTSK.Algebra.UniversalAlgebra.List.Variantfe587eb5cc89c92247092885d382dcbcdcf573cf41a81bea5c33687ee903994e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32eb252804b3914860042d412d798dd1cd8a540f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/List/Variantfe587eb5cc89c92247092885d382dcbcdcf573cf41a81bea5c33687ee903994e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variantfe587eb5cc89c92247092885d382dcbcdcf573cf41a81bea5c33687ee903994e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variantfe587eb5cc89c92247092885d382dcbcdcf573cf41a81bea5c33687ee903994e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32eb252804b3914860042d412d798dd1cd8a540f`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/List/Variantfe587eb5cc89c92247092885d382dcbcdcf573cf41a81bea5c33687ee903994e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/List/Variantfe587eb5cc89c92247092885d382dcbcdcf573cf41a81bea5c33687ee903994e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Commute` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Commute` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [list_sum_right](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variantfe587eb5cc89c92247092885d382dcbcdcf573cf41a81bea5c33687ee903994e.lean/declarations/list-sum-right--36d3e8f071270994ff30718e.md) | 34 | `result-track:36d3e8f071270994ff30718ee64a6f6ed4cdb400b0d7a48057f20c4a621fca52` |
| 2 | `lemma` | [list_sum_left](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variantfe587eb5cc89c92247092885d382dcbcdcf573cf41a81bea5c33687ee903994e.lean/declarations/list-sum-left--37c3d81efed7f5404423c80f.md) | 41 | `result-track:37c3d81efed7f5404423c80f08d9f849a9f00db747b831d170142e4a0606d11f` |
| 3 | `lemma` | [prod_map_neg](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variantfe587eb5cc89c92247092885d382dcbcdcf573cf41a81bea5c33687ee903994e.lean/declarations/prod-map-neg--3db2a5df337fec7fa7c06e5f.md) | 51 | `result-track:3db2a5df337fec7fa7c06e5f20d150bc1dee0bd24b808f6081eefb74391490ef` |
| 4 | `lemma` | [prod_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variantfe587eb5cc89c92247092885d382dcbcdcf573cf41a81bea5c33687ee903994e.lean/declarations/prod-eq-zero--45ebf2f10ffe023020582225.md) | 63 | `result-track:45ebf2f10ffe02302058222533ae5a36e849ad54489602523d688ee0a216db66` |
| 5 | `lemma` | [prod_eq_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variantfe587eb5cc89c92247092885d382dcbcdcf573cf41a81bea5c33687ee903994e.lean/declarations/prod-eq-zero-iff--8804cb9b5fa3fefcb78ef4c7.md) | 74 | `result-track:8804cb9b5fa3fefcb78ef4c711dd060a5bfef3db9865dd3c7aee743e36a29914` |
| 6 | `lemma` | [prod_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variantfe587eb5cc89c92247092885d382dcbcdcf573cf41a81bea5c33687ee903994e.lean/declarations/prod-ne-zero--b3b990d3df0da8494ee61fc6.md) | 78 | `result-track:b3b990d3df0da8494ee61fc6ab3cbc43d6859344d6961ad1ca8d140f5f0acfa6` |
| 7 | `lemma` | [sum_map_mul_left](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variantfe587eb5cc89c92247092885d382dcbcdcf573cf41a81bea5c33687ee903994e.lean/declarations/sum-map-mul-left--461f8bebf430b93c8c7bd0fd.md) | 85 | `result-track:461f8bebf430b93c8c7bd0fdf94d836d833f7907d78d950745ab57b623a4ccca` |
| 8 | `lemma` | [sum_map_mul_right](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variantfe587eb5cc89c92247092885d382dcbcdcf573cf41a81bea5c33687ee903994e.lean/declarations/sum-map-mul-right--1fbd7f17f36fe05a9f1656a8.md) | 88 | `result-track:1fbd7f17f36fe05a9f1656a85493ee4d8185f795ebd29aaf34a8e60bd9c98f23` |
| 9 | `lemma` | [dvd_sum](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variantfe587eb5cc89c92247092885d382dcbcdcf573cf41a81bea5c33687ee903994e.lean/declarations/dvd-sum--aeaf3155e8de67a0460a883f.md) | 93 | `result-track:aeaf3155e8de67a0460a883f16c47041e8020e3972a6ba4c03944e532ffc92ce` |
| 10 | `lemma` | [sum_zipWith_distrib_left](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variantfe587eb5cc89c92247092885d382dcbcdcf573cf41a81bea5c33687ee903994e.lean/declarations/sum-zipwith-distrib-left--05646b50f62a1af16e953494.md) | 100 | `result-track:05646b50f62a1af16e9534943a1bd0644f6e2482673233ddbaf0c8949bd93271` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
