# Ico_image_const_sub_eq_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d581b071994d3ae0963ea0cff84358d161daed4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be77d26c-2746-63a4-5acb-05070868a477",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ed92545-2cde-4a20-e77e-801728a45188",
  "kind": "theorem",
  "lexical_name": "Ico_image_const_sub_eq_Ico",
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
  "slug": "ico-image-const-sub-eq-ico--2848ac1114da66c4c6ff3466",
  "source": {
    "blob": "8d581b071994d3ae0963ea0cff84358d161daed4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 237,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2848ac1114da66c4c6ff346697ff0e1d99c92f458cf6599db5669d56f800983a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ed92545-2cde-4a20-e77e-801728a45188`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ico_image_const_sub_eq_Ico (hac : a ≤ c) :
    ((Ico a b).image fun x => c - x) = Ico (c + 1 - b) (c + 1 - a) := by
  ext x
  rw [mem_image, mem_Ico]
  constructor
  · rintro ⟨x, hx, rfl⟩
    rw [mem_Ico] at hx
    refine'
      ⟨_,
        ((tsub_le_tsub_iff_left hac).2 hx.1).trans_lt
          ((tsub_lt_tsub_iff_right hac).2 (Nat.lt_succ_self _))⟩
    cases lt_or_le c b with
    | inl h =>
      rw [tsub_eq_zero_iff_le.mpr (succ_le_of_lt h)]
      exact zero_le _
    | inr h =>
      rw [← succ_sub_succ c]
      exact (tsub_le_tsub_iff_left (succ_le_succ <| hx.2.le.trans h)).2 hx.2
  · rintro ⟨hb, ha⟩
    rw [lt_tsub_iff_left, lt_succ_iff] at ha
    have hx : x ≤ c := (Nat.le_add_left _ _).trans ha
    refine' ⟨c - x, _, tsub_tsub_cancel_of_le hx⟩
    · rw [mem_Ico]
      exact
        ⟨le_tsub_of_add_le_right ha,
          (tsub_lt_iff_left hx).2 <| succ_le_iff.1 <| tsub_le_iff_right.1 hb⟩
#align nat.Ico_image_const_sub_eq_Ico Nat.Ico_image_const_sub_eq_Ico

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d581b071994d3ae0963ea0cff84358d161daed4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
