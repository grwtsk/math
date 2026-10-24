# contDiffWithinAtProp_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79418ade9f2f078695d8ba3a08f730495bfffb41",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/7816f93367ecfb43b4b55f72ec8899c8e0866eeb6071c2121375f5517ebdbda5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc17384d-1a00-ab23-5791-33c7a0ef5cb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f613e7c3-8fba-ddbb-3e80-5b1c9e75781f",
  "kind": "theorem",
  "lexical_name": "contDiffWithinAtProp_id",
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
  "slug": "contdiffwithinatprop-id--7cbce87fe5d9755c0279fdb8",
  "source": {
    "blob": "79418ade9f2f078695d8ba3a08f730495bfffb41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 155,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variant7816f93367ecfb43b4b55f72ec8899c8e0866eeb6071c2121375f5517ebdbda5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cbce87fe5d9755c0279fdb8f3b993a55ce3a4acd4a02c1ff7d85936e34968de",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Defs/Variant7816f93367ecfb43b4b55f72ec8899c8e0866eeb6071c2121375f5517ebdbda5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f613e7c3-8fba-ddbb-3e80-5b1c9e75781f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiffWithinAtProp_id (x : H) : ContDiffWithinAtProp I I n id univ x := by
  simp only [ContDiffWithinAtProp, id_comp, preimage_univ, univ_inter]
  have : ContDiffWithinAt 𝕜 n id (range I) (I x) := contDiff_id.contDiffAt.contDiffWithinAt
  refine this.congr (fun y hy => ?_) ?_
  · simp only [ModelWithCorners.right_inv I hy, mfld_simps]
  · simp only [mfld_simps]

variable (I I') in
/-- `ContMDiffWithinAt I I' n f x` indicates that the function `f : M → M'` between manifolds
is `n` times continuously differentiable at `x : M` within the set `s`.

`f` is `n` times continuously differentiable within `s` at `x` if it is continuous and it is `n`
times continuously differentiable in this set around `x`, when read in the preferred chart at `x`.
The parameter `n` belongs to `ℕ∞ω` (accessible in the `ContDiff` scope), i.e. it can be a natural
number, `∞`, or `ω`, where `C^ω` corresponds to analytic functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Defs/Variant7816f93367ecfb43b4b55f72ec8899c8e0866eeb6071c2121375f5517ebdbda5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Defs/Variant7816f93367ecfb43b4b55f72ec8899c8e0866eeb6071c2121375f5517ebdbda5.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79418ade9f2f078695d8ba3a08f730495bfffb41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
