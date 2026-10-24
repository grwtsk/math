# disk_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ccaf94d-6dad-9f9d-a262-9fa0ac6c2675",
  "kind": "theorem",
  "lexical_name": "disk_bounds",
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
  "slug": "disk-bounds--81972c13bd3c5a311d0cacbe",
  "source": {
    "blob": "b609cabdb0ee85ab7a1b9a4ec06b2e8cc45313c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 59,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ZetaDiskCauchyBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81972c13bd3c5a311d0cacbeb45af4f20ab9b709f3503f80e114a3b486f95a01",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ZetaDiskCauchyBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ccaf94d-6dad-9f9d-a262-9fa0ac6c2675`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disk_bounds {c z : ℂ} {S σ δ B : ℝ}
    (hσ : 0 < σ) (hδ : 0 < δ)
    (hleft : σ ≤ c.re - S) (hright : c.re + S ≤ 1 - δ)
    (hB : ‖c‖ + S ≤ B) (hz : z ∈ closedBall c S) :
    σ ≤ z.re ∧ δ ≤ ‖z - 1‖ ∧ ‖z‖ ≤ B ∧ z ≠ 1 := by
  have hd : ‖z - c‖ ≤ S := by simpa only [mem_closedBall, dist_eq_norm] using hz
  have hre : |z.re - c.re| ≤ S := by
    simpa only [Complex.sub_re] using (Complex.abs_re_le_norm (z - c)).trans hd
  have hl : σ ≤ z.re := by linarith [(abs_le.mp hre).1]
  have hr : z.re ≤ 1 - δ := by linarith [(abs_le.mp hre).2]
  have hp : δ ≤ ‖z - 1‖ := by
    have hn := Complex.abs_re_le_norm (z - 1)
    have ha : -(z.re - 1) ≤ |z.re - 1| := neg_le_abs _
    simp only [Complex.sub_re, Complex.one_re] at hn
    linarith
  have hb : ‖z‖ ≤ B := calc
    _ = ‖(z - c) + c‖ := by congr 1; ring
    _ ≤ ‖z - c‖ + ‖c‖ := norm_add_le _ _
    _ ≤ B := by linarith
  refine ⟨hl, hp, hb, ?_⟩
  intro he
  have hh := hp
  rw [he, sub_self, norm_zero] at hh
  linarith

/-- A uniform zeta bound derived from the already sourced fractional Mellin estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ZetaDiskCauchyBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ZetaDiskCauchyBounds.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b609cabdb0ee85ab7a1b9a4ec06b2e8cc45313c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
