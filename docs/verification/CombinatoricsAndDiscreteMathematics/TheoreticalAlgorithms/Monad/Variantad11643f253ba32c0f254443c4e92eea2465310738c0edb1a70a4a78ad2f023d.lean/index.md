# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Monad.Variantad11643f253ba32c0f254443c4e92eea2465310738c0edb1a70a4a78ad2f023d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e83fa8141547373dc8d6f155713a46c6857006dd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variantad11643f253ba32c0f254443c4e92eea2465310738c0edb1a70a4a78ad2f023d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variantad11643f253ba32c0f254443c4e92eea2465310738c0edb1a70a4a78ad2f023d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variantad11643f253ba32c0f254443c4e92eea2465310738c0edb1a70a4a78ad2f023d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e83fa8141547373dc8d6f155713a46c6857006dd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variantad11643f253ba32c0f254443c4e92eea2465310738c0edb1a70a4a78ad2f023d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variantad11643f253ba32c0f254443c4e92eea2465310738c0edb1a70a4a78ad2f023d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Functor` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fintypeBind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variantad11643f253ba32c0f254443c4e92eea2465310738c0edb1a70a4a78ad2f023d.lean/declarations/fintypebind--6ade1b85c581dac6f1ab4ebf.md) | 48 | `declaration-track:6ade1b85c581dac6f1ab4ebfc6c026becc4f836202bf802448d790eb1be5b6fe` |
| 2 | `instance` | [fintypeBind'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variantad11643f253ba32c0f254443c4e92eea2465310738c0edb1a70a4a78ad2f023d.lean/declarations/fintypebind--905b43a6a310bd79a8805ea8.md) | 52 | `declaration-track:905b43a6a310bd79a8805ea8a033b104f299b00b039ffd27848bc8c8b8501b45` |
| 3 | `instance` | [fintypePure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variantad11643f253ba32c0f254443c4e92eea2465310738c0edb1a70a4a78ad2f023d.lean/declarations/fintypepure--0addae903625b9803c19c111.md) | 58 | `declaration-track:0addae903625b9803c19c111b66b435f76f0378955a6462d541de62e9a513157` |
| 4 | `instance` | [fintypeSeq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variantad11643f253ba32c0f254443c4e92eea2465310738c0edb1a70a4a78ad2f023d.lean/declarations/fintypeseq--1cd4ca4b92b28df25d6858e2.md) | 61 | `declaration-track:1cd4ca4b92b28df25d6858e2f7e41af120c9410f9346a747f0ca3937cdccad10` |
| 5 | `instance` | [fintypeSeq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variantad11643f253ba32c0f254443c4e92eea2465310738c0edb1a70a4a78ad2f023d.lean/declarations/fintypeseq--cac1c2ef54c16ec3539eaa68.md) | 66 | `declaration-track:cac1c2ef54c16ec3539eaa6875d36c6df7e54dbdf9efdb2ba6e856668e0343ee` |
| 6 | `theorem` | [finite_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variantad11643f253ba32c0f254443c4e92eea2465310738c0edb1a70a4a78ad2f023d.lean/declarations/finite-pure--8c21d488af012e9d25b26947.md) | 88 | `result-track:8c21d488af012e9d25b26947cb12819b8b6cb9fd166105017f165c0bdcd1f03e` |
| 7 | `instance` | [finite_seq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variantad11643f253ba32c0f254443c4e92eea2465310738c0edb1a70a4a78ad2f023d.lean/declarations/finite-seq--61406d99df6d394fd66e86b5.md) | 91 | `declaration-track:61406d99df6d394fd66e86b517048d29f6a06f260a572192b6a76ff5cf4a14d8` |
| 8 | `theorem` | [Finite.bind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variantad11643f253ba32c0f254443c4e92eea2465310738c0edb1a70a4a78ad2f023d.lean/declarations/finite-bind--ef15701ac3138efd5b1970e8.md) | 114 | `result-track:ef15701ac3138efd5b1970e8c3ada38e5131e0716246934f66b08a101c7225c7` |
| 9 | `theorem` | [Finite.seq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variantad11643f253ba32c0f254443c4e92eea2465310738c0edb1a70a4a78ad2f023d.lean/declarations/finite-seq--bd512bac9077ff1ff2bf7a35.md) | 120 | `result-track:bd512bac9077ff1ff2bf7a3503e175d2710955bfba05bed8fcae40f3b046f45a` |
| 10 | `theorem` | [Finite.seq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variantad11643f253ba32c0f254443c4e92eea2465310738c0edb1a70a4a78ad2f023d.lean/declarations/finite-seq--aa6f9352ca236ab395fa853f.md) | 124 | `result-track:aa6f9352ca236ab395fa853ff2d2c4f352c5dd9ad6bb50043dba7a3774bce846` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
