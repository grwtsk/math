# IsSelfAdjoint.commute_of_mul_eq_zero

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
      "line": 718,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd9a1df53790392a43b3cf002dd0211edaee896f71690a2bcaa04f0d6b4c804d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:987ab400-3ef1-dbf7-fa33-9408fd3dbd9e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba2dd24c-ed05-cc9f-fe96-7e8e3fec61d3",
  "kind": "lemma",
  "lexical_name": "IsSelfAdjoint.commute_of_mul_eq_zero",
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
  "slug": "isselfadjoint-commute-of-mul-eq-zero--a0c1a13815406bca3f6c05ec",
  "source": {
    "blob": "fab8bd21b597b3ab1e11d1c5ae41e2cc43d331f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 726,
    "line": 718,
    "path": "GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variantfd9a1df53790392a43b3cf002dd0211edaee896f71690a2bcaa04f0d6b4c804d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0c1a13815406bca3f6c05ec1a114d71dabe982cd1eedb6e1d91e1770a1077f3",
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

Occurrence: `result:ba2dd24c-ed05-cc9f-fe96-7e8e3fec61d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 718–726.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsSelfAdjoint.commute_of_mul_eq_zero [NonUnitalNonAssocRing R] [StarRing R]
    {a b : R} (ha : IsSelfAdjoint a) (hb : IsSelfAdjoint b) (hab : a * b = 0) :
    Commute a b := by
  have : b * a = 0 := by simpa [ha.star_eq, hb.star_eq] using congr(star $hab)
  grind [commute_iff_eq]

namespace Pi
variable {ι : Type*} {α : ι → Type*} [∀ i, Star (α i)] {f : ∀ i, α i}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SelfAdjoint/Variantfd9a1df53790392a43b3cf002dd0211edaee896f71690a2bcaa04f0d6b4c804d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variantfd9a1df53790392a43b3cf002dd0211edaee896f71690a2bcaa04f0d6b4c804d.lean#L718).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fab8bd21b597b3ab1e11d1c5ae41e2cc43d331f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
