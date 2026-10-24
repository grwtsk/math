# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NatDivisors.Variant83ea0a5a68c5e4806840983b1e7ec8a5dd480a6dc4e1247748b559bb6f8a9c3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ffc4228b8d407c3f1ee40de4811d384bbfcf7ae",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NatDivisors/Variant83ea0a5a68c5e4806840983b1e7ec8a5dd480a6dc4e1247748b559bb6f8a9c3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatDivisors/Variant83ea0a5a68c5e4806840983b1e7ec8a5dd480a6dc4e1247748b559bb6f8a9c3c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatDivisors/Variant83ea0a5a68c5e4806840983b1e7ec8a5dd480a6dc4e1247748b559bb6f8a9c3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ffc4228b8d407c3f1ee40de4811d384bbfcf7ae`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NatDivisors/Variant83ea0a5a68c5e4806840983b1e7ec8a5dd480a6dc4e1247748b559bb6f8a9c3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NatDivisors/Variant83ea0a5a68c5e4806840983b1e7ec8a5dd480a6dc4e1247748b559bb6f8a9c3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Divisors` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Nat.divisors_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatDivisors/Variant83ea0a5a68c5e4806840983b1e7ec8a5dd480a6dc4e1247748b559bb6f8a9c3c.lean/declarations/nat-divisors-mul--88724ee6336e351f8b270a9f.md) | 29 | `result-track:88724ee6336e351f8b270a9f095d752538441a97e8d152763c20f1fbd49090b3` |
| 2 | `def` | [Nat.divisorsHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatDivisors/Variant83ea0a5a68c5e4806840983b1e7ec8a5dd480a6dc4e1247748b559bb6f8a9c3c.lean/declarations/nat-divisorshom--bbe7f6385479f204b6c63f36.md) | 37 | `declaration-track:bbe7f6385479f204b6c63f3663d1b3b1466b2d4e75e49b68cbc6af5add28b320` |
| 3 | `lemma` | [Nat.Prime.divisors_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatDivisors/Variant83ea0a5a68c5e4806840983b1e7ec8a5dd480a6dc4e1247748b559bb6f8a9c3c.lean/declarations/nat-prime-divisors-sq--b86de987f7c6676010d9c4f8.md) | 42 | `result-track:b86de987f7c6676010d9c4f8c4b5d0a2e68b6820902380b9327f9f90a72ed592` |
| 4 | `lemma` | [List.nat_divisors_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatDivisors/Variant83ea0a5a68c5e4806840983b1e7ec8a5dd480a6dc4e1247748b559bb6f8a9c3c.lean/declarations/list-nat-divisors-prod--d43c9e3f7925b1e9be63035b.md) | 45 | `result-track:d43c9e3f7925b1e9be63035b6186d1734a2ca9565e99220ff90f57475480920b` |
| 5 | `lemma` | [Multiset.nat_divisors_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatDivisors/Variant83ea0a5a68c5e4806840983b1e7ec8a5dd480a6dc4e1247748b559bb6f8a9c3c.lean/declarations/multiset-nat-divisors-prod--e8c4aa6da4302f54b5fabc12.md) | 48 | `result-track:e8c4aa6da4302f54b5fabc12c0d136fa93aa0352f5f4443fd5e4899430faac7e` |
| 6 | `lemma` | [Finset.nat_divisors_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatDivisors/Variant83ea0a5a68c5e4806840983b1e7ec8a5dd480a6dc4e1247748b559bb6f8a9c3c.lean/declarations/finset-nat-divisors-prod--2541f7fc19569cf08b4516b1.md) | 51 | `result-track:2541f7fc19569cf08b4516b172bf06cfd734bfeb0553d993259d9d6c0b728665` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
