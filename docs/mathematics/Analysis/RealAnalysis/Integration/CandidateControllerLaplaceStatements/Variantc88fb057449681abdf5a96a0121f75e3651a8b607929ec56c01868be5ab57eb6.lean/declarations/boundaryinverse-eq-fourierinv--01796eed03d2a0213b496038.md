# boundaryInverse_eq_fourierInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8abd7f98-c5c9-28a8-850f-297c77213a70",
  "kind": "theorem",
  "lexical_name": "boundaryInverse_eq_fourierInv",
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
  "slug": "boundaryinverse-eq-fourierinv--01796eed03d2a0213b496038",
  "source": {
    "blob": "7c94be326507217cb61c2a2196e840f323027d4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 30,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceStatements/Variantc88fb057449681abdf5a96a0121f75e3651a8b607929ec56c01868be5ab57eb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01796eed03d2a0213b49603846033149a52017e97d44ae363e90c38a3fdf70d0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceStatements/Variantc88fb057449681abdf5a96a0121f75e3651a8b607929ec56c01868be5ab57eb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8abd7f98-c5c9-28a8-850f-297c77213a70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryInverse_eq_fourierInv (F : ℂ → ℂ) (x : ℝ) :
    boundaryInverse F x = (𝓕⁻ (angularFrequency F)) x := by
  have hπ : 0 < 2 * Real.pi := by positivity
  have he := Measure.integral_comp_mul_left
    (fun t : ℝ => Complex.exp ((x : ℂ) * ((t : ℂ) * I)) * F ((t : ℂ) * I))
    (2 * Real.pi)
  rw [Real.fourierInv_eq']
  unfold angularFrequency boundaryInverse
  rw [abs_of_pos (inv_pos.mpr hπ)] at he
  simp only [smul_eq_mul] at he ⊢
  convert he.symm using 1
  · simp [Complex.real_smul, one_div]
  · congr 1
    ext ξ
    congr 2
    simp only [RCLike.inner_apply, conj_trivial, Complex.ofReal_mul]
    ring

/-- The actual rescaled boundary data are genuinely in both L1 and L2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceStatements/Variantc88fb057449681abdf5a96a0121f75e3651a8b607929ec56c01868be5ab57eb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceStatements/Variantc88fb057449681abdf5a96a0121f75e3651a8b607929ec56c01868be5ab57eb6.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c94be326507217cb61c2a2196e840f323027d4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
