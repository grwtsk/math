# bddAbove_range_natCast_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a06bde83-e635-f251-e801-ac97187f37e5",
  "kind": "lemma",
  "lexical_name": "bddAbove_range_natCast_iff",
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
  "slug": "bddabove-range-natcast-iff--7d2780ba9d37683c73d6a0d8",
  "source": {
    "blob": "0f1dfad3054cc99ffcb18e71eb02bf55cdd8d126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 131,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta01474ebbf57dfe43e8476f2211cf0224000bfd8bc2be33f38f82fef34ce9f85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d2780ba9d37683c73d6a0d8f0c16689040d7466ecda33829716f7988e070c00",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta01474ebbf57dfe43e8476f2211cf0224000bfd8bc2be33f38f82fef34ce9f85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a06bde83-e635-f251-e801-ac97187f37e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, norm_cast] lemma bddAbove_range_natCast_iff {ι : Sort*} (f : ι → ℕ) :
    BddAbove (Set.range (f ·) : Set NNReal) ↔ BddAbove (Set.range f) := by
  rw [← bddAbove_natCast_image_iff, ← Set.range_comp]
  rfl

end Set

open Real

section Sub

/-!
### Lemmas about subtraction

In this section we provide a few lemmas about subtraction that do not fit well into any other
typeclass. For lemmas about subtraction and addition see lemmas about `OrderedSub` in the file
`Mathlib/Algebra/Order/Sub/Basic.lean`. See also `mul_tsub` and `tsub_mul`.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta01474ebbf57dfe43e8476f2211cf0224000bfd8bc2be33f38f82fef34ce9f85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta01474ebbf57dfe43e8476f2211cf0224000bfd8bc2be33f38f82fef34ce9f85.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f1dfad3054cc99ffcb18e71eb02bf55cdd8d126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
