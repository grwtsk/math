# SatisfiesM_ExceptT_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c272075-8ae1-57b6-fee8-8e742b852e0d",
  "kind": "theorem",
  "lexical_name": "SatisfiesM_ExceptT_eq",
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
  "slug": "satisfiesm-exceptt-eq--4d9255bfb04d7cdfd06b155c",
  "source": {
    "blob": "da0dbfca8602da47c77989c1d73b8dd2147e50b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 218,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LawfulMonad/Variant27d23b1d03c86dfbd5b3903ea22dd16ebbc229f57f4c695fca15ed069a502c2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d9255bfb04d7cdfd06b155cb80cc5c6ff139977568f045ad95296ddee24aec4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LawfulMonad/Variant27d23b1d03c86dfbd5b3903ea22dd16ebbc229f57f4c695fca15ed069a502c2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c272075-8ae1-57b6-fee8-8e742b852e0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem SatisfiesM_ExceptT_eq [Monad m] [LawfulMonad m] :
    SatisfiesM (m := ExceptT ρ m) (α := α) p x ↔ SatisfiesM (m := m) (∀ a, · = .ok a → p a) x := by
  refine ⟨fun ⟨f, eq⟩ => eq ▸ ?_, fun ⟨f, eq⟩ => eq ▸ ?_⟩
  · exists (fun | .ok ⟨a, h⟩ => ⟨.ok a, fun | _, rfl => h⟩ | .error e => ⟨.error e, fun.⟩) <$> f
    show _ = _ >>= _; rw [← comp_map, map_eq_pure_bind]; congr; funext a; cases a <;> rfl
  · exists ((fun | ⟨.ok a, h⟩ => .ok ⟨a, h _ rfl⟩ | ⟨.error e, _⟩ => .error e) <$> f : m _)
    show _ >>= _ = _; simp [← comp_map, map_eq_pure_bind]; congr; funext ⟨a, h⟩; cases a <;> rfl
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LawfulMonad/Variant27d23b1d03c86dfbd5b3903ea22dd16ebbc229f57f4c695fca15ed069a502c2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LawfulMonad/Variant27d23b1d03c86dfbd5b3903ea22dd16ebbc229f57f4c695fca15ed069a502c2e.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da0dbfca8602da47c77989c1d73b8dd2147e50b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
