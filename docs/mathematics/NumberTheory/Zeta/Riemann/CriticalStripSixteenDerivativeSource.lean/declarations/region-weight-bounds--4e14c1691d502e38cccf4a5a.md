# region_weight_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4d8eb81-db20-87af-7bd0-5cd5803ab219",
  "kind": "lemma",
  "lexical_name": "region_weight_bounds",
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
  "slug": "region-weight-bounds--4e14c1691d502e38cccf4a5a",
  "source": {
    "blob": "8b8c1570d8e3aaf419e33610d00a93d0be37161a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 200,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e14c1691d502e38cccf4a5abf85c052a95af3ddfde0fd14ff3e185e4635a631",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4d8eb81-db20-87af-7bd0-5cd5803ab219`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma region_weight_bounds {s : ℂ} (hs : Region s) :
    ‖weight s‖ ≤ (30 : ℝ) ∧ ‖weightSlope s‖ ≤ (3 : ℝ) := by
  have hn := region_norms hs
  have h4 := product_norm_le 4 (by norm_num : (0 : ℝ) ≤ 21)
    (s := s) (fun j hj => region_factors hs j (by omega))
  have h6 := product_norm_le 6 (by norm_num : (0 : ℝ) ≤ 21)
    (s := s) (fun j hj => region_factors hs j (by omega))
  have hd4 := productSlope_norm_le 4 (by norm_num : (0 : ℝ) ≤ 21)
    (s := s) (fun j hj => region_factors hs j (by omega))
  have hd6 := productSlope_norm_le 6 (by norm_num : (0 : ℝ) ≤ 21)
    (s := s) (fun j hj => region_factors hs j (by omega))
  constructor
  · calc
      ‖weight s‖ ≤ 16 + ‖s-1‖/2 + ‖s‖*‖s-1‖/192 +
          ‖product 4 s‖/(720*16^3) + ‖product 6 s‖/(30240*16^5) := by
        unfold weight
        bound
      _ ≤ 30 := by nlinarith [mul_le_mul hn.1 hn.2 (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 16)]
  · have htw : ‖2*s-1‖ ≤ (33 : ℝ) := by
      calc
        _ ≤ ‖(2 : ℂ)‖*‖s‖+‖(1 : ℂ)‖ := by simpa [norm_mul] using norm_sub_le (2*s) 1
        _ ≤ 33 := by norm_num; linarith
    calc
      ‖weightSlope s‖ ≤ 1/2 + ‖2*s-1‖/192 +
          ‖productSlope 4 s‖/(720*16^3) + ‖productSlope 6 s‖/(30240*16^5) := by
        unfold weightSlope
        bound
      _ ≤ 3 := by norm_num at hd4 hd6; nlinarith

/-- Uniform first-derivative source error. No cutoff-one/two saving is transported. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b8c1570d8e3aaf419e33610d00a93d0be37161a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
