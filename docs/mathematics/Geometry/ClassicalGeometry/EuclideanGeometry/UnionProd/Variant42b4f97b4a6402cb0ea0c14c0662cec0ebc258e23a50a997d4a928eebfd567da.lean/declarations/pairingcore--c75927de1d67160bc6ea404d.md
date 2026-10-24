# pairingCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6874797ff65a2ecc0331ac128eac1feda6d77f3ec6d7b1f7b27d72acd7e4990e",
  "kind": "def",
  "lexical_name": "pairingCore",
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
  "slug": "pairingcore--c75927de1d67160bc6ea404d",
  "source": {
    "blob": "2a6de4130ba70cbcf0f16344e81638b7f98613c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 537,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c75927de1d67160bc6ea404dafb30ea30d5412454707c24a83f081735ee3af49",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6874797ff65a2ecc0331ac128eac1feda6d77f3ec6d7b1f7b27d72acd7e4990e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pairingCore {m : ℕ} (k : Fin (m + 1)) (n : ℕ) :
    (Subcomplex.unionProd.{u} Λ[m + 1, k.castSucc] ∂Δ[n]).PairingCore where
  ι := Type₁.{u} k n
  dim s := s.d
  simplex s := (s.x.cast s.hd).simplex
  index s := s.index.castSucc
  nonDegenerate₁ s := (s.x.cast s.hd).nonDegenerate
  nonDegenerate₂ s := s.isIndex.δ.nonDegenerate
  notMem₁ s := (s.x.cast s.hd).notMem
  notMem₂ s := s.isIndex.δ.notMem
  injective_type₁' {s t} h := by
    rw [Type₁.ext_iff, Subcomplex.N.ext_iff, N.ext_iff]
    rwa [← s.x.toS.cast_eq_self s.hd, ← t.x.toS.cast_eq_self t.hd]
  injective_type₂' {s t} h := by
    replace h : s.δ = t.δ := by rwa [Subcomplex.N.ext_iff, N.ext_iff]
    generalize hs : s.δ = u
    have hu' : IsType₂ u := by simpa only [hs] using s.isType₂_δ
    rw [← hu'.type₁_eq_of_δ_eq _ hs rfl,
      hu'.type₁_eq_of_δ_eq _ (h.symm.trans hs) rfl]
  type₁_ne_type₂' s t hst := by
    replace hst : s.x = t.isIndex.δ := by
      rwa [Subcomplex.N.ext_iff, N.ext_iff, ← s.x.cast_eq_self s.hd]
    have := t.isIndex.isType₂_δ
    rw [← hst] at this
    exact this _ _ _ s.isIndex
  surjective' x := by
    by_cases hx : IsType₂ x
    · generalize hd : x.dim = d
      refine ⟨hx.type₁ hd, Or.inr ?_⟩
      rw [S.ext_iff']
      exact ⟨hd, (hx.δ_simplex hd).symm⟩
    · simp only [IsType₂, not_forall, not_not] at hx
      obtain ⟨_ | d, hd, i, hx⟩ := hx
      · fin_cases i
        simp at hx
      · obtain ⟨i, rfl⟩ := Fin.eq_succ_of_ne_zero (i := i) (by rintro rfl; simp at hx)
        refine ⟨{ x := x, d := d, hd := hd, index := i, isIndex := hx }, Or.inl ?_⟩
        dsimp
        rw [S.ext_iff']
        exact ⟨hd, rfl⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a6de4130ba70cbcf0f16344e81638b7f98613c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
