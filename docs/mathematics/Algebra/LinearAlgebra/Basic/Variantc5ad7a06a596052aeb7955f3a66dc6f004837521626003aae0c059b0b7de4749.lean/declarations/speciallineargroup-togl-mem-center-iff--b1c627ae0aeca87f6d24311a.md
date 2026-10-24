# SpecialLinearGroup.toGL_mem_center_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41e51b8952dfc090e39449a7e2b3fabe58b46477",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c5ad7a06a596052aeb7955f3a66dc6f004837521626003aae0c059b0b7de4749.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7749523-3609-be21-b84c-01e8e4d8e5bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d3ea66d-c497-216c-648b-cdba03392f6f",
  "kind": "lemma",
  "lexical_name": "SpecialLinearGroup.toGL_mem_center_iff",
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
  "slug": "speciallineargroup-togl-mem-center-iff--b1c627ae0aeca87f6d24311a",
  "source": {
    "blob": "41e51b8952dfc090e39449a7e2b3fabe58b46477",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 82,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc5ad7a06a596052aeb7955f3a66dc6f004837521626003aae0c059b0b7de4749.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1c627ae0aeca87f6d24311a6a25f827771b1a4e1baea61c8c23599dadc31f1a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc5ad7a06a596052aeb7955f3a66dc6f004837521626003aae0c059b0b7de4749.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d3ea66d-c497-216c-648b-cdba03392f6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SpecialLinearGroup.toGL_mem_center_iff {n R : Type*} [Fintype n] [DecidableEq n] [CommRing R]
    (g : SpecialLinearGroup n R) :
    toGL g ∈ Subgroup.center (GL n R) ↔ g ∈ Subgroup.center (SpecialLinearGroup n R) := by
  if hn : IsEmpty n then simp [Subgroup.center_eq_top] else
  replace hn : Nonempty n := by simpa using hn
  obtain ⟨i⟩ := hn
  simp only [GeneralLinearGroup.center_eq_range_scalar, MonoidHom.mem_range,
    mem_center_iff, scalar_apply]
  refine ⟨fun ⟨r, hr⟩ ↦ ⟨r, by simpa [Units.ext_iff] using congr(GeneralLinearGroup.det $hr),
    by simpa [Units.ext_iff] using hr⟩, fun ⟨r, hr1, hr⟩ ↦ ⟨⟨r, g⁻¹.1 i i, ?_, ?_⟩,
      by simp [Units.ext_iff, hr]⟩⟩
  · simpa [-mul_inv_cancel, ← hr, ← pow_succ',
      Nat.sub_one_add_one Fintype.card_pos.ne.symm] using
        Matrix.ext_iff.2 (Subtype.ext_iff.1 (mul_inv_cancel g)) i i
  · simpa [-inv_mul_cancel, ← hr] using Matrix.ext_iff.2 (Subtype.ext_iff.1 (inv_mul_cancel g)) i i

end Matrix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc5ad7a06a596052aeb7955f3a66dc6f004837521626003aae0c059b0b7de4749.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc5ad7a06a596052aeb7955f3a66dc6f004837521626003aae0c059b0b7de4749.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41e51b8952dfc090e39449a7e2b3fabe58b46477` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
