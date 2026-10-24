# weightedSource_rawFourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e7f1d445612d850025ab4ea76e336b3d311f1da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/Analysis/Fourier/MoebiusQuadraticReturn.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:336f0434-0e4e-be87-6644-55181fe0aaef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "0e7f1d445612d850025ab4ea76e336b3d311f1da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/Analysis/Fourier/MoebiusQuadraticReturn.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2412148d-cfe7-0b50-295b-a57ab581b6d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22836a2d-58d3-820c-b02f-c4c7cd88b1e4",
  "kind": "theorem",
  "lexical_name": "weightedSource_rawFourier",
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
  "slug": "weightedsource-rawfourier--6971b8253dfe271a486a7f63",
  "source": {
    "blob": "0e7f1d445612d850025ab4ea76e336b3d311f1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 63,
    "path": "GRWTSK/Analysis/MoebiusQuadraticReturn/Variantee0f79218d4e8832bef8e41b3790448d7dc08f488e98867275e969ebe2652409.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6971b8253dfe271a486a7f6337908c8120f6a4516c3acd77d851b0ad778113d3",
  "verification": {
    "reference": "docs/verification/Analysis/MoebiusQuadraticReturn/Variantee0f79218d4e8832bef8e41b3790448d7dc08f488e98867275e969ebe2652409.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22836a2d-58d3-820c-b02f-c4c7cd88b1e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedSource_rawFourier {c : ℝ} (hc : 1 < c) (t : ℝ) :
    PPNC.rawFourier (weightedSource c) t = RightLine.pickupKernel c t := by
  let z : ℂ := (c - 1/2 : ℝ) + t * Complex.I
  have hline : (1/2 : ℝ) < z.re := by simp [z]; linarith
  rw [PPNC.rawFourier_eq_integral]
  calc
    _ = ∫ u : ℝ, Complex.exp (-z * (u : ℂ)) * FEMI.completedPickup u := by
      apply integral_congr_ae
      filter_upwards [] with u
      dsimp only [weightedSource]
      calc
        _ = (Complex.exp (-((c-1/2 : ℝ) : ℂ) * (u : ℂ)) *
          Complex.exp (((-(u*t)) : ℂ) * Complex.I)) * FEMI.completedPickup u := by ring
        _ = _ := by
          rw [← Complex.exp_add]
          congr 2
          dsimp only [z]
          push_cast
          ring
    _ = ∫ u : ℝ in Ioi 0, Complex.exp (-z * (u : ℂ)) * FEMI.completedPickup u := by
      symm
      apply setIntegral_eq_integral_of_forall_compl_eq_zero
      intro u hu
      rw [completedPickup_zero_of_nonpositive (le_of_not_gt hu), mul_zero]
    _ = _ := FEMI.pickupLaplace_eq_reciprocal z hline

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/MoebiusQuadraticReturn/Variantee0f79218d4e8832bef8e41b3790448d7dc08f488e98867275e969ebe2652409.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MoebiusQuadraticReturn/Variantee0f79218d4e8832bef8e41b3790448d7dc08f488e98867275e969ebe2652409.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e7f1d445612d850025ab4ea76e336b3d311f1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
