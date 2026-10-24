# IsType₂.type₁_eq_of_δ_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "befcd8a2916f87c43a0808772433669bb3e822aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 477,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5a97d99-f629-2140-6c6e-22dbf53bf2ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32396a60-e023-3456-02b3-1614e0d04d48",
  "kind": "lemma",
  "lexical_name": "IsType₂.type₁_eq_of_δ_eq",
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
  "slug": "istype-type-eq-of-eq--d447c13c7395bb21a610590d",
  "source": {
    "blob": "befcd8a2916f87c43a0808772433669bb3e822aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 477,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d447c13c7395bb21a610590d71ccffded0cb8f257d37d283760c026ae5c73328",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32396a60-e023-3456-02b3-1614e0d04d48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsType₂.type₁_eq_of_δ_eq
    {t : (Subcomplex.unionProd.{u} Λ[m + 1, k.castSucc] ∂Δ[n]).N}
    (ht : IsType₂ t) (s : Type₁.{u} k n) (hst : s.δ = t) {d : ℕ} (hd : t.dim = d) :
    ht.type₁ hd = s := by
  subst hst hd
  rw [Type₁.ext_iff, Subcomplex.N.ext_iff, N.ext_iff]
  rw [← s.x.toS.cast_eq_self s.hd, S.ext_iff']
  refine ⟨rfl, objEquiv.injective ?_⟩
  ext i : 2
  change φ s.δ rfl i = _
  by_cases! hi : i = s.index.castSucc
  · subst hi
    conv_lhs => rw [← s.isIndex.min_δ]
    dsimp
    rw [φ_castSucc]
    ext : 1
    · simp [← s.isIndex.simplex_fst_castSucc]
      rfl
    · change (s.x.cast s.hd).simplex.2
        (s.index.castSucc.succAbove (min s.δ rfl)) = _
      rw [s.isIndex.min_δ, Fin.succAbove_castSucc_self]
      exact s.isIndex.simplex_snd_succ -- defeq abuse
  · rw [← s.isIndex.min_δ] at hi
    rw [φ_of_ne _ rfl _ hi]
    change objEquiv (s.x.cast s.hd).simplex
      (s.index.castSucc.succAbove ((min s.δ rfl).predAbove i)) = _
    congr 1
    rw [← s.isIndex.min_δ]
    simp [hi]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant0b738cf79d585f236fdd7fd9e3e140dc747f742fce472b4afebeff938b8a2a3c.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `befcd8a2916f87c43a0808772433669bb3e822aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
