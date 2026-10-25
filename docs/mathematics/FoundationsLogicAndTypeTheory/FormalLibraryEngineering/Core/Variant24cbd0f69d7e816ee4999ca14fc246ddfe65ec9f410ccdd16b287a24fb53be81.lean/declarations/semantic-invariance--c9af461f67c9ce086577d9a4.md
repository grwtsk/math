# semantic_invariance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94c4bb6e-4a0c-0af9-c007-9c62ed34548d",
  "kind": "theorem",
  "lexical_name": "semantic_invariance",
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
  "slug": "semantic-invariance--c9af461f67c9ce086577d9a4",
  "source": {
    "blob": "743b23ebc6042ecab12c135b533b1c749173c83c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant24cbd0f69d7e816ee4999ca14fc246ddfe65ec9f410ccdd16b287a24fb53be81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9af461f67c9ce086577d9a4da887d0b19b4855a2f465316a652b1c2d88acf9d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant24cbd0f69d7e816ee4999ca14fc246ddfe65ec9f410ccdd16b287a24fb53be81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94c4bb6e-4a0c-0af9-c007-9c62ed34548d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem semantic_invariance
    {Theory : Type u}
    (presentations : FourModePresentation Theory) :
    presentations.formalHypotactic.semanticValue =
        presentations.formalParatactic.semanticValue ∧
      presentations.formalParatactic.semanticValue =
        presentations.pragmaticParatactic.semanticValue ∧
      presentations.pragmaticParatactic.semanticValue =
        presentations.pragmaticHypotactic.semanticValue := by
  constructor
  · exact presentations.formalHypotactic_semantic.trans
      presentations.formalParatactic_semantic.symm
  constructor
  · exact presentations.formalParatactic_semantic.trans
      presentations.pragmaticParatactic_semantic.symm
  · exact presentations.pragmaticParatactic_semantic.trans
      presentations.pragmaticHypotactic_semantic.symm

end FourModePresentation

/-- A communication-efficiency objective remains data, not a dynamics. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant24cbd0f69d7e816ee4999ca14fc246ddfe65ec9f410ccdd16b287a24fb53be81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant24cbd0f69d7e816ee4999ca14fc246ddfe65ec9f410ccdd16b287a24fb53be81.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `743b23ebc6042ecab12c135b533b1c749173c83c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
