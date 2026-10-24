# boundary_profile_laplace_integrable

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
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:395d3f3f-dc4e-8a48-f125-66a0eceadf12",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef60958b-9d04-9249-9b65-890b14208a74",
  "kind": "theorem",
  "lexical_name": "boundary_profile_laplace_integrable",
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
  "slug": "boundary-profile-laplace-integrable--6ef97bbbe25b1664e67e7493",
  "source": {
    "blob": "74e97fba1a99108bd87790ed46e35351bb183617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ef97bbbe25b1664e67e74930820255868704d21ed84dd5edd6d9b4b9eb2428c",
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

Occurrence: `result:ef60958b-9d04-9249-9b65-890b14208a74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_profile_laplace_integrable (s : ℂ) (hs : 0 < s.re) :
    IntegrableOn (fun y : ℝ ↦ Complex.exp (-s * (y : ℂ)) * (boundaryProfile y : ℂ))
      (Ioi 0) := by
  have hi := ((half_line_polynomial_laplace_integrable 9 s hs).sub
    ((half_line_polynomial_laplace_integrable 7 s hs).const_mul 576)).add
      ((half_line_polynomial_laplace_integrable 5 s hs).const_mul 48384)
  change Integrable _ (volume.restrict (Ioi 0))
  rw [funext (boundary_profile_laplace_integrand s)]
  exact hi.const_mul (2431 / 3584 : ℂ)

/-- The exact limiting transform has the squared-pole factor and coefficient 3938220. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74e97fba1a99108bd87790ed46e35351bb183617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
