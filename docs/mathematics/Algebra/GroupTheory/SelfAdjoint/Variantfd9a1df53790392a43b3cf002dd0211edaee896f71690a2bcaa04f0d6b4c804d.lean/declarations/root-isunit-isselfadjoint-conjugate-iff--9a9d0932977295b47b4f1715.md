# _root_.IsUnit.isSelfAdjoint_conjugate_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fab8bd21b597b3ab1e11d1c5ae41e2cc43d331f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd9a1df53790392a43b3cf002dd0211edaee896f71690a2bcaa04f0d6b4c804d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c23fc50-2d1f-a636-8966-1b935a278435",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f52e00ee-130b-07cb-6f44-ce72bff0528f",
  "kind": "lemma",
  "lexical_name": "_root_.IsUnit.isSelfAdjoint_conjugate_iff'",
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
  "slug": "root-isunit-isselfadjoint-conjugate-iff--9a9d0932977295b47b4f1715",
  "source": {
    "blob": "fab8bd21b597b3ab1e11d1c5ae41e2cc43d331f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 238,
    "path": "GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variantfd9a1df53790392a43b3cf002dd0211edaee896f71690a2bcaa04f0d6b4c804d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a9d0932977295b47b4f1715f38825348ac2230232f0b7eeab8fc6f2d1693cd4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SelfAdjoint/Variantfd9a1df53790392a43b3cf002dd0211edaee896f71690a2bcaa04f0d6b4c804d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f52e00ee-130b-07cb-6f44-ce72bff0528f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.IsUnit.isSelfAdjoint_conjugate_iff' {a u : R} (hu : IsUnit u) :
    IsSelfAdjoint (star u * a * u) ↔ IsSelfAdjoint a := by
  simpa using hu.star.isSelfAdjoint_conjugate_iff

end Monoid

section Semiring

open Ring

variable [NonAssocSemiring R] [StarRing R]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SelfAdjoint/Variantfd9a1df53790392a43b3cf002dd0211edaee896f71690a2bcaa04f0d6b4c804d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variantfd9a1df53790392a43b3cf002dd0211edaee896f71690a2bcaa04f0d6b4c804d.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fab8bd21b597b3ab1e11d1c5ae41e2cc43d331f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
