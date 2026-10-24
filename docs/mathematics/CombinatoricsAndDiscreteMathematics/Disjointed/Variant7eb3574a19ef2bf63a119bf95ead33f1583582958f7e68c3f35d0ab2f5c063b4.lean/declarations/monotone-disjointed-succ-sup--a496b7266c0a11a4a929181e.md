# Monotone.disjointed_succ_sup

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
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f32461a3-65e7-b620-2f20-d3d5fb03bd6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2dda29a-d5b0-329b-1883-8305d6e84474",
  "kind": "lemma",
  "lexical_name": "Monotone.disjointed_succ_sup",
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
  "slug": "monotone-disjointed-succ-sup--a496b7266c0a11a4a929181e",
  "source": {
    "blob": "f9abe3994e3b5c08a479e04b7d87aff9288e9d99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 214,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a496b7266c0a11a4a929181ec62413a8d2a3de0fad96f59c7d17ae20c69d107b",
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

Occurrence: `result:e2dda29a-d5b0-329b-1883-8305d6e84474`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Monotone.disjointed_succ_sup {f : ι → α} (hf : Monotone f) (i : ι) :
    disjointed f (succ i) ⊔ f i = f (succ i) := by
  by_cases h : IsMax i
  · simpa only [succ_eq_iff_isMax.mpr h, sup_eq_right] using disjointed_le f i
  · rw [disjointed_apply]
    have : Iio (succ i) = Iic i := by
      ext
      simp only [mem_Iio, lt_succ_iff_eq_or_lt_of_not_isMax h, mem_Iic, le_iff_lt_or_eq, Or.comm]
    rw [this, ← sup'_eq_sup, ← partialSups_apply, hf.partialSups_eq,
      sdiff_sup_cancel <| hf <| le_succ i]

end SuccOrder

end LinearOrder

/-!
### Functions on an arbitrary fintype
-/

/-- For any finite family of elements `f : ι → α`, we can find a pairwise-disjoint family `g`
bounded above by `f` and having the same supremum. This is non-canonical, depending on an arbitrary
choice of ordering of `ι`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7eb3574a19ef2bf63a119bf95ead33f1583582958f7e68c3f35d0ab2f5c063b4.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9abe3994e3b5c08a479e04b7d87aff9288e9d99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
