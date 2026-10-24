# Verification target: GRWTSK.Algebra.LinearAlgebra.Zero.Variant85eed32a7ec97808142e78b21f66735544134cea248d20d80da716d0463e7583

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1bf3d4ea13e2b706437d23157898ba4665dcfeb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Zero/Variant85eed32a7ec97808142e78b21f66735544134cea248d20d80da716d0463e7583.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Zero/Variant85eed32a7ec97808142e78b21f66735544134cea248d20d80da716d0463e7583.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Zero/Variant85eed32a7ec97808142e78b21f66735544134cea248d20d80da716d0463e7583.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1bf3d4ea13e2b706437d23157898ba4665dcfeb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Zero/Variant85eed32a7ec97808142e78b21f66735544134cea248d20d80da716d0463e7583.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Zero/Variant85eed32a7ec97808142e78b21f66735544134cea248d20d80da716d0463e7583.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Charpoly.ToMatrix` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Minpoly` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Artinian.Module` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsNilpotent.charpoly_eq_X_pow_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Zero/Variant85eed32a7ec97808142e78b21f66735544134cea248d20d80da716d0463e7583.lean/declarations/isnilpotent-charpoly-eq-x-pow-finrank--d721c727f6731d095704a324.md) | 47 | `result-track:d721c727f6731d095704a324e78eb7341d551d546512fc7cfc5bf77ebaeca144` |
| 2 | `lemma` | [isNilpotent_iff_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Zero/Variant85eed32a7ec97808142e78b21f66735544134cea248d20d80da716d0463e7583.lean/declarations/isnilpotent-iff-charpoly--eba647e1a3790cda7c782926.md) | 57 | `result-track:eba647e1a3790cda7c7829264834c26381c86e680fe4e81fb0a2af304860ac2d` |
| 3 | `lemma` | [charpoly_nilpotent_tfae](../../../../../mathematics/Algebra/LinearAlgebra/Zero/Variant85eed32a7ec97808142e78b21f66735544134cea248d20d80da716d0463e7583.lean/declarations/charpoly-nilpotent-tfae--617c55c5c50bc9511e2bb5c0.md) | 63 | `result-track:617c55c5c50bc9511e2bb5c05dc14eac66289a399eeaffb9f19f3f8a2dc156d8` |
| 4 | `lemma` | [charpoly_eq_X_pow_iff](../../../../../mathematics/Algebra/LinearAlgebra/Zero/Variant85eed32a7ec97808142e78b21f66735544134cea248d20d80da716d0463e7583.lean/declarations/charpoly-eq-x-pow-iff--ea953d516611126e8d030653.md) | 88 | `result-track:ea953d516611126e8d0306530686ec5c8b44158d23d1c86cf999c3bbe6372a04` |
| 5 | `lemma` | [hasEigenvalue_zero_tfae](../../../../../mathematics/Algebra/LinearAlgebra/Zero/Variant85eed32a7ec97808142e78b21f66735544134cea248d20d80da716d0463e7583.lean/declarations/haseigenvalue-zero-tfae--981d158a631db703d06095a7.md) | 93 | `result-track:981d158a631db703d06095a704d07cdef922b712fa97ca3f5c3ba07474c19ee0` |
| 6 | `lemma` | [charpoly_constantCoeff_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Zero/Variant85eed32a7ec97808142e78b21f66735544134cea248d20d80da716d0463e7583.lean/declarations/charpoly-constantcoeff-eq-zero-iff--a2da67c7cab3f1e8a404fe38.md) | 124 | `result-track:a2da67c7cab3f1e8a404fe38b863ab8368a7e7765e7438e387d2fd199eea8407` |
| 7 | `lemma` | [not_hasEigenvalue_zero_tfae](../../../../../mathematics/Algebra/LinearAlgebra/Zero/Variant85eed32a7ec97808142e78b21f66735544134cea248d20d80da716d0463e7583.lean/declarations/not-haseigenvalue-zero-tfae--a0001fde621303ea21770618.md) | 129 | `result-track:a0001fde621303ea217706186ce4f07cc9ea56442ae3ec494407eabd75fb4b2d` |
| 8 | `lemma` | [finrank_maxGenEigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Zero/Variant85eed32a7ec97808142e78b21f66735544134cea248d20d80da716d0463e7583.lean/declarations/finrank-maxgeneigenspace--d80577199c4cd9e82ba18016.md) | 145 | `result-track:d80577199c4cd9e82ba18016a24ec5c395671066bd20fd30bb6167eba29326c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
