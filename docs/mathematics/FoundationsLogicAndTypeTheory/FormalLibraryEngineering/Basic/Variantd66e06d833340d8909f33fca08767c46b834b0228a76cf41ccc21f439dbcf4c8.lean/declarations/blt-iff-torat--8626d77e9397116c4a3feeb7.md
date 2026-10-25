# blt_iff_toRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "197f830c1b5fd8c0e38afdc909f718c22a47905a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 648,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d66e06d833340d8909f33fca08767c46b834b0228a76cf41ccc21f439dbcf4c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99e3fdac-9cfe-ce8a-f0b2-85a1c06ee472",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:491f844b-890f-4405-26a2-e42912812a19",
  "kind": "theorem",
  "lexical_name": "blt_iff_toRat",
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
  "slug": "blt-iff-torat--8626d77e9397116c4a3feeb7",
  "source": {
    "blob": "197f830c1b5fd8c0e38afdc909f718c22a47905a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 648,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd66e06d833340d8909f33fca08767c46b834b0228a76cf41ccc21f439dbcf4c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8626d77e9397116c4a3feeb7736491965768ebd02b7627e6f237035f0147ffb3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd66e06d833340d8909f33fca08767c46b834b0228a76cf41ccc21f439dbcf4c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:491f844b-890f-4405-26a2-e42912812a19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 648–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blt_iff_toRat {x y : Dyadic} : blt x y ↔ x.toRat < y.toRat := by
  rcases x with _ | ⟨n₁, k₁, hn₁⟩ <;> rcases y with _ | ⟨n₂, k₂, hn₂⟩
  · decide
  · simp only [blt, decide_eq_true_eq, Dyadic.zero_eq, toRat_zero, toRat_ofOdd_eq_mul_two_pow,
      Rat.mul_pos_iff_of_pos_right (Rat.zpow_pos (by decide : (0 : Rat) < 2)), Rat.intCast_pos]
  · simp only [blt, decide_eq_true_eq, Dyadic.zero_eq, toRat_zero, toRat_ofOdd_eq_mul_two_pow,
      Rat.mul_neg_iff_of_pos_right (Rat.zpow_pos (by decide : (0 : Rat) < 2)), Rat.intCast_neg_iff]
  · simp only [blt, toRat_ofOdd_eq_mul_two_pow,
      ← Rat.div_lt_iff (Rat.zpow_pos (by decide : (0 : Rat) < 2)), Rat.div_def, ← Rat.zpow_neg,
      Int.neg_neg, Rat.mul_assoc, ne_eq, Rat.ofNat_eq_ofNat, reduceCtorEq, not_false_eq_true,
      ← Rat.zpow_add, Int.shiftLeft_eq]
    rw [Int.add_comm, Int.add_neg_eq_sub]
    split
    · simp [decide_eq_true_eq, ← Rat.intCast_lt_intCast, Rat.zpow_natCast, *]
    · simp only [decide_eq_true_eq, Int.negSucc_eq, *]
      rw [Rat.zpow_neg, ← Rat.div_def, Rat.div_lt_iff (Rat.zpow_pos (by decide))]
      simp [← Rat.intCast_lt_intCast, ← Rat.zpow_natCast, *]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd66e06d833340d8909f33fca08767c46b834b0228a76cf41ccc21f439dbcf4c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd66e06d833340d8909f33fca08767c46b834b0228a76cf41ccc21f439dbcf4c8.lean#L648).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `197f830c1b5fd8c0e38afdc909f718c22a47905a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
