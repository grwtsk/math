# slice_unitVec_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e3ce8ecf0b244d86e0b601e5e74c1ab5761fc35c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 262,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a92d82f611ea4cf79510aaaa7fd4d1e1b1d3adaa6b169472406484ae722b85c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e977b79d-f41b-651b-3ee9-4a95a9e7c9b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fb3403a-f780-f61c-1c3c-6b5e7dcdc4a2",
  "kind": "theorem",
  "lexical_name": "slice_unitVec_mul",
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
  "slug": "slice-unitvec-mul--6338916ceb3803d86a132290",
  "source": {
    "blob": "e3ce8ecf0b244d86e0b601e5e74c1ab5761fc35c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 262,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Varianta92d82f611ea4cf79510aaaa7fd4d1e1b1d3adaa6b169472406484ae722b85c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6338916ceb3803d86a1322907228057b239aec68aae65c89af7181d0a76308e3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Varianta92d82f611ea4cf79510aaaa7fd4d1e1b1d3adaa6b169472406484ae722b85c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fb3403a-f780-f61c-1c3c-6b5e7dcdc4a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem slice_unitVec_mul [Ring α] {i : ℕ} {j : ℕ} (hid : i < d) (x : Holor α ds) :
    slice (unitVec d j ⊗ x) i hid = if i = j then x else 0 :=
  funext fun t : HolorIndex ds =>
    if h : i = j then by simp [slice, mul, HolorIndex.take, unitVec, HolorIndex.drop, h]
    else by simp [slice, mul, HolorIndex.take, unitVec, HolorIndex.drop, h]; rfl
#align holor.slice_unit_vec_mul Holor.slice_unitVec_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Varianta92d82f611ea4cf79510aaaa7fd4d1e1b1d3adaa6b169472406484ae722b85c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Varianta92d82f611ea4cf79510aaaa7fd4d1e1b1d3adaa6b169472406484ae722b85c3.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3ce8ecf0b244d86e0b601e5e74c1ab5761fc35c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
