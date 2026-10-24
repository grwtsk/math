# windowPrimitive_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e073140a-38fe-5d47-fb9f-7854e9767881",
  "kind": "theorem",
  "lexical_name": "windowPrimitive_eq",
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
  "slug": "windowprimitive-eq--c257230e85505dbae3d08979",
  "source": {
    "blob": "7a8ef443abc47f9d8fe07040aaf0931880b7a8e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 34,
    "path": "GRWTSK/Analysis/Real/RationalRieszPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c257230e85505dbae3d08979704cc3e9d4bba4e7f0b6e7167ba062bf9b2d3b98",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/RationalRieszPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e073140a-38fe-5d47-fb9f-7854e9767881`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem windowPrimitive_eq (a b u : ℝ) (ha : 1 < a) (hau : a ≤ u) (hub : u ≤ b) :
    windowPrimitive a b u = rationalRieszPrimitive a u := by
  have hi := hinge_density_integrable a u u ha hau
  have hj := hinge_density_integrable u b u (ha.trans_le hau) hub
  have hz : (∫ t in u..b, max (u - t) 0 * rationalDensity t) = 0 := by
    calc
      _ = ∫ t in u..b, (0 : ℝ) := by
        apply intervalIntegral.integral_congr
        intro t ht
        dsimp only
        have ht' : t ∈ Icc u b := (uIcc_of_le hub) ▸ ht
        rw [max_eq_right (by linarith [ht'.1]), zero_mul]
      _ = 0 := by simp
  have he : (∫ t in a..u, max (u - t) 0 * rationalDensity t) =
      ∫ t in a..u, (u - t) * rationalDensity t := by
    apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    have ht' : t ∈ Icc a u := (uIcc_of_le hau) ▸ ht
    rw [max_eq_left (by linarith [ht'.2])]
  unfold windowPrimitive rationalRieszPrimitive
  rw [← intervalIntegral.integral_add_adjacent_intervals hi hj, hz, add_zero, he]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/RationalRieszPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/RationalRieszPrimitive.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a8ef443abc47f9d8fe07040aaf0931880b7a8e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
