# isVisible_iff_lineMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0d06aea-378b-4d24-5e5a-d5a8f5a6bdca",
  "kind": "lemma",
  "lexical_name": "isVisible_iff_lineMap",
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
  "slug": "isvisible-iff-linemap--11b852fcdee564133005bc3b",
  "source": {
    "blob": "d86b78dd0bf6e48e07ab6c7d6af9b317bc3e20f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 64,
    "path": "GRWTSK/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11b852fcdee564133005bc3b9a5680f81ba3d6e73192aeeb250312c81a309639",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0d06aea-378b-4d24-5e5a-d5a8f5a6bdca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isVisible_iff_lineMap (hxy : x ≠ y) :
    IsVisible 𝕜 s x y ↔ ∀ δ ∈ Set.Ioo (0 : 𝕜) 1, lineMap x y δ ∉ s := by
  simp [IsVisible, sbtw_iff_mem_image_Ioo_and_ne, hxy]
  aesop

end AddTorsor

section Module
variable [Field 𝕜] [LinearOrder 𝕜] [IsStrictOrderedRing 𝕜]
  [AddCommGroup V] [Module 𝕜 V] {s : Set V} {x y z : V}

/-- If a point `x` sees a convex combination of points of a set `s` through `convexHull ℝ s ∌ x`,
then it sees all terms of that combination.

Note that the converse does not hold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Visible/Variantb9aceea59f4d3f06af54612f1400d2cd9ffdb7818905136b82e94bfd3065c7d9.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d86b78dd0bf6e48e07ab6c7d6af9b317bc3e20f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
