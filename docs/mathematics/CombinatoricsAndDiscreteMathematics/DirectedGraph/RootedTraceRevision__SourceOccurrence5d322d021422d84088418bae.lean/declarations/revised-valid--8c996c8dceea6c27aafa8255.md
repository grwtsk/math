# revised_valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bf6175d-04dc-ec60-d82d-366b70696742",
  "kind": "theorem",
  "lexical_name": "revised_valid",
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
  "slug": "revised-valid--8c996c8dceea6c27aafa8255",
  "source": {
    "blob": "8f8f768bad2ef62bfedba9a39d366ed33279cc18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 120,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c996c8dceea6c27aafa82553f117ef03e37759414b15c03a95f85f3cc59c50a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bf6175d-04dc-ec60-d82d-366b70696742`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem revised_valid (beforeRows : List (Key × Occurrence beforeRoot))
    (afterRows : List (Key × Occurrence afterRoot)) (hroot : beforeRoot = afterRoot)
    (hagreement : AgreesOnReferences (inventory beforeRows) (inventory afterRows)
      (PrefixInventory.packed beforeRows).references)
    (revised : Packed Key (RootedTrace V))
    (hexpand : expandRevision (encode beforeRows) (encode afterRows) = some revised)
    (entries : List (Key × RootedTrace V)) (hdecoded : unpack revised = some entries) :
    ∀ entry ∈ eraseRoots entries, EdgeTrace.ValidFrom beforeRoot entry.2 := by
  have hrevised : revised = afterPacked beforeRows afterRows :=
    Option.some.inj (hexpand.symm.trans (expandRevision_encode beforeRows afterRows))
  subst revised
  have hentries : entries = rootedRows beforeRoot (traceRows beforeRows) :=
    Option.some.inj (hdecoded.symm.trans (unpack_after _ _ hroot hagreement))
  subst entries
  rw [eraseRoots_rootedRows]
  exact traceRows_valid beforeRows

/-- Full actual old occurrences, keys, order and repetitions survive an agreed revision. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision__SourceOccurrence5d322d021422d84088418bae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/RootedTraceRevision.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f8f768bad2ef62bfedba9a39d366ed33279cc18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
