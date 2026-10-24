# image.lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b4050befdcd6e079332fa387c3624ac9bf7673a7f1dca352f2806231b66f07e",
  "kind": "def",
  "lexical_name": "image.lift",
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
  "slug": "image-lift--47ddd74745f4c6fe168f3490",
  "source": {
    "blob": "0b5e646f93061768d1c0d53499f1182635f772b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant85710cf9a16e09a03d1ce172c716031971036d3076cf27bebcf79cf9237d41cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47ddd74745f4c6fe168f3490c9aebe66cb10d92c87d1f7d86b41f02750607357",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant85710cf9a16e09a03d1ce172c716031971036d3076cf27bebcf79cf9237d41cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b4050befdcd6e079332fa387c3624ac9bf7673a7f1dca352f2806231b66f07e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def image.lift (F' : MonoFactorisation f) : image f ⟶ F'.I :=
  ofHom
  { toFun := (fun x => F'.e (Classical.indefiniteDescription _ x.2).1 : image f → F'.I)
    map_zero' := by
      have := F'.m_mono
      apply injective_of_mono F'.m
      change (F'.e ≫ F'.m) _ = _
      rw [F'.fac, map_zero]
      exact (Classical.indefiniteDescription (fun y => f y = 0) _).2
    map_add' := by
      intro x y
      have := F'.m_mono
      apply injective_of_mono F'.m
      rw [map_add]
      change (F'.e ≫ F'.m) _ = (F'.e ≫ F'.m) _ + (F'.e ≫ F'.m) _
      rw [F'.fac]
      rw [(Classical.indefiniteDescription (fun z => f z = _) _).2]
      rw [(Classical.indefiniteDescription (fun z => f z = _) _).2]
      rw [(Classical.indefiniteDescription (fun z => f z = _) _).2]
      rfl }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant85710cf9a16e09a03d1ce172c716031971036d3076cf27bebcf79cf9237d41cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant85710cf9a16e09a03d1ce172c716031971036d3076cf27bebcf79cf9237d41cb.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b5e646f93061768d1c0d53499f1182635f772b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
