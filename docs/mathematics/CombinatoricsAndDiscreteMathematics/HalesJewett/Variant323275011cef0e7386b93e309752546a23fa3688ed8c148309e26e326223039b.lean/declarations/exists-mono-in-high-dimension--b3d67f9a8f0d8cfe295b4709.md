# exists_mono_in_high_dimension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70e02c9c-aa85-a5e3-eeef-714cb9ac8f6e",
  "kind": "theorem",
  "lexical_name": "exists_mono_in_high_dimension",
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
  "slug": "exists-mono-in-high-dimension--b3d67f9a8f0d8cfe295b4709",
  "source": {
    "blob": "d71755adb57d0bd2d1df3674183a3cb0211021c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 495,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3d67f9a8f0d8cfe295b4709487288282d63e7b0f5c6cd9ce11fcf50b5baaf58",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70e02c9c-aa85-a5e3-eeef-714cb9ac8f6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mono_in_high_dimension (α κ η) [Finite α] [Finite κ] [Finite η] :
    ∃ (ι : Type) (_ : Fintype ι), ∀ C : (ι → α) → κ, ∃ l : Subspace η α ι, l.IsMono C := by
  cases nonempty_fintype η
  obtain ⟨ι, _, hι⟩ := Line.exists_mono_in_high_dimension (Shrink.{0} η → α) κ
  refine ⟨ι × Shrink η, inferInstance, fun C ↦ ?_⟩
  obtain ⟨l, hl⟩ := hι fun x ↦ C fun (i, e) ↦ x i e
  refine ⟨l.toSubspace.reindex (equivShrink.{0} η).symm (Equiv.refl _) (Equiv.refl _), ?_⟩
  convert hl.toSubspace.reindex
  simp

/-- A variant of the **extended Hales-Jewett theorem** `exists_mono_in_high_dimension` where the
returned type is some `Fin n` instead of a general fintype. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d71755adb57d0bd2d1df3674183a3cb0211021c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
