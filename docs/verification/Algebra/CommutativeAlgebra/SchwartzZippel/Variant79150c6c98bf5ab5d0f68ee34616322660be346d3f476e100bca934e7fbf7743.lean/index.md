# Verification target: GRWTSK.Algebra.CommutativeAlgebra.SchwartzZippel.Variant79150c6c98bf5ab5d0f68ee34616322660be346d3f476e100bca934e7fbf7743

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6d634d632f7355e2dc19d53e685c78940e5fc89",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SchwartzZippel/Variant79150c6c98bf5ab5d0f68ee34616322660be346d3f476e100bca934e7fbf7743.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/SchwartzZippel/Variant79150c6c98bf5ab5d0f68ee34616322660be346d3f476e100bca934e7fbf7743.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/SchwartzZippel/Variant79150c6c98bf5ab5d0f68ee34616322660be346d3f476e100bca934e7fbf7743.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6d634d632f7355e2dc19d53e685c78940e5fc89`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SchwartzZippel/Variant79150c6c98bf5ab5d0f68ee34616322660be346d3f476e100bca934e7fbf7743.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SchwartzZippel/Variant79150c6c98bf5ab5d0f68ee34616322660be346d3f476e100bca934e7fbf7743.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Equiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Variables` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Finset` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Finset` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Finset` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.Finset` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Finset` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [schwartz_zippel_sup_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/SchwartzZippel/Variant79150c6c98bf5ab5d0f68ee34616322660be346d3f476e100bca934e7fbf7743.lean/declarations/schwartz-zippel-sup-sum--9dbdb454647ab49708a76d75.md) | 76 | `result-track:9dbdb454647ab49708a76d754b0c5c696d315c31fa639e075faf874495f86799` |
| 2 | `lemma` | [schwartz_zippel_sum_degreeOf](../../../../../mathematics/Algebra/CommutativeAlgebra/SchwartzZippel/Variant79150c6c98bf5ab5d0f68ee34616322660be346d3f476e100bca934e7fbf7743.lean/declarations/schwartz-zippel-sum-degreeof--aabab1fe9d8599d6479baf72.md) | 183 | `result-track:aabab1fe9d8599d6479baf721e23663b370981ca4cf39c6056bc707519e9b9b5` |
| 3 | `lemma` | [schwartz_zippel_totalDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/SchwartzZippel/Variant79150c6c98bf5ab5d0f68ee34616322660be346d3f476e100bca934e7fbf7743.lean/declarations/schwartz-zippel-totaldegree--c36df2304909938c89da3d8a.md) | 196 | `result-track:c36df2304909938c89da3d8abbe920f1a81f891f3c6bbf1712b8b07ce3c03f0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
