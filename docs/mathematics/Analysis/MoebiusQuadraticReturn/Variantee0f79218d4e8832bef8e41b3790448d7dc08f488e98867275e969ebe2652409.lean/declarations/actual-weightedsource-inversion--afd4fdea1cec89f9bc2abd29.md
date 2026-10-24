# actual_weightedSource_inversion

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
      "line": 184,
      "path": "GRWTSK/Analysis/Fourier/MoebiusQuadraticReturn.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46653933-9d99-da9e-710d-9e3f431ef4f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "0e7f1d445612d850025ab4ea76e336b3d311f1da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/Analysis/Fourier/MoebiusQuadraticReturn.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e701f7b5-2cee-4770-4075-ef9fd7da7be5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:630b0e41-d838-67f2-ba31-87810b6d9f65",
  "kind": "theorem",
  "lexical_name": "actual_weightedSource_inversion",
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
  "slug": "actual-weightedsource-inversion--afd4fdea1cec89f9bc2abd29",
  "source": {
    "blob": "0e7f1d445612d850025ab4ea76e336b3d311f1da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 184,
    "path": "GRWTSK/Analysis/MoebiusQuadraticReturn/Variantee0f79218d4e8832bef8e41b3790448d7dc08f488e98867275e969ebe2652409.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afd4fdea1cec89f9bc2abd292a9bf527883011b5cbefbd30475e0890af4616ec",
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

Occurrence: `result:630b0e41-d838-67f2-ba31-87810b6d9f65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_weightedSource_inversion {c : ℝ} (hc : 1 < c) (u : ℝ) :
    ((2 * Real.pi : ℝ)⁻¹ : ℂ) *
      (∫ t : ℝ, RightLine.pickupKernel c t * Complex.exp (((t*u : ℝ) : ℂ) * Complex.I)) =
      weightedSource c u :=
  weightedSource_inversion hc (ConcreteTail.pickupKernel_integrable hc) u

/-- The concrete double reciprocal-kernel integral equals the literal signed source energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/MoebiusQuadraticReturn/Variantee0f79218d4e8832bef8e41b3790448d7dc08f488e98867275e969ebe2652409.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MoebiusQuadraticReturn/Variantee0f79218d4e8832bef8e41b3790448d7dc08f488e98867275e969ebe2652409.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e7f1d445612d850025ab4ea76e336b3d311f1da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
