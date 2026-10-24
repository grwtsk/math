# angleRotation_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c154cd5aa3fdb7b51cfd0b9f6a8e207ccfcc107",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 479,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a970f4282ffdd84dea7f4376b130b2467a3425c22282837c8bafdb085ce1ee84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:104de4a6-1e72-78b3-9822-e1840c5ea3a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e4aa14b-8490-c188-5209-c859810e39b3",
  "kind": "theorem",
  "lexical_name": "angleRotation_inv",
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
  "slug": "anglerotation-inv--a1e139708852f57297d81d13",
  "source": {
    "blob": "3c154cd5aa3fdb7b51cfd0b9f6a8e207ccfcc107",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 479,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Varianta970f4282ffdd84dea7f4376b130b2467a3425c22282837c8bafdb085ce1ee84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1e139708852f57297d81d13e2e99c1f8151107d908614534a8d5c8666927ff4",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Varianta970f4282ffdd84dea7f4376b130b2467a3425c22282837c8bafdb085ce1ee84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e4aa14b-8490-c188-5209-c859810e39b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angleRotation_inv (θ : ℝ) : (angleRotation θ)⁻¹ = angleRotation (-θ) := by
  apply LinearIsometryEquiv.ext
  intro f
  change (rotation (Real.cos θ) (Real.sin θ) (Real.cos_sq_add_sin_sq θ)).symm f = _
  rw [rotation_symm_apply,angleRotation_apply,Real.cos_neg,Real.sin_neg]

/-- The actual angular sign involution is its own group inverse. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Varianta970f4282ffdd84dea7f4376b130b2467a3425c22282837c8bafdb085ce1ee84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Varianta970f4282ffdd84dea7f4376b130b2467a3425c22282837c8bafdb085ce1ee84.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c154cd5aa3fdb7b51cfd0b9f6a8e207ccfcc107` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
