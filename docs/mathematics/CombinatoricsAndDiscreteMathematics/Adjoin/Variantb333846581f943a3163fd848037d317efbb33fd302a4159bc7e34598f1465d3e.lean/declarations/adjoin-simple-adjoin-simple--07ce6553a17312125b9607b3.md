# adjoin_simple_adjoin_simple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "256d3ace4f5b381f78ba64127f3d186c2778768f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 521,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6bf3d3b8-8bc2-9e73-8045-00031519e61f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6cb949dd-f248-550c-35e0-c57f77d6cf46",
  "kind": "theorem",
  "lexical_name": "adjoin_simple_adjoin_simple",
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
  "slug": "adjoin-simple-adjoin-simple--07ce6553a17312125b9607b3",
  "source": {
    "blob": "256d3ace4f5b381f78ba64127f3d186c2778768f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 521,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07ce6553a17312125b9607b3fda557bcbd9453e8a97e2126b132c0e4e90bbd2e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cb949dd-f248-550c-35e0-c57f77d6cf46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_simple_adjoin_simple (β : E) : F⟮α⟯⟮β⟯.restrictScalars F = F⟮α, β⟯ :=
  adjoin_adjoin_left _ _ _
#align intermediate_field.adjoin_simple_adjoin_simple IntermediateField.adjoin_simple_adjoin_simple

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variantb333846581f943a3163fd848037d317efbb33fd302a4159bc7e34598f1465d3e.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `256d3ace4f5b381f78ba64127f3d186c2778768f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
