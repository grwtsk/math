# unpack_liftPacked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2090300e-9639-ba77-7797-bc4763a58675",
  "kind": "theorem",
  "lexical_name": "unpack_liftPacked",
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
  "slug": "unpack-liftpacked--a5194e250d2b38ccff31ecd1",
  "source": {
    "blob": "78f8c1d8025399fdcf098f1d2e9b557a33ab84a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 52,
    "path": "GRWTSK/Combinatorics/DirectedGraph/RootedTraceRevision.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5194e250d2b38ccff31ecd1081315896455949ffea106275fcb8dc0e6f96c06",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2090300e-9639-ba77-7797-bc4763a58675`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unpack_liftPacked (root : V) (packed : Packed Key (List (EdgeTrace.TotalEdge V))) :
    unpack (liftPacked root packed) = (unpack packed).map (rootedRows root) := by
  rcases packed with ⟨dictionary, references⟩
  induction references with
  | nil => rfl
  | cons reference references ih =>
    simp only [unpack, liftPacked, List.mapM_cons, decodeReference, List.getElem?_map] at *
    cases hlookup : dictionary[reference.2]? with
    | none => simp
    | some initial =>
      simp only [Option.map_some, Option.bind_eq_bind, Option.bind]
      rw [ih]
      cases htail : references.mapM (decodeReference dictionary) <;>
        simp [rootedRows]

/-- Actually expand the after table, lift its payloads, and retain the before references. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrencefe3e57a09114a9504b1fd69f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedGraph/RootedTraceRevision.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78f8c1d8025399fdcf098f1d2e9b557a33ab84a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
