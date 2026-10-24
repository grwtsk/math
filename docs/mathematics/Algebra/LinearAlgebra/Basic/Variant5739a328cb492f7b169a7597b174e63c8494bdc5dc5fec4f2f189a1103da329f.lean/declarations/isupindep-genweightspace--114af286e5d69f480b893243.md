# iSupIndep_genWeightSpace'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83f5b2952575d4313b52c658f11b1c343244623b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 677,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/5739a328cb492f7b169a7597b174e63c8494bdc5dc5fec4f2f189a1103da329f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15106059-a65c-f7a6-c33c-44d448cf59b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fba4e64-8ade-8b57-1957-afcaae38f430",
  "kind": "lemma",
  "lexical_name": "iSupIndep_genWeightSpace'",
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
  "slug": "isupindep-genweightspace--114af286e5d69f480b893243",
  "source": {
    "blob": "83f5b2952575d4313b52c658f11b1c343244623b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 680,
    "line": 677,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5739a328cb492f7b169a7597b174e63c8494bdc5dc5fec4f2f189a1103da329f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:114af286e5d69f480b893243e374785686ea914282e281c84ce8ec41a710fc50",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant5739a328cb492f7b169a7597b174e63c8494bdc5dc5fec4f2f189a1103da329f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fba4e64-8ade-8b57-1957-afcaae38f430`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 677–680.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iSupIndep_genWeightSpace' : iSupIndep fun χ : Weight R L M ↦ genWeightSpace M χ :=
  (iSupIndep_genWeightSpace R L M).comp <|
    Subtype.val_injective.comp (Weight.equivSetOfPred R L M).injective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant5739a328cb492f7b169a7597b174e63c8494bdc5dc5fec4f2f189a1103da329f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant5739a328cb492f7b169a7597b174e63c8494bdc5dc5fec4f2f189a1103da329f.lean#L677).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83f5b2952575d4313b52c658f11b1c343244623b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
