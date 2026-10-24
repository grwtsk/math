# translation_preserves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13ff90e2feb7c8b15747d8aded9686c324d6791b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc09e430-55a0-3ef3-3fb2-8c86624dc0d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2f236b6-7a0c-8a4f-454b-02b1bd9bbc7a",
  "kind": "theorem",
  "lexical_name": "translation_preserves",
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
  "slug": "translation-preserves--1c52f3d50b99655a57e89a92",
  "source": {
    "blob": "13ff90e2feb7c8b15747d8aded9686c324d6791b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 149,
    "path": "GRWTSK/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c52f3d50b99655a57e89a92a70ae9952eef3a0c6b67bd127b65e75ae4d584e7",
  "verification": {
    "reference": "docs/verification/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2f236b6-7a0c-8a4f-454b-02b1bd9bbc7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem translation_preserves {Carrier : Type} {alg : Algebra Carrier} (rel : Congruence alg)
    (index : Fin alg.numOps) (coord : Fin (alg.arity index))
    (inputs : Fin (alg.arity index) → Carrier) {left right : Carrier} (related : rel left right) :
    rel (translation alg index coord inputs left) (translation alg index coord inputs right) := by
  apply rel.compatible
  intro other
  by_cases equal : other = coord
  · subst other
    simpa only [Function.update_self] using related
  · simpa only [Function.update_of_ne equal] using rel.refl (inputs other)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Congruence/Variant7428386fd2670de00953705b390f658cf7f0ffcf868e490adb80a5f2ffc13958.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13ff90e2feb7c8b15747d8aded9686c324d6791b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
