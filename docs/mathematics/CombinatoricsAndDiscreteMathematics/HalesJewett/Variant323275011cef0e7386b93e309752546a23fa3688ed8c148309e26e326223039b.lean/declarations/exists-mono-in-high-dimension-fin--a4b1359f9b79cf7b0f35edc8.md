# exists_mono_in_high_dimension_fin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0739e5c-58e1-2dde-6f04-174c7deb17b5",
  "kind": "theorem",
  "lexical_name": "exists_mono_in_high_dimension_fin",
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
  "slug": "exists-mono-in-high-dimension-fin--a4b1359f9b79cf7b0f35edc8",
  "source": {
    "blob": "d71755adb57d0bd2d1df3674183a3cb0211021c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 507,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4b1359f9b79cf7b0f35edc8d6e9ebe10301e6fce0fd20003fe89665f591d6f6",
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

Occurrence: `result:e0739e5c-58e1-2dde-6f04-174c7deb17b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mono_in_high_dimension_fin (α κ η) [Finite α] [Finite κ] [Finite η] :
    ∃ n, ∀ C : (Fin n → α) → κ, ∃ l : Subspace η α (Fin n), l.IsMono C := by
  obtain ⟨ι, ιfin, hι⟩ := exists_mono_in_high_dimension α κ η
  refine ⟨Fintype.card ι, fun C ↦ ?_⟩
  obtain ⟨l, c, cl⟩ := hι fun v ↦ C (v ∘ (Fintype.equivFin _).symm)
  refine ⟨⟨l.idxFun ∘ (Fintype.equivFin _).symm, fun e ↦ ?_⟩, c, cl⟩
  obtain ⟨i, hi⟩ := l.proper e
  use Fintype.equivFin _ i
  simpa using hi

end Subspace
end Combinatorics
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant323275011cef0e7386b93e309752546a23fa3688ed8c148309e26e326223039b.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d71755adb57d0bd2d1df3674183a3cb0211021c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
