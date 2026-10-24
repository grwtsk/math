# boundary_flux_eq_zero_of_jets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8982e1d065f016d8bc6fce4c1b64951e21661e81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb948aae-0141-31be-aa5c-10e9c4196dd0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0bc08562-50ba-1f02-8071-664fe24cf78d",
  "kind": "theorem",
  "lexical_name": "boundary_flux_eq_zero_of_jets",
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
  "slug": "boundary-flux-eq-zero-of-jets--483ca401bbc0f0e016d983da",
  "source": {
    "blob": "8982e1d065f016d8bc6fce4c1b64951e21661e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 85,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:483ca401bbc0f0e016d983daf4f824fff0a247c4f68b1d0b1c4cf0051fb6e6d6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bc08562-50ba-1f02-8071-664fe24cf78d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_flux_eq_zero_of_jets (g f : ℝ → ℝ) (t : ℝ)
    (hf : ∀ k : ℕ, k ≤ 3 → iteratedDeriv k f t = 0) :
    boundaryFluxFunction g f t = 0 := by
  have h0 : f t = 0 := by simpa using hf 0 (by omega)
  simp [boundaryFluxFunction, poleBoundaryFlux, h0,
    hf 1 (by omega), hf 2 (by omega), hf 3 (by omega)]

/-- The first four endpoint traces and Green jump prove a genuine finite-interval delta identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleGreenWeakIdentity/Variantf377a719521f09b13d1974b0d7996e1aa0ecf3f9267dbbab6485e7c863bef6d3.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8982e1d065f016d8bc6fce4c1b64951e21661e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
