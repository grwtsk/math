# disjointOfDiffUnion_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fde8328-41fd-788f-a966-67f4a006b479",
  "kind": "lemma",
  "lexical_name": "disjointOfDiffUnion_subset",
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
  "slug": "disjointofdiffunion-subset--c2cda4de1fc3256dd43abfeb",
  "source": {
    "blob": "87579e8754f3f458a6f0c584eae89652656ff1ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 245,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2cda4de1fc3256dd43abfeb652a8fc47cef29f53271432a13fa8013e2647322",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fde8328-41fd-788f-a966-67f4a006b479`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma disjointOfDiffUnion_subset (hC : IsSetSemiring C) (hs : s ∈ C) (hI : ↑I ⊆ C) :
    ↑(hC.disjointOfDiffUnion hs hI) ⊆ C := by
  classical
  simp only [disjointOfDiffUnion, coe_sdiff, coe_singleton, diff_singleton_subset_iff]
  exact (hC.exists_disjoint_finset_diff_eq hs hI).choose_spec.1.trans (Set.subset_insert _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87579e8754f3f458a6f0c584eae89652656ff1ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
