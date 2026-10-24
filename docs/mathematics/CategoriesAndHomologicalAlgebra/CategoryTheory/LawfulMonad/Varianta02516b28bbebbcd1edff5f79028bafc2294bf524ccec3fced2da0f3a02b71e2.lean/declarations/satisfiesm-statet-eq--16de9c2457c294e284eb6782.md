# SatisfiesM_StateT_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f2ef1b7-774c-8ae0-b1ab-6303c70c6d08",
  "kind": "theorem",
  "lexical_name": "SatisfiesM_StateT_eq",
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
  "slug": "satisfiesm-statet-eq--16de9c2457c294e284eb6782",
  "source": {
    "blob": "c40a81758152d4b2cf02663d7e83aa3359bda99e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 202,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LawfulMonad/Varianta02516b28bbebbcd1edff5f79028bafc2294bf524ccec3fced2da0f3a02b71e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16de9c2457c294e284eb67820708c997edc6902d93a7b401a0da622dc98211fe",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LawfulMonad/Varianta02516b28bbebbcd1edff5f79028bafc2294bf524ccec3fced2da0f3a02b71e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f2ef1b7-774c-8ae0-b1ab-6303c70c6d08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem SatisfiesM_StateT_eq [Monad m] [LawfulMonad m] :
    SatisfiesM (m := StateT ρ m) (α := α) p x ↔ ∀ s, SatisfiesM (m := m) (p ·.1) (x s) := by
  refine .trans ⟨fun ⟨f, eq⟩ => eq ▸ ?_, fun ⟨f, h⟩ => ?_⟩ Classical.skolem.symm
  · refine ⟨fun s => (fun ⟨⟨a, h⟩, s'⟩ => ⟨⟨a, s'⟩, h⟩) <$> f s, fun s => ?_⟩
    rw [← comp_map, map_eq_pure_bind]; rfl
  · refine ⟨fun s => (fun ⟨⟨a, s'⟩, h⟩ => ⟨⟨a, h⟩, s'⟩) <$> f s, funext fun s => ?_⟩
    show _ >>= _ = _; simp [map_eq_pure_bind, ← h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LawfulMonad/Varianta02516b28bbebbcd1edff5f79028bafc2294bf524ccec3fced2da0f3a02b71e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LawfulMonad/Varianta02516b28bbebbcd1edff5f79028bafc2294bf524ccec3fced2da0f3a02b71e2.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c40a81758152d4b2cf02663d7e83aa3359bda99e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
