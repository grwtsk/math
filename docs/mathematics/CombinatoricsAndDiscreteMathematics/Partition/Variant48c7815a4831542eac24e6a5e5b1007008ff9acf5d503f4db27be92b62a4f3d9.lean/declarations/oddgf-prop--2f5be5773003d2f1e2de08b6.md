# oddGF_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1097d41dc97634c27c5ae78e717feabcb946a1f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 277,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f193dea-37de-7bb7-f096-b560d10f1de6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd68df5a-fae6-a489-eaca-682c835260d9",
  "kind": "theorem",
  "lexical_name": "oddGF_prop",
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
  "slug": "oddgf-prop--2f5be5773003d2f1e2de08b6",
  "source": {
    "blob": "1097d41dc97634c27c5ae78e717feabcb946a1f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 277,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f5be5773003d2f1e2de08b6ba62709a3c0d14e5b1eab0c8a5ce389631a88e58",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd68df5a-fae6-a489-eaca-682c835260d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oddGF_prop [Field α] (n m : ℕ) (h : n < m * 2) :
    #(Nat.Partition.odds n) = coeff α n (partialOddGF m) := by
  rw [← partialOddGF_prop, Nat.Partition.odds]
  congr with p
  apply forall₂_congr
  intro i hi
  have hin : i ≤ n := by
    simpa [p.parts_sum] using Multiset.single_le_sum (fun _ _ => Nat.zero_le _) _ hi
  simp only [mkOdd, exists_prop, mem_range, Function.Embedding.coeFn_mk, mem_map]
  constructor
  · intro hi₂
    have := Nat.mod_add_div i 2
    rw [Nat.not_even_iff] at hi₂
    rw [hi₂, add_comm] at this
    refine ⟨i / 2, ?_, this⟩
    rw [Nat.div_lt_iff_lt_mul zero_lt_two]
    exact lt_of_le_of_lt hin h
  · rintro ⟨a, -, rfl⟩
    rw [even_iff_two_dvd]
    apply Nat.two_not_dvd_two_mul_add_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Partition/Variant48c7815a4831542eac24e6a5e5b1007008ff9acf5d503f4db27be92b62a4f3d9.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1097d41dc97634c27c5ae78e717feabcb946a1f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
