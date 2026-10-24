# finite_zeros_rectangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f284a561-f8c4-1c18-57d5-2c5377ba1bd9",
  "kind": "theorem",
  "lexical_name": "finite_zeros_rectangle",
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
  "slug": "finite-zeros-rectangle--9a163b32e6a178753dc9e834",
  "source": {
    "blob": "dd09b31cc78dfe7a2d5f72f000c96adf33231334",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 151,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variantd30f50d1d1b675ea22743966fc827bc0b05a0bf42523832ddd9f48dca5a12190.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a163b32e6a178753dc9e8348af4fdfc4ae28d9f773df455f71bf877c3609a68",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variantd30f50d1d1b675ea22743966fc827bc0b05a0bf42523832ddd9f48dca5a12190.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f284a561-f8c4-1c18-57d5-2c5377ba1bd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_zeros_rectangle {f : ℂ → ℂ} {z w : ℂ} (hf : AnalyticOnNhd ℂ f (Rectangle z w))
    {x : ℂ} (hx : x ∈ Rectangle z w) (hfx : f x ≠ 0) :
    (Rectangle z w ∩ f ⁻¹' {0}).Finite := by
  have hconv : Convex ℝ (Rectangle z w) := by
    rw [rectangle_eq_convexHull]; exact convex_convexHull ℝ _
  have hcomp : IsCompact (Rectangle z w) := isCompact_uIcc.reProdIm isCompact_uIcc
  refine IsCompact.finite ?_ ?_
  · exact hcomp.of_isClosed_subset
      (hf.continuousOn.preimage_isClosed_of_isClosed hcomp.isClosed isClosed_singleton)
      inter_subset_left
  · rw [inter_comm]
    exact isDiscrete_of_codiscreteWithin
      (hf.preimage_zero_mem_codiscreteWithin hfx hx ⟨⟨x, hx⟩, hconv.isPreconnected⟩)

/-! ## Meromorphic version: finitely many zeros AND poles inside the rectangle

Intended for f = completedRiemannZeta (simple poles at 0 and 1, residues ∓1):
(1/2πi) ∮ g·(f'/f) = Σ_{zeros ρ} ord_ρ(f)·g(ρ) − Σ_{poles p} m_p·g(p).
A pole of order m at p is witnessed elementarily by  (s − p)^m · f(s) → c ≠ 0  (s → p, s ≠ p),
which is the shape of Mathlib's `completedRiemannZeta_residue_one` (m = 1). -/

/-- **Weighted argument principle with poles.** f analytic on a neighbourhood of every point of
the closed rectangle except at the finitely many interior points P, where (s − p)^{m p} f(s) → c_p ≠ 0;
g analytic on a neighbourhood of every point; f ≠ 0 on the border; Z = zero set of f in the
rectangle (off P). Then (1/2πi)∮ g·f'/f = Σ_{ρ∈Z} ord_ρ(f) g(ρ) − Σ_{p∈P} m_p g(p). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variantd30f50d1d1b675ea22743966fc827bc0b05a0bf42523832ddd9f48dca5a12190.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RectangleLogDeriv/Variantd30f50d1d1b675ea22743966fc827bc0b05a0bf42523832ddd9f48dca5a12190.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd09b31cc78dfe7a2d5f72f000c96adf33231334` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
