# denote_idx_trichotomy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff859478-89a1-f56b-d099-4969748e2d35",
  "kind": "theorem",
  "lexical_name": "denote_idx_trichotomy",
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
  "slug": "denote-idx-trichotomy--a924d238a4f8dc39aefc1004",
  "source": {
    "blob": "e61bfb751b1e3bd4145be4d3ffe29c903fcc608d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 276,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant32208caab14c86bccf62427e1b5e6abee8a9be10b27a6bff5fe3d4577fb12fd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a924d238a4f8dc39aefc100465a73b5640987efd33619d3e338ff8da7ba17536",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant32208caab14c86bccf62427e1b5e6abee8a9be10b27a6bff5fe3d4577fb12fd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff859478-89a1-f56b-d099-4969748e2d35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_idx_trichotomy {aig : AIG α} {hstart : start < aig.decls.size}
    (hfalse : aig.decls[start]'hstart = .false → ⟦aig, ⟨start, invert, hstart⟩, assign⟧ = res)
    (hatom : ∀ a, aig.decls[start]'hstart = .atom a → ⟦aig, ⟨start, invert, hstart⟩, assign⟧ = res)
    (hgate :
      ∀ lhs rhs,
        aig.decls[start]'hstart = .gate lhs rhs
          →
        ⟦aig, ⟨start, invert, hstart⟩, assign⟧ = res
    ) :
    ⟦aig, ⟨start, invert, hstart⟩, assign⟧ = res := by
  apply idx_trichotomy aig hstart
  · exact hfalse
  · exact hatom
  · exact hgate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant32208caab14c86bccf62427e1b5e6abee8a9be10b27a6bff5fe3d4577fb12fd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant32208caab14c86bccf62427e1b5e6abee8a9be10b27a6bff5fe3d4577fb12fd8.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e61bfb751b1e3bd4145be4d3ffe29c903fcc608d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
