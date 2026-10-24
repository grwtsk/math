# controller_laplace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8ef2c00-622a-5520-851b-08aa41410b70",
  "kind": "theorem",
  "lexical_name": "controller_laplace",
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
  "slug": "controller-laplace--7145350c972d88c92ed4513c",
  "source": {
    "blob": "6bb311bab7f72f1041b556558dec2b16eec332e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 457,
    "line": 448,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceAudit/Variantd840a3c93536920bcf13bb9b7fd0115dc784ff69f19f26606a5173e078fd2997.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7145350c972d88c92ed4513c2847f941e5ca385d54ced36e0cae82b749fea0a7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceAudit/Variantd840a3c93536920bcf13bb9b7fd0115dc784ff69f19f26606a5173e078fd2997.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8ef2c00-622a-5520-851b-08aa41410b70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–457.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem controller_laplace (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (z : ℂ) (hz : 0 ≤ z.re) :
    (∫ x : ℝ in Ioi 0, Complex.exp (-z * (x : ℂ)) *
      controller X hX ε h hε hh hh1 x) = candidate X ε h z := by
  rw [← candidate_boundaryInverse_laplace X hX ε h hε hh hh1 z hz]
  apply integral_congr_ae
  filter_upwards [controller_ae X hX ε h hε hh hh1] with x hx
  rw [hx]

/-- The admitted full-line inverse vector also has a genuine L1 representative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceAudit/Variantd840a3c93536920bcf13bb9b7fd0115dc784ff69f19f26606a5173e078fd2997.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceAudit/Variantd840a3c93536920bcf13bb9b7fd0115dc784ff69f19f26606a5173e078fd2997.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bb311bab7f72f1041b556558dec2b16eec332e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
