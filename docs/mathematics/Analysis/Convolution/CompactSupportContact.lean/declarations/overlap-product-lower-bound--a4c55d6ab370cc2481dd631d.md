# overlap_product_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53476e0b-08a4-900d-d504-890a964cd7e9",
  "kind": "theorem",
  "lexical_name": "overlap_product_lower_bound",
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
  "slug": "overlap-product-lower-bound--a4c55d6ab370cc2481dd631d",
  "source": {
    "blob": "f691b7e401eb6f4a825fc8e14ad7e17105ecb09f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 66,
    "path": "GRWTSK/Analysis/Convolution/CompactSupportContact.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4c55d6ab370cc2481dd631d9a42613e92908089874f99e02463061b4364d8b4",
  "verification": {
    "reference": "docs/verification/Analysis/Convolution/CompactSupportContact.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53476e0b-08a4-900d-d504-890a964cd7e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem overlap_product_lower_bound {a b h c : ℝ} {p : ℝ → ℝ}
    (shiftPositive : 0 < h) (short : h < b - a) (heightNonneg : 0 ≤ c)
    (rightHeight : ∀ x : ℝ, b - h ≤ x → x ≤ b → c ≤ p x)
    (leftHeight : ∀ y : ℝ, a ≤ y → y ≤ a + h → c ≤ p y)
    (productIntegrable : Integrable (fun x : ℝ ↦ closedProfile a b p x *
      closedProfile a b p (x - (b - a - h)))) :
    c ^ 2 * h ≤ ∫ x : ℝ, closedProfile a b p x *
      closedProfile a b p (x - (b - a - h)) := by
  have pointwise : ∀ x ∈ Ioo (b - h) b, c ^ 2 ≤ closedProfile a b p x *
      closedProfile a b p (x - (b - a - h)) := by
    intro x retained
    have right : x ∈ Icc a b := ⟨by linarith [retained.1], retained.2.le⟩
    have left : x - (b - a - h) ∈ Icc a b :=
      ⟨by linarith [retained.1], by linarith [retained.2]⟩
    unfold closedProfile
    rw [indicator_of_mem right, indicator_of_mem left]
    have first := rightHeight x retained.1.le retained.2.le
    have second := leftHeight _ left.1 (by linarith [retained.2])
    simpa only [pow_two] using mul_le_mul first second heightNonneg
      (heightNonneg.trans first)
  have restricted := setIntegral_ge_of_const_le_real
    (c := c ^ 2) measurableSet_Ioo
    (by rw [Real.volume_Ioo]; exact ENNReal.ofReal_ne_top)
    pointwise productIntegrable.integrableOn
  have length : volume.real (Ioo (b - h) b) = h := by
    change (volume (Ioo (b - h) b)).toReal = h
    rw [Real.volume_Ioo]
    have width : b - (b - h) = h := by ring
    rw [width, ENNReal.toReal_ofReal shiftPositive.le]
  rw [length] at restricted
  exact restricted.trans (setIntegral_le_integral productIntegrable
    (Eventually.of_forall (short_overlap_product_nonneg heightNonneg rightHeight leftHeight)))

/-- Two positive continuous traces supply a uniform lower contact coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/CompactSupportContact.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/CompactSupportContact.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f691b7e401eb6f4a825fc8e14ad7e17105ecb09f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
