# Verification target: GRWTSK.Algebra.Monomial.Variantc29186108386ed233a87d6688501408aaf0604b9faf63b6fb6d56c874ff9e581

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27c520c3df957619a2b41d22d117f46bd39b4bf0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Monomial/Variantc29186108386ed233a87d6688501408aaf0604b9faf63b6fb6d56c874ff9e581.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Monomial/Variantc29186108386ed233a87d6688501408aaf0604b9faf63b6fb6d56c874ff9e581.lean/index.md) · [Full source](../../../../mathematics/Algebra/Monomial/Variantc29186108386ed233a87d6688501408aaf0604b9faf63b6fb6d56c874ff9e581.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27c520c3df957619a2b41d22d117f46bd39b4bf0`.

Source path: `GRWTSK/Algebra/Monomial/Variantc29186108386ed233a87d6688501408aaf0604b9faf63b6fb6d56c874ff9e581.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Monomial/Variantc29186108386ed233a87d6688501408aaf0604b9faf63b6fb6d56c874ff9e581.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [monomial_one_eq_iff](../../../../mathematics/Algebra/Monomial/Variantc29186108386ed233a87d6688501408aaf0604b9faf63b6fb6d56c874ff9e581.lean/declarations/monomial-one-eq-iff--17d9ada900f92025c2c0ddad.md) | 23 | `result-track:17d9ada900f92025c2c0ddad2e537db2e287b0f0cf4d315b0e34613b52da1232` |
| 2 | `instance` | [infinite](../../../../mathematics/Algebra/Monomial/Variantc29186108386ed233a87d6688501408aaf0604b9faf63b6fb6d56c874ff9e581.lean/declarations/infinite--65c860cab5a6f812577d5b69.md) | 28 | `declaration-track:65c860cab5a6f812577d5b693ab180ebc20adf2cf0758985a985291ed280b362` |
| 3 | `theorem` | [card_support_le_one_iff_monomial](../../../../mathematics/Algebra/Monomial/Variantc29186108386ed233a87d6688501408aaf0604b9faf63b6fb6d56c874ff9e581.lean/declarations/card-support-le-one-iff-monomial--b05a2037e54b823098c4befe.md) | 31 | `result-track:b05a2037e54b823098c4befe3591569a0203af1a275e4ed1acfbadc06dd5cd8f` |
| 4 | `theorem` | [ringHom_ext](../../../../mathematics/Algebra/Monomial/Variantc29186108386ed233a87d6688501408aaf0604b9faf63b6fb6d56c874ff9e581.lean/declarations/ringhom-ext--c5f312666c3f31ce72330a8e.md) | 50 | `result-track:c5f312666c3f31ce72330a8e74d6923223f522e24bf36d7aae650c48419792cb` |
| 5 | `theorem` | [ringHom_ext'](../../../../mathematics/Algebra/Monomial/Variantc29186108386ed233a87d6688501408aaf0604b9faf63b6fb6d56c874ff9e581.lean/declarations/ringhom-ext--0160d1c10c3b231f5ed4f6c1.md) | 71 | `result-track:0160d1c10c3b231f5ed4f6c1da51051b2138717a1fabb7ac6f6eb54a6695a1ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
