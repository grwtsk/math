# FinitePlace.prod_eq_inv_abs_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e84cd3c5470b110878c623c8c2c0b185f23c90e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a408364861238ffb27fdb04ebcf5f60d7b3e7d1b2d9ca8379c344e11e496775d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31ea024b-5f68-b77f-2bcb-38930fb370a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27749e16-ef9a-a401-9e0b-e80ef909fbf7",
  "kind": "theorem",
  "lexical_name": "FinitePlace.prod_eq_inv_abs_norm",
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
  "slug": "finiteplace-prod-eq-inv-abs-norm--a969ff1f28d47b7faeae7be0",
  "source": {
    "blob": "0e84cd3c5470b110878c623c8c2c0b185f23c90e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ProductFormula/Varianta408364861238ffb27fdb04ebcf5f60d7b3e7d1b2d9ca8379c344e11e496775d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a969ff1f28d47b7faeae7be0e514f2b03bbd28d2ee1e2c8f8798a2bf4c570739",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ProductFormula/Varianta408364861238ffb27fdb04ebcf5f60d7b3e7d1b2d9ca8379c344e11e496775d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27749e16-ef9a-a401-9e0b-e80ef909fbf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FinitePlace.prod_eq_inv_abs_norm {x : K} (h_x_nezero : x ≠ 0) :
    ∏ᶠ w : FinitePlace K, w x = |(Algebra.norm ℚ) x|⁻¹ := by
  --reduce to 𝓞 K
  rcases IsFractionRing.div_surjective (A := 𝓞 K) x with ⟨a, b, hb, rfl⟩
  apply nonZeroDivisors.ne_zero at hb
  have ha : a ≠ 0 := by
    rintro rfl
    simp at h_x_nezero
  simp_rw [map_div₀, Rat.cast_inv, Rat.cast_abs, finprod_div_distrib (mulSupport_finite_int ha)
    (mulSupport_finite_int hb), prod_eq_inv_abs_norm_int ha, prod_eq_inv_abs_norm_int hb]
  rw [← inv_eq_iff_eq_inv, inv_inv_div_inv, ← abs_div]
  congr
  have hb₀ : ((Algebra.norm ℤ) b : ℝ) ≠ 0 := by simp [hb]
  refine (eq_div_of_mul_eq hb₀ ?_).symm
  norm_cast
  rw [coe_norm_int a, coe_norm_int b, ← MonoidHom.map_mul, div_mul_cancel₀ _
    (RingOfIntegers.coe_ne_zero_iff.mpr hb)]

open FinitePlace in
/-- The Product Formula for the Number Field `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ProductFormula/Varianta408364861238ffb27fdb04ebcf5f60d7b3e7d1b2d9ca8379c344e11e496775d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ProductFormula/Varianta408364861238ffb27fdb04ebcf5f60d7b3e7d1b2d9ca8379c344e11e496775d.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e84cd3c5470b110878c623c8c2c0b185f23c90e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
