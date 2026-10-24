# measure_univ_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca6a383c-1230-34c4-42b9-4408cd7846c4",
  "kind": "lemma",
  "lexical_name": "measure_univ_eq",
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
  "slug": "measure-univ-eq--27325ebeab9d1a12275a6b38",
  "source": {
    "blob": "52b3d3887508ef8a4318d1e2a202862d171f71ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 78,
    "path": "GRWTSK/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27325ebeab9d1a12275a6b389298805b2b14102086e5b5e94dff3e3ea766b471",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca6a383c-1230-34c4-42b9-4408cd7846c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_univ_eq (hP : IsProjectiveMeasureFamily P) (I J : Finset ι) :
    P I univ = P J univ := by
  classical
  rw [← hP.measure_univ_eq_of_subset I.subset_union_left,
    ← hP.measure_univ_eq_of_subset (I.subset_union_right (s₂ := J))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52b3d3887508ef8a4318d1e2a202862d171f71ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
