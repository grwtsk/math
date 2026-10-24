# SimplicialShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a4a5089956dbf214586bea780b7211a26404a1b853e868d48b24d66869d878b",
  "kind": "structure",
  "lexical_name": "SimplicialShape",
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
  "slug": "simplicialshape--6bad83b33a55d4cbd1f6a7e7",
  "source": {
    "blob": "c6fdf2724018c9d1cc2976e31b70743c348653d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 19,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/A3a4c4e219c9059fb/Variant008f1891b9301ea38baa3495bc18d255a650407945cdf7265a406d187b2bef6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bad83b33a55d4cbd1f6a7e7e969b26623bfea349efc5078689f4ace73a0462d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/A3a4c4e219c9059fb/Variant008f1891b9301ea38baa3495bc18d255a650407945cdf7265a406d187b2bef6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a4a5089956dbf214586bea780b7211a26404a1b853e868d48b24d66869d878b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SimplicialShape (Vertex : Type u) where
  simplices : List (Finset Vertex)
  downwardClosed :
    ∀ simplex face,
      simplex ∈ simplices → face ⊆ simplex → face ∈ simplices

end Mathematics.Fabric
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/A3a4c4e219c9059fb/Variant008f1891b9301ea38baa3495bc18d255a650407945cdf7265a406d187b2bef6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/A3a4c4e219c9059fb/Variant008f1891b9301ea38baa3495bc18d255a650407945cdf7265a406d187b2bef6d.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6fdf2724018c9d1cc2976e31b70743c348653d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
