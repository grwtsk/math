# complex_cosh_norm_le_exp_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5d56c40170fe0584e62bb6f101e8d4c8ec96fc5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da76e4c0-0f02-c7f8-7601-2ec1c7c6f3af",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06c60a0c-ff3a-1e9c-37e0-c56fb43b3838",
  "kind": "theorem",
  "lexical_name": "complex_cosh_norm_le_exp_norm",
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
  "slug": "complex-cosh-norm-le-exp-norm--3087251b2c77ad4a47030872",
  "source": {
    "blob": "d5d56c40170fe0584e62bb6f101e8d4c8ec96fc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3087251b2c77ad4a4703087294dda8de7f3354d29933c767da74c9f26fd14fa0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06c60a0c-ff3a-1e9c-37e0-c56fb43b3838`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complex_cosh_norm_le_exp_norm (z : ℂ) :
    ‖Complex.cosh z‖ ≤ Real.exp ‖z‖ := by
  rw [Complex.cosh]
  calc
    ‖(Complex.exp z + Complex.exp (-z)) / 2‖
        = (‖Complex.exp z + Complex.exp (-z)‖) / 2 := by
          simp
    _ ≤ (‖Complex.exp z‖ + ‖Complex.exp (-z)‖) / 2 := by
          gcongr
          exact norm_add_le _ _
    _ ≤ (Real.exp ‖z‖ + Real.exp ‖-z‖) / 2 := by
          gcongr <;> exact Complex.norm_exp_le_exp_norm _
    _ = Real.exp ‖z‖ := by simp

/-- On the nonnegative half-line the spectral cosh kernel grows at most
exponentially at rate `2 * ‖u‖`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5d56c40170fe0584e62bb6f101e8d4c8ec96fc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
