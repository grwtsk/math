# relNorm_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f618393-1da7-e044-dfbb-e6e598def694",
  "kind": "theorem",
  "lexical_name": "relNorm_mono",
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
  "slug": "relnorm-mono--9ac78b19a19040dee0436620",
  "source": {
    "blob": "6d923f2e4dd9a2557437ebe2b2d61abf55144b8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 683,
    "line": 677,
    "path": "GRWTSK/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ac78b19a19040dee04366209aa395fe6a0d1a9ed4b059b955d65c5be4c5b9fd",
  "verification": {
    "reference": "docs/verification/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f618393-1da7-e044-dfbb-e6e598def694`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 677–683.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relNorm_mono {I J : Ideal S} (h : I ≤ J) : relNorm R I ≤ relNorm R J :=
  spanNorm_mono R h
#align ideal.rel_norm_mono Ideal.relNorm_mono

end Ideal

end SpanNorm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Norm/Variant91eb15b77ae1c90f8de71e1c0a92a6069620559f7bd18141c85bc0747b7d7dc3.lean#L677).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d923f2e4dd9a2557437ebe2b2d61abf55144b8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
