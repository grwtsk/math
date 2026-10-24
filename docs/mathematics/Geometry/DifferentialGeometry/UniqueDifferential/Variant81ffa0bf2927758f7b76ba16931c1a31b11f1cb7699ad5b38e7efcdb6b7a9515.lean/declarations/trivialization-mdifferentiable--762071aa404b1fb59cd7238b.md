# Trivialization.mdifferentiable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83364453-16eb-68c3-8c90-bf8837611e85",
  "kind": "theorem",
  "lexical_name": "Trivialization.mdifferentiable",
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
  "slug": "trivialization-mdifferentiable--762071aa404b1fb59cd7238b",
  "source": {
    "blob": "78cd7bad21b4f3d6484cbab54ac87ded74edfd73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 208,
    "path": "GRWTSK/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:762071aa404b1fb59cd7238b8d556925b4ca455313c9c9e867448d4a96e288f5",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83364453-16eb-68c3-8c90-bf8837611e85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Trivialization.mdifferentiable [ContMDiffVectorBundle 1 F Z I]
    (e : Trivialization F (π F Z)) [MemTrivializationAtlas e] :
    e.MDifferentiable (I.prod 𝓘(𝕜, F)) (I.prod 𝓘(𝕜, F)) :=
  ⟨e.contMDiffOn.mdifferentiableOn le_rfl, e.contMDiffOn_symm.mdifferentiableOn le_rfl⟩

end UniqueMDiff
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/UniqueDifferential/Variant81ffa0bf2927758f7b76ba16931c1a31b11f1cb7699ad5b38e7efcdb6b7a9515.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78cd7bad21b4f3d6484cbab54ac87ded74edfd73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
