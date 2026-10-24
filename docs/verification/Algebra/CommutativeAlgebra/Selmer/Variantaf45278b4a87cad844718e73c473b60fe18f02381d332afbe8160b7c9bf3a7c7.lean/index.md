# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Selmer.Variantaf45278b4a87cad844718e73c473b60fe18f02381d332afbe8160b7c9bf3a7c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d54d57060f4796fa29de2ec179f16392f319b67",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Selmer/Variantaf45278b4a87cad844718e73c473b60fe18f02381d332afbe8160b7c9bf3a7c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Selmer/Variantaf45278b4a87cad844718e73c473b60fe18f02381d332afbe8160b7c9bf3a7c7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Selmer/Variantaf45278b4a87cad844718e73c473b60fe18f02381d332afbe8160b7c9bf3a7c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d54d57060f4796fa29de2ec179f16392f319b67`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Selmer/Variantaf45278b4a87cad844718e73c473b60fe18f02381d332afbe8160b7c9bf3a7c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Selmer/Variantaf45278b4a87cad844718e73c473b60fe18f02381d332afbe8160b7c9bf3a7c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.UnitTrinomial` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.GaussLemma` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Selmer/Variantaf45278b4a87cad844718e73c473b60fe18f02381d332afbe8160b7c9bf3a7c7.lean/declarations/macro-rules--86b0ebc43bcd829aae9456c2.md) | 29 | `declaration-track:86b0ebc43bcd829aae9456c286ec83f483047142f70b30531cdf9ca19f293dfd` |
| 2 | `theorem` | [X_pow_sub_X_sub_one_irreducible_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/Selmer/Variantaf45278b4a87cad844718e73c473b60fe18f02381d332afbe8160b7c9bf3a7c7.lean/declarations/x-pow-sub-x-sub-one-irreducible-aux--8d3c3889fcd72d6856cc8429.md) | 33 | `result-track:8d3c3889fcd72d6856cc8429254529905f83598681f9912b1269984d89f2378e` |
| 3 | `theorem` | [X_pow_sub_X_sub_one_irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/Selmer/Variantaf45278b4a87cad844718e73c473b60fe18f02381d332afbe8160b7c9bf3a7c7.lean/declarations/x-pow-sub-x-sub-one-irreducible--464be4919dddfb72aefe3c42.md) | 51 | `result-track:464be4919dddfb72aefe3c423e54a20b8618e0be9e6651e93a00ee9851f311e2` |
| 4 | `theorem` | [X_pow_sub_X_sub_one_irreducible_rat](../../../../../mathematics/Algebra/CommutativeAlgebra/Selmer/Variantaf45278b4a87cad844718e73c473b60fe18f02381d332afbe8160b7c9bf3a7c7.lean/declarations/x-pow-sub-x-sub-one-irreducible-rat--0aaf2eb67daa7c02bc189b13.md) | 73 | `result-track:0aaf2eb67daa7c02bc189b13e16400484786a8c5f858e135b6f15856054fbeee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
