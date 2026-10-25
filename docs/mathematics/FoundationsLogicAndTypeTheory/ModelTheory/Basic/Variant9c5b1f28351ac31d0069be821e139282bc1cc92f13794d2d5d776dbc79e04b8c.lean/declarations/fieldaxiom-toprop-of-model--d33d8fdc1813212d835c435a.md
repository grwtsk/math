# FieldAxiom.toProp_of_model

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "751f335adf8496f6c3f8b93fdef7a8e59b8a6e37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93f1ea84-98fb-1a73-186b-223715b7daa2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb7d2825-fa90-4fb4-e989-7fb20fe02861",
  "kind": "theorem",
  "lexical_name": "FieldAxiom.toProp_of_model",
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
  "slug": "fieldaxiom-toprop-of-model--d33d8fdc1813212d835c435a",
  "source": {
    "blob": "751f335adf8496f6c3f8b93fdef7a8e59b8a6e37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d33d8fdc1813212d835c435a38e8f565062b4c17660ef13128d02d90a775760a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb7d2825-fa90-4fb4-e989-7fb20fe02861`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FieldAxiom.toProp_of_model {K : Type*}
    [Add K] [Mul K] [Neg K] [Zero K] [One K] [CompatibleRing K]
    [Theory.field.Model K] (ax : FieldAxiom) : ax.toProp K :=
  (FieldAxiom.realize_toSentence_iff_toProp ax).1
    (Theory.realize_sentence_of_mem Theory.field
      (Set.mem_range_self ax))

open FieldAxiom

/-- A model for the theory of fields is a field. To introduced locally on Types that don't
already have instances for ring operations.

When this is used, it is almost always useful to also add locally the instance
`compatibleFieldOfModelField` afterwards. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant9c5b1f28351ac31d0069be821e139282bc1cc92f13794d2d5d776dbc79e04b8c.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `751f335adf8496f6c3f8b93fdef7a8e59b8a6e37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
