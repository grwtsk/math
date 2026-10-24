# mapHomologicalFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cacef75a1996581341abb0585d7ebb2629c80275b21edb03cead06b1633542af",
  "kind": "def",
  "lexical_name": "mapHomologicalFunctor",
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
  "slug": "maphomologicalfunctor--b8fcf5f234aa5759f60a2b06",
  "source": {
    "blob": "3a70a7e43b10658f52750010d47b0b1ff6bec02a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 248,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8fcf5f234aa5759f60a2b0697dc121d2110f074fd0e341ddcd87c211634374f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cacef75a1996581341abb0585d7ebb2629c80275b21edb03cead06b1633542af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapHomologicalFunctor (F : C ⥤ A) [F.IsHomological] [F.ShiftSequence ℤ] :
    Abelian.SpectralObject A ι where
  H n := X.ω₁ ⋙ F.shift n
  δ' n₀ n₁ h :=
    { app D := F.homologySequenceδ (X.triangle (D.map' 0 1) (D.map' 1 2)) n₀ n₁ h
      naturality D₁ D₂ φ := by
        obtain ⟨_, _, _, f, g, rfl⟩ := mk₂_surjective D₁
        obtain ⟨_, _, _, f', g', rfl⟩ := mk₂_surjective D₂
        exact F.homologySequenceδ_naturality (X.mapTriangle φ) n₀ n₁ h }
  exact₁' n₀ n₁ h D := by
    obtain ⟨_, _, _, f, g, rfl⟩ := mk₂_surjective D
    exact (F.homologySequence_exact₁ _
      (X.triangle_distinguished f g) n₀ n₁ h).exact_toComposableArrows
  exact₂' n D := by
    obtain ⟨_, _, _, f, g, rfl⟩ := mk₂_surjective D
    exact (F.homologySequence_exact₂ _ (X.triangle_distinguished f g) n).exact_toComposableArrows
  exact₃' n₀ n₁ h D := by
    obtain ⟨_, _, _, f, g, rfl⟩ := mk₂_surjective D
    exact (F.homologySequence_exact₃ _
      (X.triangle_distinguished f g) n₀ n₁ h).exact_toComposableArrows

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Variant17f180315d68ea269f954ac8d3a07588a5adfcb789bd32017c154b451ed2b1ba.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a70a7e43b10658f52750010d47b0b1ff6bec02a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
