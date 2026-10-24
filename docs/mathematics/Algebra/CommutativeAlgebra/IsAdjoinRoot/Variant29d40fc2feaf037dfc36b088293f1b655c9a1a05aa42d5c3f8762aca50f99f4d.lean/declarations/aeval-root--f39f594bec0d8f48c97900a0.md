# aeval_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c086bff-12ad-8a7e-d0b7-3039eee57531",
  "kind": "theorem",
  "lexical_name": "aeval_root",
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
  "slug": "aeval-root--f39f594bec0d8f48c97900a0",
  "source": {
    "blob": "056f4dd44affcce327af07d649dfb0e557e4abb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 150,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant29d40fc2feaf037dfc36b088293f1b655c9a1a05aa42d5c3f8762aca50f99f4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f39f594bec0d8f48c97900a045d156364741de4a32b1fb800216a69afd03a61a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant29d40fc2feaf037dfc36b088293f1b655c9a1a05aa42d5c3f8762aca50f99f4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c086bff-12ad-8a7e-d0b7-3039eee57531`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeval_root (h : IsAdjoinRoot S f) : aeval h.root f = 0 := by rw [aeval_eq, map_self]

/-- Choose an arbitrary representative so that `h.map (h.repr x) = x`.

If `f` is monic, use `IsAdjoinRootMonic.modByMonicHom` for a unique choice of representative.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant29d40fc2feaf037dfc36b088293f1b655c9a1a05aa42d5c3f8762aca50f99f4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variant29d40fc2feaf037dfc36b088293f1b655c9a1a05aa42d5c3f8762aca50f99f4d.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `056f4dd44affcce327af07d649dfb0e557e4abb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
