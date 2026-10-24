# floorRoot_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51bb4cc3-27f0-ab3a-22ce-4b2f287f9fbc",
  "kind": "lemma",
  "lexical_name": "floorRoot_eq_zero",
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
  "slug": "floorroot-eq-zero--60d9953be4fe06757ba6d7bd",
  "source": {
    "blob": "e7867f668ecb48eaa124f656ba5f8e4a6c005c06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 70,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60d9953be4fe06757ba6d7bdae9c7f863ceaed123103d06de160a74a906bf25d",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51bb4cc3-27f0-ab3a-22ce-4b2f287f9fbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma floorRoot_eq_zero : floorRoot n a = 0 ↔ n = 0 ∨ a = 0 :=
  floorRoot_ne_zero.not_right.trans <| by simp only [not_and_or, ne_eq, not_not]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Root/Variant358bc80cb0398b21c9c14764c7ea62499eae024830090f03748ba0c92af13b71.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7867f668ecb48eaa124f656ba5f8e4a6c005c06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
