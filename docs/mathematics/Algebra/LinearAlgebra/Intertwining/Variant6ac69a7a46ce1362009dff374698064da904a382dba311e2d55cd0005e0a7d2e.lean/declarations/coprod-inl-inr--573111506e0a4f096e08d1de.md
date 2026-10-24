# coprod_inl_inr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32036af1-b4f9-12de-b445-848fdf753c53",
  "kind": "lemma",
  "lexical_name": "coprod_inl_inr",
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
  "slug": "coprod-inl-inr--573111506e0a4f096e08d1de",
  "source": {
    "blob": "00d610e74d863d4d3d09c58b47baeafbe8d1d3e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 312,
    "path": "GRWTSK/Algebra/LinearAlgebra/Intertwining/Variant6ac69a7a46ce1362009dff374698064da904a382dba311e2d55cd0005e0a7d2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:573111506e0a4f096e08d1dec0c0fded3aac2dbd2defe8fb1cedf57dd6465ab3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Intertwining/Variant6ac69a7a46ce1362009dff374698064da904a382dba311e2d55cd0005e0a7d2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32036af1-b4f9-12de-b445-848fdf753c53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma coprod_inl_inr : (inl A ρ σ).comp (fst A ρ σ) + (inr A ρ σ).comp (snd A ρ σ) =
    .id _ := IntertwiningMap.ext <| LinearMap.coprod_inl_inr

end prod

end IntertwiningMap

/-- Equivalence between representations is a bijective intertwining map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Intertwining/Variant6ac69a7a46ce1362009dff374698064da904a382dba311e2d55cd0005e0a7d2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Intertwining/Variant6ac69a7a46ce1362009dff374698064da904a382dba311e2d55cd0005e0a7d2e.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00d610e74d863d4d3d09c58b47baeafbe8d1d3e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
