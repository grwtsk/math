# mono_inl_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d87b64b3-9e30-328d-0e09-8b1ab545c547",
  "kind": "theorem",
  "lexical_name": "mono_inl_iff",
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
  "slug": "mono-inl-iff--46fea778c366a5fcea00a778",
  "source": {
    "blob": "f83bbfaf455c7dfb25036a172062f5fb0c69853a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 86,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Varianteac02fbdbff09cfb8f75d3917d32a1c0b678040efb73cf4b376e5fc7b662eff8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46fea778c366a5fcea00a778e7d314697bb46e9e246bc84fc26b57df4930365a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Varianteac02fbdbff09cfb8f75d3917d32a1c0b678040efb73cf4b376e5fc7b662eff8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d87b64b3-9e30-328d-0e09-8b1ab545c547`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mono_inl_iff {A B : C} {c₁ c₂ : BinaryCofan A B} (hc₁ : IsColimit c₁) (hc₂ : IsColimit c₂) :
    Mono c₁.inl ↔ Mono c₂.inl := by
  suffices
    ∀ (c₁ c₂ : BinaryCofan A B) (_ : IsColimit c₁) (_ : IsColimit c₂) (_ : Mono c₁.inl),
      Mono c₂.inl
    by exact ⟨fun h₁ => this _ _ hc₁ hc₂ h₁, fun h₂ => this _ _ hc₂ hc₁ h₂⟩
  intro c₁ c₂ hc₁ hc₂ _
  simpa only [IsColimit.comp_coconePointUniqueUpToIso_hom] using!
    mono_comp c₁.inl (hc₁.coconePointUniqueUpToIso hc₂).hom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Varianteac02fbdbff09cfb8f75d3917d32a1c0b678040efb73cf4b376e5fc7b662eff8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Varianteac02fbdbff09cfb8f75d3917d32a1c0b678040efb73cf4b376e5fc7b662eff8.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f83bbfaf455c7dfb25036a172062f5fb0c69853a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
