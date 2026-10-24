# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ClosedUnderIsomorphisms.Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fb529a5b38985f9de50e5e6fc37f4c45a5f1aec",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fb529a5b38985f9de50e5e6fc37f4c45a5f1aec`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Iso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsClosedUnderIsomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6.lean/declarations/isclosedunderisomorphisms--b8d9966d90f30b935309606e.md) | 28 | `declaration-track:b8d9966d90f30b935309606e500f3156b6bbf7d10d1e53dd9bef77c8cb69c03c` |
| 2 | `lemma` | [prop_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6.lean/declarations/prop-of-iso--4f31b997338774a1e0f24986.md) | 33 | `result-track:4f31b997338774a1e0f249862639d331119c934e6dc6908b7bed3b703a3c13b7` |
| 3 | `lemma` | [prop_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6.lean/declarations/prop-iff-of-iso--e686c1518c26a51548086267.md) | 36 | `result-track:e686c1518c26a51548086267e00efd9e2798272737f6c5f3549648a2dfcdb4aa` |
| 4 | `lemma` | [prop_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6.lean/declarations/prop-of-isiso--8b4092e905bd11cda4dd01f0.md) | 39 | `result-track:8b4092e905bd11cda4dd01f0f60e1d5821b673b85f927a1a99d74190e3365831` |
| 5 | `lemma` | [prop_iff_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6.lean/declarations/prop-iff-of-isiso--7993c28dced3e24e7b230041.md) | 43 | `result-track:7993c28dced3e24e7b2300412f102449897e1adf2b4855a68ed476407c0377e6` |
| 6 | `def` | [isoClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6.lean/declarations/isoclosure--8c86df645e3e47c4d7b00a03.md) | 47 | `declaration-track:8c86df645e3e47c4d7b00a03024eff33171abb948b33bf22c3f8da223a893c72` |
| 7 | `lemma` | [prop_isoClosure_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6.lean/declarations/prop-isoclosure-iff--570c5574b7a90a943d6936c9.md) | 49 | `result-track:570c5574b7a90a943d6936c948416bd6739421fd183fa15fcd0fae2018c7c4c2` |
| 8 | `lemma` | [prop_isoClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6.lean/declarations/prop-isoclosure--63fbb24473f7569d1f13853b.md) | 53 | `result-track:63fbb24473f7569d1f13853bb3480096ec8e63dc0c90541d0ce9684400b36a0a` |
| 9 | `lemma` | [le_isoClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6.lean/declarations/le-isoclosure--521855984ccd8182d0c8a32d.md) | 56 | `result-track:521855984ccd8182d0c8a32de7545556831d7b62dc4e5dd8b05eee869ad05158` |
| 10 | `lemma` | [monotone_isoClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6.lean/declarations/monotone-isoclosure--89820006e398f4c8c5cd5003.md) | 60 | `result-track:89820006e398f4c8c5cd50033b7a382c396cd7364c27ef6516bbb055226fc30a` |
| 11 | `lemma` | [isoClosure_eq_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6.lean/declarations/isoclosure-eq-self--3bee1938bfb23f2994c6f5a6.md) | 64 | `result-track:3bee1938bfb23f2994c6f5a603303007eb881a88169859ec78a98c8a79e3de7e` |
| 12 | `lemma` | [isoClosure_le_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6.lean/declarations/isoclosure-le-iff--4ece3ef84640dfcbaa6f090d.md) | 70 | `result-track:4ece3ef84640dfcbaa6f090dd19c407064524931b19420c5fa36278604830f51` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6.lean/declarations/instance--f592c552da4e844da2928bd9.md) | 74 | `declaration-track:f592c552da4e844da2928bd929ee5e95e79e658581a2e5b37af1928e3f38ee9f` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6.lean/declarations/instance--9de14a7ad76a69b29ee7d3f4.md) | 79 | `declaration-track:9de14a7ad76a69b29ee7d3f48d979bed9cfd4fd1fabe7768374e2dfb8caa317a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ClosedUnderIsomorphisms/Variant798065de909958940b2ce63198fe7fbd17875369733b790fbcece19477618fd6.lean/declarations/instance--d5799496e3874b35eacec607.md) | 84 | `declaration-track:d5799496e3874b35eacec6077a7fb7ab0fc1f8e63cb0fb0fb3f73b4fe78f9727` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
