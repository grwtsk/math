# multicofork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84e3050bfe7f2f9f2de70712d8f5f481dd9d3d4f24ed5a18c426be789ee1fc27",
  "kind": "def",
  "lexical_name": "multicofork",
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
  "slug": "multicofork--647dfe0281ffdd7811efdec7",
  "source": {
    "blob": "7bd3038dbf5830aad08091fdb40eb859cdee4721",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 44,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MultiequalizerPullback/Variant4f8ea20888ad1308c43df578b07d05192ab5cd1dfb0598a52c42f2b399f72830.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:647dfe0281ffdd7811efdec75f07c3025c9f74cbac2bce664ce3853f89053173",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MultiequalizerPullback/Variant4f8ea20888ad1308c43df578b07d05192ab5cd1dfb0598a52c42f2b399f72830.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84e3050bfe7f2f9f2de70712d8f5f481dd9d3d4f24ed5a18c426be789ee1fc27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def multicofork : Multicofork I :=
  Multicofork.ofπ _ s.pt
    (fun k ↦
      if hk : k = J.fst default then
        eqToHom (by simp [hk]) ≫ s.inl
      else
        eqToHom (by
          obtain rfl : k = J.snd default := by
            have := h.symm.le (Set.mem_univ k)
            push _ ∈ _ at this
            tauto
          rfl) ≫ s.inr)
    (by
      rw [Unique.forall_iff]
      simpa [h'.symm] using s.condition)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MultiequalizerPullback/Variant4f8ea20888ad1308c43df578b07d05192ab5cd1dfb0598a52c42f2b399f72830.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MultiequalizerPullback/Variant4f8ea20888ad1308c43df578b07d05192ab5cd1dfb0598a52c42f2b399f72830.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bd3038dbf5830aad08091fdb40eb859cdee4721` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
