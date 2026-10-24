# conjugate_lt_conjugate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e12f5af8a0eddac3a2b81d376735edbd2f197ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 250,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c538ff91-2ca2-80a1-77c4-ffd3213f84cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a90db876-8bd1-278c-e803-59224da13423",
  "kind": "theorem",
  "lexical_name": "conjugate_lt_conjugate",
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
  "slug": "conjugate-lt-conjugate--22b33d4b33b61e7089281b6b",
  "source": {
    "blob": "9e12f5af8a0eddac3a2b81d376735edbd2f197ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 250,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22b33d4b33b61e7089281b6b6518adbd32e6c6a3c7fa7ae775e6533ea4c9f13a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a90db876-8bd1-278c-e803-59224da13423`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conjugate_lt_conjugate {a b : R} (hab : a < b) {c : R} (hc : IsRegular c) :
    star c * a * c < star c * b * c := by
  rw [(conjugate_le_conjugate hab.le _).lt_iff_ne, hc.right.ne_iff, hc.star.left.ne_iff]
  exact hab.ne

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e12f5af8a0eddac3a2b81d376735edbd2f197ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
