# ordFrac_ge_one_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "341293419432f405d04f536a9af472c7b7cbbe47",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6930ae03-82eb-bdce-1d11-117cbf968f05",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:946144bf-728b-9fd8-7473-374f6a2558f3",
  "kind": "lemma",
  "lexical_name": "ordFrac_ge_one_of_ne_zero",
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
  "slug": "ordfrac-ge-one-of-ne-zero--5c1048f44e06991618ea804b",
  "source": {
    "blob": "341293419432f405d04f536a9af472c7b7cbbe47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 136,
    "path": "GRWTSK/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c1048f44e06991618ea804bb6ce01f6463d5325ca704dd6190463e7d7919b7a",
  "verification": {
    "reference": "docs/verification/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:946144bf-728b-9fd8-7473-374f6a2558f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ordFrac_ge_one_of_ne_zero {x : R} (hx : x ≠ 0) :
    1 ≤ ordFrac R (algebraMap R K x) := by
  obtain ⟨m, hm⟩ := ENat.ne_top_iff_exists.mp (ord_ne_top (a := x) (by simpa))
  simp_rw [ordFrac_eq_ord R hx, ordMonoidWithZeroHom_eq_coe _ (by simpa) hm.symm,
    WithZero.one_le_coe, ← ofAdd_zero, Multiplicative.ofAdd_le, Nat.cast_nonneg _]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Noetherian/Variantc98086dd9414ebf8587a41b8d25cd3d5d2b7a872c4f73f9b7ef407edf1b3dbe4.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `341293419432f405d04f536a9af472c7b7cbbe47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
