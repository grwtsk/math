# disjointed_partialSups

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9abe3994e3b5c08a479e04b7d87aff9288e9d99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4dc5ecee-cd5e-edbb-122c-794e9260bbc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0cb604b-dd3c-3b6c-67a9-508c4706a3b0",
  "kind": "lemma",
  "lexical_name": "disjointed_partialSups",
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
  "slug": "disjointed-partialsups--a0950806be7eb007207627c7",
  "source": {
    "blob": "f9abe3994e3b5c08a479e04b7d87aff9288e9d99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 158,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0950806be7eb007207627c77316d678e2f09b4089e799b12bee1131179f6913",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0cb604b-dd3c-3b6c-67a9-508c4706a3b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma disjointed_partialSups (f : ι → α) :
    disjointed (partialSups f) = disjointed f := by
  classical
  ext i
  have step1 : f i \ (Iio i).sup f = partialSups f i \ (Iio i).sup f := by
    rw [sdiff_eq_symm (sdiff_le.trans (le_partialSups f i))]
    simp only [funext (partialSups_apply f), sup'_eq_sup]
    rw [sdiff_sdiff_eq_sdiff_sup (sup_mono Iio_subset_Iic_self), sup_eq_right]
    simp only [Iic_eq_cons_Iio, sup_cons, sup_sdiff_left_self, sdiff_le_iff, le_sup_right]
  simp only [disjointed_apply, step1, funext (partialSups_apply f), sup'_eq_sup, ← sup_biUnion]
  congr 2 with r
  simpa only [mem_biUnion, mem_Iio, mem_Iic] using
    ⟨fun ⟨a, ha⟩ ↦ ha.2.trans_lt ha.1, fun hr ↦ ⟨r, hr, le_rfl⟩⟩

/-- `disjointed f` is the unique map `d : ι → α` such that `d` has the same partial sups as `f`,
and `d i` and `d j` are disjoint whenever `i < j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9abe3994e3b5c08a479e04b7d87aff9288e9d99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
