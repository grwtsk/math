# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ec6f8bc0574168351b6d2df95d72831b24ff1afa34e700675feaa632ea29dfc",
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
  "slug": "instance--849bdda72ebe080740d9b047",
  "source": {
    "blob": "60244614a926721b8753c8009d06de67b73c977c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 176,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant4ff43ea5863b137df1d29d4cf4dbb34dc5589ea41c03d2f070716b88364e214d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:849bdda72ebe080740d9b047d3b1f6ee8b4e6110af1cefb256dbfe28269b2893",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant4ff43ea5863b137df1d29d4cf4dbb34dc5589ea41c03d2f070716b88364e214d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ec6f8bc0574168351b6d2df95d72831b24ff1afa34e700675feaa632ea29dfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Small.{t} (FunctorObjIndex f πX) := by
  let φ (x : FunctorObjIndex f πX) :
    Σ (i : Shrink.{t} I),
      Shrink.{t} ((A ((equivShrink _).symm i) ⟶ X) ×
        (B ((equivShrink _).symm i) ⟶ S)) :=
        ⟨equivShrink _ x.i, equivShrink _
          ⟨eqToHom (by simp) ≫ x.t, eqToHom (by simp) ≫ x.b⟩⟩
  have hφ : Function.Injective φ := by
    rintro ⟨i₁, t₁, b₁, _⟩ ⟨i₂, t₂, b₂, _⟩ h
    obtain rfl : i₁ = i₂ := by simpa [φ] using congr_arg Sigma.fst h
    simpa [cancel_epi, φ] using h
  exact small_of_injective hφ

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant4ff43ea5863b137df1d29d4cf4dbb34dc5589ea41c03d2f070716b88364e214d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant4ff43ea5863b137df1d29d4cf4dbb34dc5589ea41c03d2f070716b88364e214d.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60244614a926721b8753c8009d06de67b73c977c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
