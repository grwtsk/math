# thetaExpKernel_hasDerivAt

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
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57d9becc-fcb5-8255-18b5-084f40fe7d99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b8dea26-85a3-2ea8-d868-b82b1362b44f",
  "kind": "theorem",
  "lexical_name": "thetaExpKernel_hasDerivAt",
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
  "slug": "thetaexpkernel-hasderivat--0f0ba4ba8dffe378dc2a7c05",
  "source": {
    "blob": "f98268724a793c4dd24f6cde4395991e7f1a4899",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 62,
    "path": "GRWTSK/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f0ba4ba8dffe378dc2a7c05f45063a1980666d7c1bee61e1473fc399ee8b988",
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

Occurrence: `result:2b8dea26-85a3-2ea8-d868-b82b1362b44f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaExpKernel_hasDerivAt (u : ℂ) (t : ℝ) :
    HasDerivAt (thetaExpKernel u) ((2 * u) * thetaExpKernel u t) t := by
  have hlin :
      HasDerivAt (fun x : ℝ => (2 * u) * (x : ℂ)) (2 * u) t := by
    simpa only [Complex.ofReal_one, mul_one] using!
      (hasDerivAt_id t).ofReal_comp.const_mul (2 * u)
  unfold thetaExpKernel
  convert! hlin.cexp using 1
  ring

/-- Differentiating the boundary expression exposes precisely the positive
theta source minus the spectral multiple of `A`.  This is the differential
form of the two integrations by parts, before any endpoint is discarded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/C9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567eIBPCompile/Variantc9929b4eb9e1613412a706116645ff2d93a9786bebf0da909c2189affac4567e.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f98268724a793c4dd24f6cde4395991e7f1a4899` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
