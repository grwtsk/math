# Verification target: GRWTSK.Algebra.UniversalAlgebra.List.Variant4906979d13422c0b61b35ade6820ebae2ae4b5de7fd47273f676143f28ee9985

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5593a499e45a29790bb8e6cf536b7695674a2cd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/List/Variant4906979d13422c0b61b35ade6820ebae2ae4b5de7fd47273f676143f28ee9985.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variant4906979d13422c0b61b35ade6820ebae2ae4b5de7fd47273f676143f28ee9985.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variant4906979d13422c0b61b35ade6820ebae2ae4b5de7fd47273f676143f28ee9985.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5593a499e45a29790bb8e6cf536b7695674a2cd`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/List/Variant4906979d13422c0b61b35ade6820ebae2ae4b5de7fd47273f676143f28ee9985.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/List/Variant4906979d13422c0b61b35ade6820ebae2ae4b5de7fd47273f676143f28ee9985.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Commute` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Commute` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [list_sum_right](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variant4906979d13422c0b61b35ade6820ebae2ae4b5de7fd47273f676143f28ee9985.lean/declarations/list-sum-right--65cfe15b3652c816e3f5426a.md) | 26 | `result-track:65cfe15b3652c816e3f5426aef97451231fb53c3f7ed9454065151c8fbf010f5` |
| 2 | `lemma` | [list_sum_left](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variant4906979d13422c0b61b35ade6820ebae2ae4b5de7fd47273f676143f28ee9985.lean/declarations/list-sum-left--482216cf42a903f4eb73f598.md) | 33 | `result-track:482216cf42a903f4eb73f598434442ba7c39d854e277e798165b8e6ed63cd6dd` |
| 3 | `lemma` | [prod_map_neg](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variant4906979d13422c0b61b35ade6820ebae2ae4b5de7fd47273f676143f28ee9985.lean/declarations/prod-map-neg--bc5e9f22fe5b3fb1e9078b5e.md) | 43 | `result-track:bc5e9f22fe5b3fb1e9078b5eda50da3b222812b8cafd244a737675a3e11c52bb` |
| 4 | `lemma` | [prod_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variant4906979d13422c0b61b35ade6820ebae2ae4b5de7fd47273f676143f28ee9985.lean/declarations/prod-eq-zero--60c6ac65f61fd7e8b497fa22.md) | 55 | `result-track:60c6ac65f61fd7e8b497fa226897c127fa4cd755bbd77b54f3123d1d514f5eb9` |
| 5 | `lemma` | [prod_eq_zero_iff](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variant4906979d13422c0b61b35ade6820ebae2ae4b5de7fd47273f676143f28ee9985.lean/declarations/prod-eq-zero-iff--5bd42a1dc55809012bf9b31c.md) | 66 | `result-track:5bd42a1dc55809012bf9b31c549c875a9a643e6ccdf45a231efffb9d337509d5` |
| 6 | `lemma` | [prod_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variant4906979d13422c0b61b35ade6820ebae2ae4b5de7fd47273f676143f28ee9985.lean/declarations/prod-ne-zero--f69134c4620a806c0f053600.md) | 70 | `result-track:f69134c4620a806c0f053600817c49e7d0b1359ce233c3d638cd94081fe18fe4` |
| 7 | `lemma` | [sum_map_mul_left](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variant4906979d13422c0b61b35ade6820ebae2ae4b5de7fd47273f676143f28ee9985.lean/declarations/sum-map-mul-left--edb93ef158cdb35c53632b26.md) | 77 | `result-track:edb93ef158cdb35c53632b262d3dba604bc5ce452a504185f485c61a71794edd` |
| 8 | `lemma` | [sum_map_mul_right](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variant4906979d13422c0b61b35ade6820ebae2ae4b5de7fd47273f676143f28ee9985.lean/declarations/sum-map-mul-right--42727a71e25d1fd4ddf09ae1.md) | 80 | `result-track:42727a71e25d1fd4ddf09ae1c7ec4cd335ac3e24a2ce404ba6ec59c82e864ddb` |
| 9 | `lemma` | [dvd_sum](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variant4906979d13422c0b61b35ade6820ebae2ae4b5de7fd47273f676143f28ee9985.lean/declarations/dvd-sum--ac3ac6e1bcb1e1df13ea805f.md) | 85 | `result-track:ac3ac6e1bcb1e1df13ea805f27b4d78da93677d02099383b140866b0e17dcdb3` |
| 10 | `lemma` | [sum_zipWith_distrib_left](../../../../../mathematics/Algebra/UniversalAlgebra/List/Variant4906979d13422c0b61b35ade6820ebae2ae4b5de7fd47273f676143f28ee9985.lean/declarations/sum-zipwith-distrib-left--897271ad2c8ceb907da16eae.md) | 92 | `result-track:897271ad2c8ceb907da16eae041cef4775afb8bec677dd9a983733c04b4bfb04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
