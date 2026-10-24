# comparatorMarginValue_gap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe2676913f87d39cc8f342b62932073c8b56f181",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff1db333-a4c4-9ef6-735e-61aa7485cfed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54b774ad-75b4-af63-d95e-c5e2f1d2fccc",
  "kind": "theorem",
  "lexical_name": "comparatorMarginValue_gap",
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
  "slug": "comparatormarginvalue-gap--98409b54148012db5fb38f8b",
  "source": {
    "blob": "fe2676913f87d39cc8f342b62932073c8b56f181",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 56,
    "path": "GRWTSK/Algebra/LinearAlgebra/9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2ComparatorMargin/Variant9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98409b54148012db5fb38f8b09fc07a88753d3f70934ce252d1176f37aaffa21",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2ComparatorMargin/Variant9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54b774ad-75b4-af63-d95e-c5e2f1d2fccc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comparatorMarginValue_gap
    (Q : LinearComparator V) (I : LinearIntervention X V) (x : X) :
    (C.comparatorMarginValue Q I x).gap = Q.comparatorGap I x :=
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2ComparatorMargin/Variant9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2ComparatorMargin/Variant9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe2676913f87d39cc8f342b62932073c8b56f181` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
