# Verification target: GRWTSK.Algebra.UniversalAlgebra.Algebra.Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38434952e433e739f6ccbb68385cd8b92a14afc2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Algebra/Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38434952e433e739f6ccbb68385cd8b92a14afc2`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Algebra/Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Algebra/Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [algebraMap_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19.lean/declarations/algebramap-mono--fdc8c332bf8dee4160d398a0.md) | 25 | `result-track:fdc8c332bf8dee4160d398a0d1822b500e7657948050f9dc9a846d1cc27ac5ee` |
| 2 | `lemma` | [GCongr.algebraMap_le_algebraMap](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19.lean/declarations/gcongr-algebramap-le-algebramap--a2955e35012501b5e729fafb.md) | 31 | `result-track:a2955e35012501b5e729fafb9c39fcef889afce51e79805b9c8f2c64124394ce` |
| 3 | `lemma` | [algebraMap_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19.lean/declarations/algebramap-nonneg--5c29c317c6ea3fda412d104c.md) | 34 | `result-track:5c29c317c6ea3fda412d104cba6f802b605d14e23233041d29f49585dbe090fc` |
| 4 | `lemma` | [algebraMap_le_algebraMap](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19.lean/declarations/algebramap-le-algebramap--d34c172c8560a30afa99d57f.md) | 44 | `result-track:d34c172c8560a30afa99d57f31982102cbcf5f08c68bbaeb4fb63650b86b9e5e` |
| 5 | `lemma` | [algebraMap_strictMono](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19.lean/declarations/algebramap-strictmono--8944c1963a506003a52cb687.md) | 53 | `result-track:8944c1963a506003a52cb6877ca8f5f9c2cdd16190eb4ca2d0026acd5075f367` |
| 6 | `lemma` | [GCongr.algebraMap_lt_algebraMap](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19.lean/declarations/gcongr-algebramap-lt-algebramap--f3fd847b19a37a2358ee3033.md) | 59 | `result-track:f3fd847b19a37a2358ee3033d02aef59b9cbc1ce98e8d14217de51aa26f79b9b` |
| 7 | `lemma` | [algebraMap_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19.lean/declarations/algebramap-pos--9e65ff9b405e5a6695c91b37.md) | 62 | `result-track:9e65ff9b405e5a6695c91b374a4c11f784942dae8d9b5344e8d69cd311174a60` |
| 8 | `lemma` | [algebraMap_lt_algebraMap](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19.lean/declarations/algebramap-lt-algebramap--2d6818b748f1bddf6eb8817e.md) | 68 | `result-track:2d6818b748f1bddf6eb8817e48970f168197d11091cc560604f83608d6470093` |
| 9 | `def` | [evalAlgebraMap](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19.lean/declarations/evalalgebramap--3489ec8e49824a5417da3fa9.md) | 79 | `declaration-track:3489ec8e49824a5417da3fa970a046d8bb84ef25cc5f13888e5039512ace4b31` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19.lean/declarations/example--ec377d52e58dd56735958e5c.md) | 111 | `declaration-track:ec377d52e58dd56735958e5c9d222f67f03183bd2f67cc074a057b0bdbb2f827` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19.lean/declarations/example--c07507907c98a9609af9e827.md) | 115 | `declaration-track:c07507907c98a9609af9e8279c55cfd1de5334f29b286a2c089c490535654496` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Algebra/Variantcdd2e113dedbe1efaf23aec5d4923b5588ce171e5fe80aa0d6c796aa38949f19.lean/declarations/example--ae4d465e759d4ee1355c77d9.md) | 119 | `declaration-track:ae4d465e759d4ee1355c77d980b87e0a4904629fc74920ae510aa2ac192697e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
