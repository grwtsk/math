# Verification target: GRWTSK.Algebra.LinearAlgebra.Zero.Varianta4a1916f6e5bec54e92cc85a63797617a33aa8ed1a58a95b92d499c01bfd0292

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66165ee7821805713a12fd845e21f1c7d97d8393",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Zero/Varianta4a1916f6e5bec54e92cc85a63797617a33aa8ed1a58a95b92d499c01bfd0292.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Zero/Varianta4a1916f6e5bec54e92cc85a63797617a33aa8ed1a58a95b92d499c01bfd0292.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Zero/Varianta4a1916f6e5bec54e92cc85a63797617a33aa8ed1a58a95b92d499c01bfd0292.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66165ee7821805713a12fd845e21f1c7d97d8393`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Zero/Varianta4a1916f6e5bec54e92cc85a63797617a33aa8ed1a58a95b92d499c01bfd0292.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Zero/Varianta4a1916f6e5bec54e92cc85a63797617a33aa8ed1a58a95b92d499c01bfd0292.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Charpoly.ToMatrix` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Minpoly` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Artinian.Module` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsNilpotent.charpoly_eq_X_pow_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Zero/Varianta4a1916f6e5bec54e92cc85a63797617a33aa8ed1a58a95b92d499c01bfd0292.lean/declarations/isnilpotent-charpoly-eq-x-pow-finrank--edb43fba8718c48df4b38015.md) | 39 | `result-track:edb43fba8718c48df4b3801504791a03400dec09787dcf94efae7e218394cedc` |
| 2 | `lemma` | [isNilpotent_iff_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Zero/Varianta4a1916f6e5bec54e92cc85a63797617a33aa8ed1a58a95b92d499c01bfd0292.lean/declarations/isnilpotent-iff-charpoly--2a091e98df8de9c7617fc75b.md) | 49 | `result-track:2a091e98df8de9c7617fc75bb9df23cc5a9a93c3222d23090455c3d99e9a9bfe` |
| 3 | `lemma` | [charpoly_nilpotent_tfae](../../../../../mathematics/Algebra/LinearAlgebra/Zero/Varianta4a1916f6e5bec54e92cc85a63797617a33aa8ed1a58a95b92d499c01bfd0292.lean/declarations/charpoly-nilpotent-tfae--00f9ba5523ec62531f2790a7.md) | 55 | `result-track:00f9ba5523ec62531f2790a791e853338c3fbd213c54cce9a64eae0baff926c8` |
| 4 | `lemma` | [charpoly_eq_X_pow_iff](../../../../../mathematics/Algebra/LinearAlgebra/Zero/Varianta4a1916f6e5bec54e92cc85a63797617a33aa8ed1a58a95b92d499c01bfd0292.lean/declarations/charpoly-eq-x-pow-iff--e3cf0f01254c20eaa118ee5f.md) | 80 | `result-track:e3cf0f01254c20eaa118ee5f1b1bf454161a9505413726b735fe73c3c9cce931` |
| 5 | `lemma` | [hasEigenvalue_zero_tfae](../../../../../mathematics/Algebra/LinearAlgebra/Zero/Varianta4a1916f6e5bec54e92cc85a63797617a33aa8ed1a58a95b92d499c01bfd0292.lean/declarations/haseigenvalue-zero-tfae--22923375ba58ba26aa376150.md) | 85 | `result-track:22923375ba58ba26aa3761503875c04d7643d7e4b3aae1905c5d55acf8de83a4` |
| 6 | `lemma` | [charpoly_constantCoeff_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Zero/Varianta4a1916f6e5bec54e92cc85a63797617a33aa8ed1a58a95b92d499c01bfd0292.lean/declarations/charpoly-constantcoeff-eq-zero-iff--ff58a46b35ee181390f18d34.md) | 116 | `result-track:ff58a46b35ee181390f18d341ab203dc0fc55c1a23255e4acddcad000f0a0d15` |
| 7 | `lemma` | [not_hasEigenvalue_zero_tfae](../../../../../mathematics/Algebra/LinearAlgebra/Zero/Varianta4a1916f6e5bec54e92cc85a63797617a33aa8ed1a58a95b92d499c01bfd0292.lean/declarations/not-haseigenvalue-zero-tfae--e9aaa9b9b501a57ea4e333bf.md) | 121 | `result-track:e9aaa9b9b501a57ea4e333bf33cf425ccc7004276c1a6705009fd9d29a9b2e4e` |
| 8 | `lemma` | [finrank_maxGenEigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Zero/Varianta4a1916f6e5bec54e92cc85a63797617a33aa8ed1a58a95b92d499c01bfd0292.lean/declarations/finrank-maxgeneigenspace--ba4d97b64c3a6f2359a02994.md) | 137 | `result-track:ba4d97b64c3a6f2359a02994e7cc158c4fe6a99c5557872b4eeb5c56afed92dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
