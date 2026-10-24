# boundary_profile_laplace_closed_form

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74e97fba1a99108bd87790ed46e35351bb183617",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:784b794f-493a-9607-ebb0-545ebf5358cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1cda6ee-ea2a-118a-c06d-0808e7cb7379",
  "kind": "theorem",
  "lexical_name": "boundary_profile_laplace_closed_form",
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
  "slug": "boundary-profile-laplace-closed-form--68aba52b4ebe2d055f7d67dd",
  "source": {
    "blob": "74e97fba1a99108bd87790ed46e35351bb183617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68aba52b4ebe2d055f7d67ddc47d4f1d5ef664618a89622b7908b514599a92cc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1cda6ee-ea2a-118a-c06d-0808e7cb7379`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_profile_laplace_closed_form (s : ℂ) (hs : 0 < s.re) :
    boundaryProfileLaplace s = 3938220 * (s ^ 2 - 1 / 4) ^ 2 / s ^ 10 := by
  have h9 := half_line_polynomial_laplace_integrable 9 s hs
  have h7 := (half_line_polynomial_laplace_integrable 7 s hs).const_mul (576 : ℂ)
  have h5 := (half_line_polynomial_laplace_integrable 5 s hs).const_mul (48384 : ℂ)
  have h97 : IntegrableOn (fun y : ℝ ↦ (y : ℂ) ^ 9 * Complex.exp (-s * (y : ℂ)) -
      576 * ((y : ℂ) ^ 7 * Complex.exp (-s * (y : ℂ)))) (Ioi 0) := h9.sub h7
  unfold boundaryProfileLaplace
  simp_rw [boundary_profile_laplace_integrand]
  rw [integral_const_mul, integral_add h97 h5, integral_sub h9 h7]
  simp_rw [integral_const_mul, half_line_polynomial_laplace_integral _ s hs]
  have hne : s ≠ 0 := by intro h; simp [h] at hs
  norm_num [Nat.factorial]
  field_simp
  ring

/-- The integral transform has its exact zero at the positive pole parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74e97fba1a99108bd87790ed46e35351bb183617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
