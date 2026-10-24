# sModNat_eq_sMod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87361122d89fb6264c21270da45e4a66d24f9de6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 500,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7abb3a79a455dbc34a075b1118ed32c299a0522b4314578093a376d64cb48fe5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b673f33b-4457-739e-809f-638b92babb4f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:308aa0f1-d00f-41f9-5b07-a4ec033ff7f7",
  "kind": "theorem",
  "lexical_name": "sModNat_eq_sMod",
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
  "slug": "smodnat-eq-smod--7c75d9e9fb062cf3f1bcd3e0",
  "source": {
    "blob": "87361122d89fb6264c21270da45e4a66d24f9de6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 500,
    "path": "GRWTSK/Algebra/LucasLehmer/Variant7abb3a79a455dbc34a075b1118ed32c299a0522b4314578093a376d64cb48fe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c75d9e9fb062cf3f1bcd3e0ba4501e684b30ca40d659d96360cf85479547fe3",
  "verification": {
    "reference": "docs/verification/Algebra/LucasLehmer/Variant7abb3a79a455dbc34a075b1118ed32c299a0522b4314578093a376d64cb48fe5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:308aa0f1-d00f-41f9-5b07-a4ec033ff7f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sModNat_eq_sMod (p k : ℕ) (hp : 2 ≤ p) : (sModNat (2 ^ p - 1) k : ℤ) = sMod p k := by
  have h1 := calc
    4 = 2 ^ 2 := by norm_num
    _ ≤ 2 ^ p := Nat.pow_le_pow_right (by norm_num) hp
  have h2 : 1 ≤ 2 ^ p := by omega
  induction k with
  | zero =>
    rw [sModNat, sMod, Int.natCast_emod]
    simp [h2]
  | succ k ih =>
    rw [sModNat, sMod, ← ih]
    have h3 : 2 ≤ 2 ^ p - 1 := by
      zify [h2]
      calc
        (2 : Int) ≤ 4 - 1 := by norm_num
        _         ≤ 2 ^ p - 1 := by zify at h1; exact Int.sub_le_sub_right h1 _
    zify [h2, h3]
    rw [← add_sub_assoc, sub_eq_add_neg, add_assoc, add_comm _ (-2), ← add_assoc,
      Int.add_emod_right, ← sub_eq_add_neg]

/-- Tail-recursive version of `sModNat`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LucasLehmer/Variant7abb3a79a455dbc34a075b1118ed32c299a0522b4314578093a376d64cb48fe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LucasLehmer/Variant7abb3a79a455dbc34a075b1118ed32c299a0522b4314578093a376d64cb48fe5.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87361122d89fb6264c21270da45e4a66d24f9de6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
