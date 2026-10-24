# Q₂_natDegree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8766bfdee1cff4e8efe141ca5a66de3ebf89879",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 414,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed03b3d45046b546268647434d4aca96f4b6925d995ef7172b6e6d37bd5ca82f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:195cac28-a7aa-3dc8-e302-5ffdd78a74e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0347c92a-f163-e5ad-f21e-c65e27575747",
  "kind": "lemma",
  "lexical_name": "Q₂_natDegree",
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
  "slug": "q-natdegree--9c6a1bd0c5eaca24d4c2814e",
  "source": {
    "blob": "e8766bfdee1cff4e8efe141ca5a66de3ebf89879",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 414,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Luroth/Varianted03b3d45046b546268647434d4aca96f4b6925d995ef7172b6e6d37bd5ca82f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c6a1bd0c5eaca24d4c2814e2952d58c0b7c039dd2209a7efebb3cf60031d1bd",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Luroth/Varianted03b3d45046b546268647434d4aca96f4b6925d995ef7172b6e6d37bd5ca82f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0347c92a-f163-e5ad-f21e-c65e27575747`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Q₂_natDegree (h : E ≠ ⊥) : (Q₂ h).natDegree = 0 := by
  -- We have f(X)*g(Y) - g(X)*f(Y) = Q₂(X) * Φ
  -- Assume Q₂ has positive degree, take a root in an algebraic extension
  by_contra H
  apply (generator E).eq_C_iff.not.mp (generator_ne_C h)
  let F := AlgebraicClosure K
  rw [natDegree_eq_zero_iff_degree_le_zero.not, ← degree_map _ (algebraMap K F)] at H
  obtain ⟨α, hα⟩ := IsAlgClosed.exists_root ((Q₂ h).map (algebraMap K F)) (ne_of_not_ge H).symm
  -- Evaluate at the root, get that f(α)*g(Y) = g(α)*f(Y)
  rw [IsRoot.def, eval_map_algebraMap] at hα
  have eq :
      (Polynomial.mapRingHom (algebraMap K F)) (g E) * Polynomial.C ((aeval α) (f E)) =
      (Polynomial.mapRingHom (algebraMap K F)) (f E) * Polynomial.C ((aeval α) (g E)) := by
    have := congr(aeval (Polynomial.C α) $(Q₂_mul_Φ h)).symm
    rwa [aeval_mul, ← map_aeval_eq_aeval_map (by ext; simp), hα, map_zero, zero_mul, aeval_sub,
      aeval_mul, aeval_mul, aeval_C, aeval_C, ← map_aeval_eq_aeval_map (by ext; simp),
      ← map_aeval_eq_aeval_map (by ext; simp), algebraMap_def, coe_mapRingHom, sub_eq_zero,
      ← Polynomial.coe_mapRingHom] at this
  obtain ⟨isUnit₁, isUnit₂⟩ :
      IsUnit (Polynomial.C <| aeval α (f E)) ∧ IsUnit (Polynomial.C <| aeval α (g E)) := by
    rw [Polynomial.isUnit_C, isUnit_iff_ne_zero, Polynomial.isUnit_C, isUnit_iff_ne_zero]
    obtain (H | H) := aeval_ne_zero_of_isCoprime (generator E).isCoprime_num_denom α
    · refine ⟨H, Polynomial.C_injective.ne_iff.mp ?_⟩
      rw [map_zero, ← mul_ne_zero_iff_left <| Polynomial.map_ne_zero <|
        num_ne_zero (generator_ne_zero h)]
      exact eq ▸ mul_ne_zero (Polynomial.map_ne_zero (generator E).denom_ne_zero) <|
        Polynomial.C_ne_zero.mpr H
    · refine ⟨Polynomial.C_injective.ne_iff.mp ?_, H⟩
      rw [map_zero, ← mul_ne_zero_iff_left <| Polynomial.map_ne_zero (generator E).denom_ne_zero]
      exact eq ▸ mul_ne_zero (Polynomial.map_ne_zero (num_ne_zero (generator_ne_zero h))) <|
        Polynomial.C_ne_zero.mpr H
  -- obtain contradiction because f and g are coprime
  have isCoprime := IsCoprime.map (generator E).isCoprime_num_denom <|
    Polynomial.mapRingHom (algebraMap K F)
  have : Associated ((f E).mapRingHom (algebraMap K F)) ((g E).mapRingHom (algebraMap K F)) := by
    rw [← associated_mul_isUnit_left_iff isUnit₂, Associated.comm]
    exact ⟨isUnit₁.unit, by simpa⟩
  have := isCoprime.isUnit_of_associated this
  exact ⟨by simpa using (natDegree_eq_zero_of_isUnit this.1),
    by simpa using (natDegree_eq_zero_of_isUnit this.2)⟩

/-- A constant `Q₃` that satisfies `Q₃ * Φ = θ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Luroth/Varianted03b3d45046b546268647434d4aca96f4b6925d995ef7172b6e6d37bd5ca82f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Luroth/Varianted03b3d45046b546268647434d4aca96f4b6925d995ef7172b6e6d37bd5ca82f.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8766bfdee1cff4e8efe141ca5a66de3ebf89879` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
