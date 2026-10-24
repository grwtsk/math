# weightedSource_square_return

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
      "line": 157,
      "path": "GRWTSK/Analysis/Fourier/MoebiusQuadraticReturn.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:edb5c03e-562e-6b28-a1ec-c26199e5dc88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "0e7f1d445612d850025ab4ea76e336b3d311f1da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/Analysis/Fourier/MoebiusQuadraticReturn.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a677529c-7943-50fa-4a4f-bfcb47ff6a20",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f2f6268-401a-75e0-606f-e7e8f8d9567b",
  "kind": "theorem",
  "lexical_name": "weightedSource_square_return",
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
  "slug": "weightedsource-square-return--a253c31ac031bf45e20e2af0",
  "source": {
    "blob": "0e7f1d445612d850025ab4ea76e336b3d311f1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 157,
    "path": "GRWTSK/Analysis/MoebiusQuadraticReturn/Variantee0f79218d4e8832bef8e41b3790448d7dc08f488e98867275e969ebe2652409.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a253c31ac031bf45e20e2af086974a42240920f8da2c407ee1462676e7e61ba6",
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

Occurrence: `result:9f2f6268-401a-75e0-606f-e7e8f8d9567b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedSource_square_return (c u : ℝ) :
    Complex.exp (((2*c-1 : ℝ) : ℂ) * (u : ℂ)) * weightedSource c u *
      starRingEnd ℂ (weightedSource c u) =
        ((NativeWindow.globalPickup u ^ 2 : ℝ) : ℂ) := by
  rw [weightedSource_star]
  have he : Complex.exp (((2*c-1 : ℝ) : ℂ) * (u : ℂ)) *
      Complex.exp (-((c - 1/2 : ℝ) : ℂ) * (u : ℂ)) *
      Complex.exp (-((c - 1/2 : ℝ) : ℂ) * (u : ℂ)) = 1 := by
    rw [← Complex.exp_add, ← Complex.exp_add]
    have hz : (((2*c-1 : ℝ) : ℂ) * (u : ℂ)) +
        -((c - 1/2 : ℝ) : ℂ) * (u : ℂ) +
        -((c - 1/2 : ℝ) : ℂ) * (u : ℂ) = 0 := by push_cast; ring
    rw [hz, Complex.exp_zero]
  calc
    _ = (Complex.exp (((2*c-1 : ℝ) : ℂ) * (u : ℂ)) *
        Complex.exp (-((c - 1/2 : ℝ) : ℂ) * (u : ℂ)) *
        Complex.exp (-((c - 1/2 : ℝ) : ℂ) * (u : ℂ))) *
        (FEMI.completedPickup u * FEMI.completedPickup u) := by
      simp only [weightedSource]
      ring
    _ = _ := by
      rw [he, one_mul]
      simp only [FEMI.completedPickup, NativeWindow.globalPickup, pow_two, Complex.ofReal_mul]



/-- All kernel-integrability input to inversion is discharged on the actual right line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/MoebiusQuadraticReturn/Variantee0f79218d4e8832bef8e41b3790448d7dc08f488e98867275e969ebe2652409.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MoebiusQuadraticReturn/Variantee0f79218d4e8832bef8e41b3790448d7dc08f488e98867275e969ebe2652409.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e7f1d445612d850025ab4ea76e336b3d311f1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
