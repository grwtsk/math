# resultant_mul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2605a59a-04aa-76d1-965c-48e6a6c0c68d",
  "kind": "lemma",
  "lexical_name": "resultant_mul_right",
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
  "slug": "resultant-mul-right--91aeda0e76824f614514323a",
  "source": {
    "blob": "5af96ec828f2fbad992039b9ff6e5febc791c3d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 580,
    "line": 555,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91aeda0e76824f614514323ad66ff5c48e7cfda2967377ce4eb6a7f6eef19217",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2605a59a-04aa-76d1-965c-48e6a6c0c68d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec lemma resultant_mul_right (f g₁ g₂ : R[X]) (m : ℕ) (hm : f.natDegree ≤ m) :
    resultant f (g₁ * g₂) m (g₁.natDegree + g₂.natDegree) =
      resultant f g₁ m * resultant f g₂ m := by
  wlog hgn : m = f.natDegree
  · obtain ⟨c, rfl⟩ := le_iff_exists_add.mp hm
    simp [resultant_add_left_deg, this f g₁ g₂, coeff_mul_degree_add_degree]
    ring_nf
  subst hgn; clear hm
  induction f using induction_of_Splits_of_injective_of_surjective with
  | Splits R f hff =>
    simp [resultant_eq_prod_eval, natDegree_mul_le, hff]
    ring_nf
  | injective R SatisfiesM φ hφ f IH =>
    apply hφ
    have := IH (g₁.map φ) (g₂.map φ)
    rw [← Polynomial.map_mul] at this
    simpa only [resultant_map_map, ← map_mul, natDegree_map_eq_of_injective hφ] using this
  | surjective R S φ hφ f IH =>
    obtain ⟨f', hf', e⟩ := exists_degree_eq_of_mem_lifts (Polynomial.map_surjective φ hφ f)
    obtain ⟨g₁', hg₁, e₁⟩ := exists_degree_eq_of_mem_lifts (Polynomial.map_surjective φ hφ g₁)
    obtain ⟨g₂', hg₂, e₂⟩ := exists_degree_eq_of_mem_lifts (Polynomial.map_surjective φ hφ g₂)
    rw [← hg₁, ← hg₂, ← hf', ← Polynomial.map_mul]
    simp_rw [resultant_map_map, hg₁, hg₂, hf', ← natDegree_eq_natDegree e₁,
      ← natDegree_eq_natDegree e₂, ← natDegree_eq_natDegree e, IH, map_mul]

/-- `Res(f₁ * f₂, g) = Res(f₁, g) * Res(f₂, g)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5af96ec828f2fbad992039b9ff6e5febc791c3d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
