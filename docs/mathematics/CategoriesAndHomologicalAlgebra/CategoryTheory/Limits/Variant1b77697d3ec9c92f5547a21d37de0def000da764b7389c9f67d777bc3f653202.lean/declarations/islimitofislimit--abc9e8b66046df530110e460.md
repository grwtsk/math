# isLimitOfIsLimitπ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8df028f72a17fdb4f2247ee52b681451b00ea42e2b9de4c018c862f9116f5c47",
  "kind": "def",
  "lexical_name": "isLimitOfIsLimitπ",
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
  "slug": "islimitofislimit--abc9e8b66046df530110e460",
  "source": {
    "blob": "1b79d901138eb20850b7883eebdd628b99a45e21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 38,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abc9e8b66046df530110e460d40df3edcc5e2dbe0f52a4c03ec873a388f48ecc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8df028f72a17fdb4f2247ee52b681451b00ea42e2b9de4c018c862f9116f5c47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitOfIsLimitπ (c : Cone F)
    (h₁ : IsLimit (π₁.mapCone c)) (h₂ : IsLimit (π₂.mapCone c))
    (h₃ : IsLimit (π₃.mapCone c)) : IsLimit c where
  lift s :=
    { τ₁ := h₁.lift (π₁.mapCone s)
      τ₂ := h₂.lift (π₂.mapCone s)
      τ₃ := h₃.lift (π₃.mapCone s)
      comm₁₂ := h₂.hom_ext (fun j => by
        have eq₁ := h₁.fac (π₁.mapCone s)
        have eq₂ := h₂.fac (π₂.mapCone s)
        have eq₁₂ := fun j => (c.π.app j).comm₁₂
        have eq₁₂' := fun j => (s.π.app j).comm₁₂
        dsimp at eq₁ eq₂ eq₁₂ eq₁₂' ⊢
        rw [assoc, assoc, ← eq₁₂, reassoc_of% eq₁, eq₂, eq₁₂'])
      comm₂₃ := h₃.hom_ext (fun j => by
        have eq₂ := h₂.fac (π₂.mapCone s)
        have eq₃ := h₃.fac (π₃.mapCone s)
        have eq₂₃ := fun j => (c.π.app j).comm₂₃
        have eq₂₃' := fun j => (s.π.app j).comm₂₃
        dsimp at eq₂ eq₃ eq₂₃ eq₂₃' ⊢
        rw [assoc, assoc, ← eq₂₃, reassoc_of% eq₂, eq₃, eq₂₃']) }
  fac s j := by ext <;> apply IsLimit.fac
  uniq s m hm := by
    ext
    · exact h₁.uniq (π₁.mapCone s) _ (fun j => π₁.congr_map (hm j))
    · exact h₂.uniq (π₂.mapCone s) _ (fun j => π₂.congr_map (hm j))
    · exact h₃.uniq (π₃.mapCone s) _ (fun j => π₃.congr_map (hm j))

section

variable (F)
variable [HasLimit (F ⋙ π₁)] [HasLimit (F ⋙ π₂)] [HasLimit (F ⋙ π₃)]

/-- Construction of a limit cone for a functor `J ⥤ ShortComplex C` using the limits
of the three components `J ⥤ C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b79d901138eb20850b7883eebdd628b99a45e21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
