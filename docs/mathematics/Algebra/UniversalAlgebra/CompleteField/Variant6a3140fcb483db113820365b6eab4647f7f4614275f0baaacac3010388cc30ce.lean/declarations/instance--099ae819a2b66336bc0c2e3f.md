# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:726944fc0f829f85ed4cd28b4a737d14b3769391fe38f1d7d116f8fa257daa0f",
  "kind": "instance",
  "lexical_name": null,
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "instance--099ae819a2b66336bc0c2e3f",
  "source": {
    "blob": "23c9f80a6cc53ef2243a1b103a73413a7f6e05d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 86,
    "path": "GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:099ae819a2b66336bc0c2e3f7e07190a2ab8b54d6fac8fec2e0a371f5c8b1bd6",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:726944fc0f829f85ed4cd28b4a737d14b3769391fe38f1d7d116f8fa257daa0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ConditionallyCompleteLinearOrderedField ℝ :=
  { (inferInstance : LinearOrderedField ℝ),
    (inferInstance : ConditionallyCompleteLinearOrder ℝ) with }

namespace LinearOrderedField

/-!
### Rational cut map

The idea is that a conditionally complete linear ordered field is fully characterized by its copy of
the rationals. Hence we define `LinearOrderedField.cutMap β : α → Set β` which sends `a : α` to the
"rationals in `β`" that are less than `a`.
-/


section CutMap

variable [LinearOrderedField α]

section DivisionRing

variable (β) [DivisionRing β] {a a₁ a₂ : α} {b : β} {q : ℚ}

/-- The lower cut of rationals inside a linear ordered field that are less than a given element of
another linear ordered field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variant6a3140fcb483db113820365b6eab4647f7f4614275f0baaacac3010388cc30ce.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23c9f80a6cc53ef2243a1b103a73413a7f6e05d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
