# resultant_taylor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15e6a9ff-5bec-47e8-e570-644c3d345edf",
  "kind": "lemma",
  "lexical_name": "resultant_taylor",
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
  "slug": "resultant-taylor--1f2b842e9a856779acbfb5a0",
  "source": {
    "blob": "5af96ec828f2fbad992039b9ff6e5febc791c3d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 807,
    "line": 763,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f2b842e9a856779acbfb5a0cce8c8aa7b0c43dd8fd0865efa1a95e02110422a",
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

Occurrence: `result:15e6a9ff-5bec-47e8-e570-644c3d345edf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 763–807.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec lemma resultant_taylor (f g : R[X]) (r : R) :
    resultant (f.taylor r) (g.taylor r) = resultant f g := by
  induction f using induction_of_Splits_of_injective_of_surjective with
  | Splits R f hf' =>
    induction hf' using Submonoid.closure_induction with
    | mem x h =>
      obtain (⟨s, rfl⟩ | ⟨s, rfl⟩) := h
      · rw [taylor_C]; simp
      · nontriviality R
        rw [map_add, taylor_X, taylor_C, add_assoc, ← map_add]
        simp [-map_add, taylor_eval]
    | one => simp
    | mul x y hx hy hx' hy' =>
      by_cases hx0 : x = 0; · simp [hx0]
      by_cases hy0 : y = 0; · simp [hy0]
      rw [taylor_mul, natDegree_mul' (by simp [*]), resultant_mul_left _ _ _ _ le_rfl]
      simp [natDegree_mul', hx0, hy0, resultant_mul_left, ← hx', ← hy']
  | injective R S φ hφ f IH =>
    apply hφ
    have := IH (g.map φ) (φ r)
    rw [← map_taylor, ← map_taylor] at this
    simpa [natDegree_map_eq_of_injective hφ] using this
  | surjective R S φ hφ f IH =>
    obtain ⟨f', hf', ef⟩ := exists_degree_eq_of_mem_lifts (Polynomial.map_surjective φ hφ f)
    obtain ⟨g', hg', eg⟩ := exists_degree_eq_of_mem_lifts (Polynomial.map_surjective φ hφ g)
    obtain ⟨r, rfl⟩ := hφ r
    have hfl : f.leadingCoeff = φ f'.leadingCoeff := by
      simp_rw [← coeff_natDegree, ← natDegree_eq_natDegree ef, ← hf', coeff_map]
    have hgl : g.leadingCoeff = φ g'.leadingCoeff := by
      simp_rw [← coeff_natDegree, ← natDegree_eq_natDegree eg, ← hg', coeff_map]
    rw [natDegree_taylor, natDegree_taylor, ← hf', ← map_taylor, ← hg', ← map_taylor,
      resultant_map_map, resultant_map_map, hf', hg', ← natDegree_eq_natDegree ef,
      ← natDegree_eq_natDegree eg, ← IH f' g' r, natDegree_taylor, natDegree_taylor]

end resultant

section sylvesterMap

variable {m n} {R : Type*} [CommRing R]

attribute [local simp] Polynomial.mem_degreeLT

/-- The map `(p, q) ↦ f * q + g * p` whose associated matrix is `Syl(f, g)`. -/
@[simps]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean#L763).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5af96ec828f2fbad992039b9ff6e5febc791c3d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
