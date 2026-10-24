# thetaPhi_cosh_interval_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f98268724a793c4dd24f6cde4395991e7f1a4899",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 287,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6efde8f-3c15-2f04-f486-6e77836d5369",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21e170a7-5bde-5a3c-4f8a-0ff93c0542ae",
  "kind": "theorem",
  "lexical_name": "thetaPhi_cosh_interval_identity",
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
  "slug": "thetaphi-cosh-interval-identity--733dc5e7b51f97c25635f84e",
  "source": {
    "blob": "f98268724a793c4dd24f6cde4395991e7f1a4899",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 287,
    "path": "GRWTSK/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:733dc5e7b51f97c25635f84e660e84614f7e48f7de0c7bf972b38d9a50ca750e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21e170a7-5bde-5a3c-4f8a-0ff93c0542ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhi_cosh_interval_identity (u : ℂ) (b : ℝ) :
    (8 : ℂ) *
        ∫ t in (0 : ℝ)..b,
          (thetaPhi t : ℂ) * Complex.cosh (2 * u * (t : ℂ)) =
      (1 / 2 : ℂ) +
        (4 * u ^ 2 - 1) *
          (∫ t in (0 : ℝ)..b,
            (thetaA t : ℂ) * Complex.cosh (2 * u * (t : ℂ))) +
        thetaCoshBoundary u b := by
  have hp := thetaPhi_exp_interval_identity u b
  have hm := thetaPhi_exp_interval_identity (-u) b
  have havg :
      (8 : ℂ) *
          (((∫ t in (0 : ℝ)..b,
                (thetaPhi t : ℂ) * thetaExpKernel u t) +
            (∫ t in (0 : ℝ)..b,
                (thetaPhi t : ℂ) * thetaExpKernel (-u) t)) / 2) =
        thetaCoshBoundary u b - thetaCoshBoundary u 0 +
          (((2 * u) ^ 2 - 1) *
            (((∫ t in (0 : ℝ)..b,
                  (thetaA t : ℂ) * thetaExpKernel u t) +
              (∫ t in (0 : ℝ)..b,
                  (thetaA t : ℂ) * thetaExpKernel (-u) t)) / 2)) := by
    unfold thetaCoshBoundary
    linear_combination (1 / 2 : ℂ) * hp + (1 / 2 : ℂ) * hm
  rw [← thetaPhi_cosh_interval_eq_average u b,
    ← thetaA_cosh_interval_eq_average u b] at havg
  rw [thetaCoshBoundary_zero] at havg
  convert! havg using 1
  ring

/-- Expanded form of the same theorem: the surviving upper boundary is exactly
`A'(b) cosh(2ub) - 2u A(b) sinh(2ub)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f98268724a793c4dd24f6cde4395991e7f1a4899` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
