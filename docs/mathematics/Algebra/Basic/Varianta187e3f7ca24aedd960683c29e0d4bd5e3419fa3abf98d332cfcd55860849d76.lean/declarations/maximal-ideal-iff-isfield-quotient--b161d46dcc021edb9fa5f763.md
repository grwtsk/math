# maximal_ideal_iff_isField_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20a0ad5682f627918b51e72b4c698c9ed9e49cde",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a187e3f7ca24aedd960683c29e0d4bd5e3419fa3abf98d332cfcd55860849d76.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6681b44b-f16a-c2aa-cb97-78dbd1927db3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9dfaa00-0471-b929-fe0c-52fec13bad73",
  "kind": "theorem",
  "lexical_name": "maximal_ideal_iff_isField_quotient",
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
  "slug": "maximal-ideal-iff-isfield-quotient--b161d46dcc021edb9fa5f763",
  "source": {
    "blob": "20a0ad5682f627918b51e72b4c698c9ed9e49cde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 164,
    "path": "GRWTSK/Algebra/Basic/Varianta187e3f7ca24aedd960683c29e0d4bd5e3419fa3abf98d332cfcd55860849d76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b161d46dcc021edb9fa5f763a10beb4dd11f265841328d6b8e702e8edfb01b94",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianta187e3f7ca24aedd960683c29e0d4bd5e3419fa3abf98d332cfcd55860849d76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9dfaa00-0471-b929-fe0c-52fec13bad73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem maximal_ideal_iff_isField_quotient {R} [CommRing R] (I : Ideal R) :
    I.IsMaximal ↔ IsField (R ⧸ I) :=
  ⟨fun h =>
    let _i := @Quotient.field _ _ I h
    Field.toIsField _,
    maximal_of_isField _⟩

end Quotient

section Pi

/-- `R^n/I^n` is a `R/I`-module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianta187e3f7ca24aedd960683c29e0d4bd5e3419fa3abf98d332cfcd55860849d76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianta187e3f7ca24aedd960683c29e0d4bd5e3419fa3abf98d332cfcd55860849d76.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20a0ad5682f627918b51e72b4c698c9ed9e49cde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
