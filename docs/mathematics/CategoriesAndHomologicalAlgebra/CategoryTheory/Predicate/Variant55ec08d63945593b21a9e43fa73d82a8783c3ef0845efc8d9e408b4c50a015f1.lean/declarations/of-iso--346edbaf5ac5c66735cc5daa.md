# of_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:013f8ce5-109a-23f6-f489-1f06709081e8",
  "kind": "theorem",
  "lexical_name": "of_iso",
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
  "slug": "of-iso--346edbaf5ac5c66735cc5daa",
  "source": {
    "blob": "5b46a589361cdc862b29e1c07c0b105530b96001",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 402,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant55ec08d63945593b21a9e43fa73d82a8783c3ef0845efc8d9e408b4c50a015f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:346edbaf5ac5c66735cc5daaff3ef2c99a4135157296e4e695cbfd1c6290e22b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant55ec08d63945593b21a9e43fa73d82a8783c3ef0845efc8d9e408b4c50a015f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:013f8ce5-109a-23f6-f489-1f06709081e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_iso {L₁ L₂ : C ⥤ D} (e : L₁ ≅ L₂) [L₁.IsLocalization W] : L₂.IsLocalization W := by
  have h := Localization.inverts L₁ W
  rw [MorphismProperty.IsInvertedBy.iff_of_iso W e] at h
  let F₁ := Localization.Construction.lift L₁ (Localization.inverts L₁ W)
  let F₂ := Localization.Construction.lift L₂ h
  exact
    { inverts := h
      isEquivalence := Functor.isEquivalence_of_iso (liftNatIso W.Q W L₁ L₂ F₁ F₂ e) }

/-- If `L : C ⥤ D` is a localization for `W : MorphismProperty C`, then it is also
the case of a functor obtained by post-composing `L` with an equivalence of categories. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant55ec08d63945593b21a9e43fa73d82a8783c3ef0845efc8d9e408b4c50a015f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant55ec08d63945593b21a9e43fa73d82a8783c3ef0845efc8d9e408b4c50a015f1.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b46a589361cdc862b29e1c07c0b105530b96001` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
