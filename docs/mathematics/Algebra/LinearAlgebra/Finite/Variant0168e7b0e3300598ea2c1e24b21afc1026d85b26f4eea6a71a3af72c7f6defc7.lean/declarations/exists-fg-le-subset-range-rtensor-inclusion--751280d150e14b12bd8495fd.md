# exists_fg_le_subset_range_rTensor_inclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c748bd6c-4049-7364-b8a3-9e928effe4a7",
  "kind": "theorem",
  "lexical_name": "exists_fg_le_subset_range_rTensor_inclusion",
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
  "slug": "exists-fg-le-subset-range-rtensor-inclusion--751280d150e14b12bd8495fd",
  "source": {
    "blob": "e61ba2fdd336c4e6ce4799224c21446ee1e63c10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 72,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:751280d150e14b12bd8495fdfade394f106511930ce3b9f9dd4ef0e90101c315",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c748bd6c-4049-7364-b8a3-9e928effe4a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_fg_le_subset_range_rTensor_inclusion (s : Set (I ⊗[R] M)) (hs : s.Finite) :
    ∃ (J : Submodule R N) (_ : J.FG) (hle : J ≤ I),
      s ⊆ LinearMap.range (rTensor M (J.inclusion hle)) := by
  choose J fg hle y eq using exists_fg_le_eq_rTensor_inclusion (M := M) (I := I)
  rw [← Set.finite_coe_iff] at hs
  refine ⟨⨆ x : s, J x, fg_iSup _ fun _ ↦ fg _, iSup_le fun _ ↦ hle _, fun x hx ↦
    ⟨rTensor M (inclusion <| le_iSup _ ⟨x, hx⟩) (y x), .trans ?_ (eq x).symm⟩⟩
  rw [← comp_apply, ← rTensor_comp]; rfl

end Submodule

section ModuleAndAlgebra

variable (R A M N : Type*)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finite/Variant0168e7b0e3300598ea2c1e24b21afc1026d85b26f4eea6a71a3af72c7f6defc7.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e61ba2fdd336c4e6ce4799224c21446ee1e63c10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
