# mul_le_card_filter_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ab120db2b6e3b3a0eba4eca23a935f75bbb61b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7af9a7aa-accd-18d7-6d19-096c59d8acb5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7bba20eb-b6b1-a518-c6c7-323da5874c7b",
  "kind": "lemma",
  "lexical_name": "mul_le_card_filter_mul",
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
  "slug": "mul-le-card-filter-mul--965bc92fded51a19737afdb3",
  "source": {
    "blob": "3ab120db2b6e3b3a0eba4eca23a935f75bbb61b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 123,
    "path": "GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variant7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:965bc92fded51a19737afdb35af01c4481b748fd55dff1394c67e65a84077e4f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ErdosStoneSimonovits/Variant7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bba20eb-b6b1-a518-c6c7-323da5874c7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_le_card_filter_mul (hr_pos : 0 < r) (ht'_pos : 0 < t')
    (hδ : G.minDegree ≥ (1 - 1 / r + ε) * n)
    {N : ℕ} (hN : (N + r * t') * (t' - t) ≤ n * (r * t' * ε - t)) :
    (N * (t' - t) : ℝ) ≤ (#(filter K t) * (t' - t) : ℝ) :=
  calc (N * (t' - t) : ℝ)
    _ ≤ n * (r * t' * ε - t) - r * t' * (t' - t) := by
        rw [← add_sub_cancel_right (N : ℝ) (r * t' : ℝ), sub_mul]
        exact sub_le_sub_right hN _
    _ = #K.verts * ((1 - 1 / r + ε) * n - #K.verts)
      - (n - #K.verts) * (#K.verts - (t' - t)) := by
        conv_rhs => rw [sub_eq_add_neg, ← neg_mul, neg_sub, sub_mul, mul_sub, ← add_sub_assoc,
          mul_sub, ← add_sub_assoc, sub_add_cancel, sub_right_comm, ← mul_assoc, ← mul_rotate,
          mul_assoc, ← mul_sub, mul_add, mul_sub (#K.verts : ℝ) _ _, mul_one,
          sub_add_eq_add_sub, add_sub_assoc, add_sub_sub_cancel, K.card_verts, Nat.cast_mul,
          mul_one_div, mul_div_cancel_left₀ (t' : ℝ) (mod_cast hr_pos.ne'), sub_add_sub_cancel]
    _ ≤ #K.verts * (G.minDegree - #K.verts) - (n - #K.verts) * (#K.verts - (t' - t)) :=
        sub_le_sub_right (mul_le_mul_of_nonneg_left
          (sub_le_sub_right hδ _) (#K.verts).cast_nonneg) _
    _ ≤ #(filter K t) * (t' - t) :=
        sub_left_le_of_le_add <| (le_card_edgeFinset_between_verts K).trans
          (card_edgeFinset_between_verts_le K hr_pos ht'_pos)

/-- For `w ∈ ErdosStone.filter`, there exists a `r` subets of vertices of size `t < t'`
adjacent to `w`.

This is an auxiliary definition for the Erdős-Stone theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ErdosStoneSimonovits/Variant7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variant7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ab120db2b6e3b3a0eba4eca23a935f75bbb61b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
