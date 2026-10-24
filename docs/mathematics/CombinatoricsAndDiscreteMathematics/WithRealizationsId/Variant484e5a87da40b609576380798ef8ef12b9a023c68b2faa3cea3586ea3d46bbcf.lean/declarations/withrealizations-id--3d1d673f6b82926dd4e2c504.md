# withRealizations_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b342d7cd-0159-9f15-fec4-91c4e6f9e1eb",
  "kind": "theorem",
  "lexical_name": "withRealizations_id",
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
  "slug": "withrealizations-id--3d1d673f6b82926dd4e2c504",
  "source": {
    "blob": "d1058a901b3899703bd095fabcdc15140e690f3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 13,
    "line": 9,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WithRealizationsId/Variant484e5a87da40b609576380798ef8ef12b9a023c68b2faa3cea3586ea3d46bbcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d1d673f6b82926dd4e2c50451026a8220652f1d968985a4fbd5757120e9c211",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/WithRealizationsId/Variant484e5a87da40b609576380798ef8ef12b9a023c68b2faa3cea3586ea3d46bbcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b342d7cd-0159-9f15-fec4-91c4e6f9e1eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–13.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem withRealizations_id
    (concept : Record) (realizations : Finset RepresentationId) :
    (concept.withRealizations realizations).id = concept.id := rfl

end Mathematics.Concept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/WithRealizationsId/Variant484e5a87da40b609576380798ef8ef12b9a023c68b2faa3cea3586ea3d46bbcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/WithRealizationsId/Variant484e5a87da40b609576380798ef8ef12b9a023c68b2faa3cea3586ea3d46bbcf.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1058a901b3899703bd095fabcdc15140e690f3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
