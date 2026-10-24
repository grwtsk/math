# fderivCompContinuousLinearMap_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f067183-9457-d39b-8b85-5f01ede35848",
  "kind": "lemma",
  "lexical_name": "fderivCompContinuousLinearMap_apply",
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
  "slug": "fderivcompcontinuouslinearmap-apply--070a67663da8c78a3bceeb1e",
  "source": {
    "blob": "7c4f4f226ccd3b3a4dc39673aa52f23372ff4c5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1162,
    "line": 1151,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3ffb0c6e9f1094bafdeead9932c8678bbcdd1a217c26415649e1e7fd4d26412b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:070a67663da8c78a3bceeb1e7b710e6770459cae3bde85ade47fba101c00e6e8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3ffb0c6e9f1094bafdeead9932c8678bbcdd1a217c26415649e1e7fd4d26412b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f067183-9457-d39b-8b85-5f01ede35848`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1151–1162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fderivCompContinuousLinearMap_apply [DecidableEq ι]
    (f : ContinuousMultilinearMap 𝕜 E₁ G) (g : ∀ i, E i →L[𝕜] E₁ i)
    (dg : ∀ i, E i →L[𝕜] E₁ i) (v : ∀ i, E i) :
    f.fderivCompContinuousLinearMap g dg v = ∑ i, f fun j ↦ (update g i (dg i) j) (v j) := by
  simp [fderivCompContinuousLinearMap]

/-- One of the components of the iterated derivative of a continuous multilinear map. Given a
bijection `e` between a type `α` (typically `Fin k`) and a subset `s` of `ι`, this component is a
continuous multilinear map of `k` vectors `v₁, ..., vₖ`, mapping them
to `f (x₁, (v_{e.symm 2})₂, x₃, ...)`, where at indices `i` in `s` one uses the `i`-th coordinate of
the vector `v_{e.symm i}` and otherwise one uses the `i`-th coordinate of a reference vector `x`.
This is continuous multilinear in the components of `x` outside of `s`, and in the `v_j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3ffb0c6e9f1094bafdeead9932c8678bbcdd1a217c26415649e1e7fd4d26412b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3ffb0c6e9f1094bafdeead9932c8678bbcdd1a217c26415649e1e7fd4d26412b.lean#L1151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c4f4f226ccd3b3a4dc39673aa52f23372ff4c5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
