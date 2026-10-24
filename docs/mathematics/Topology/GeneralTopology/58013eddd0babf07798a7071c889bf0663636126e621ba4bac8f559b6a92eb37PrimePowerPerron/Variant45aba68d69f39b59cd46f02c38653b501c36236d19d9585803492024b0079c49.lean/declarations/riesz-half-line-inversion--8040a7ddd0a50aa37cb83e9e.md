# riesz_half_line_inversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43143385-00a0-53af-09da-c4e1a460b07f",
  "kind": "theorem",
  "lexical_name": "riesz_half_line_inversion",
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
  "slug": "riesz-half-line-inversion--8040a7ddd0a50aa37cb83e9e",
  "source": {
    "blob": "1bf9eb0e63164dce124d859c6bea8f9ca0edc96f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 344,
    "path": "GRWTSK/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant45aba68d69f39b59cd46f02c38653b501c36236d19d9585803492024b0079c49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8040a7ddd0a50aa37cb83e9ef0803ac38b92c2b88709a65626902343b485b5c4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant45aba68d69f39b59cd46f02c38653b501c36236d19d9585803492024b0079c49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43143385-00a0-53af-09da-c4e1a460b07f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riesz_half_line_inversion (A c y : ℝ) (hc : 0 < c) :
    (1 / (2 * Real.pi) : ℂ) *
      ∫ t : ℝ, boundaryRieszTransform A ((c : ℂ) + (t : ℂ) * Complex.I) *
        Complex.exp (Complex.I * (t : ℂ) * (y : ℂ)) =
      (Real.exp (-c * y) : ℂ) * (Ioi (0 : ℝ)).indicator
        (fun y : ℝ ↦ (extendedBoundaryKernel A y : ℂ)) y := by
  have hi := Zeta23.EF.paper_inversion (riesz_tilt_continuous A c)
    (riesz_tilt_integrable A c hc) (riesz_tilt_fourier_integrable A c hc) y
  rw [← integral_neg_eq_self] at hi
  simp_rw [riesz_tilt_paper_fourier A c _ hc] at hi
  have he : (fun t : ℝ ↦ boundaryRieszTransform A ((c : ℂ) - ((-t : ℝ) : ℂ) * Complex.I) *
      Complex.exp (-Complex.I * ((-t : ℝ) : ℂ) * (y : ℂ))) =
      (fun t : ℝ ↦ boundaryRieszTransform A ((c : ℂ) + (t : ℂ) * Complex.I) *
        Complex.exp (Complex.I * (t : ℂ) * (y : ℂ))) := by
    funext t
    simp only [Complex.ofReal_neg, mul_neg, neg_mul, neg_neg, sub_neg_eq_add]
  rw [he] at hi
  rw [← hi]
  unfold rieszTilt
  by_cases hy : y ∈ Ioi (0 : ℝ)
  · simp only [indicator_of_mem hy]
    rw [Complex.ofReal_exp]
    congr 2
    push_cast
    rfl
  · simp [indicator_of_notMem hy]

/-- The translated rational transform used in finite-radius Perron inversion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant45aba68d69f39b59cd46f02c38653b501c36236d19d9585803492024b0079c49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant45aba68d69f39b59cd46f02c38653b501c36236d19d9585803492024b0079c49.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bf9eb0e63164dce124d859c6bea8f9ca0edc96f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
