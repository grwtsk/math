# wilsons_lemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb37fc28cfe49d4ded39b0e53e40317351d85744",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbc83d7fae6f48f99dda13eed1933799a4fcc71f9dc932e087adeba0f6397664.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce7c750d-42fd-f402-bdc6-6dcb241252c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ad327c3-5964-63ce-6ddb-370c676e72f5",
  "kind": "theorem",
  "lexical_name": "wilsons_lemma",
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
  "slug": "wilsons-lemma--e6669b001bd2f438b3b93218",
  "source": {
    "blob": "fb37fc28cfe49d4ded39b0e53e40317351d85744",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Wilson/Variantdbc83d7fae6f48f99dda13eed1933799a4fcc71f9dc932e087adeba0f6397664.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6669b001bd2f438b3b93218180ccbaa510535b9a2feb21dd526cfe71b4b22da",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Wilson/Variantdbc83d7fae6f48f99dda13eed1933799a4fcc71f9dc932e087adeba0f6397664.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ad327c3-5964-63ce-6ddb-370c676e72f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wilsons_lemma : ((p - 1)! : ZMod p) = -1 := by
  refine
    calc
      ((p - 1)! : ZMod p) = ∏ x ∈ Ico 1 (succ (p - 1)), (x : ZMod p) := by
        rw [← Finset.prod_Ico_id_eq_factorial, prod_natCast]
      _ = ∏ x : (ZMod p)ˣ, (x : ZMod p) := ?_
      _ = -1 := by
        simp_rw [← Units.coeHom_apply, ← map_prod (Units.coeHom (ZMod p)),
          prod_univ_units_id_eq_neg_one, Units.coeHom_apply, Units.val_neg, Units.val_one]
  have hp : 0 < p := (Fact.out (p := p.Prime)).pos
  symm
  refine prod_bij (fun a _ => (a : ZMod p).val) ?_ ?_ ?_ ?_
  · intro a ha
    rw [mem_Ico, ← Nat.succ_sub hp, Nat.add_one_sub_one]
    constructor
    · apply Nat.pos_of_ne_zero; rw [← @val_zero p]
      intro h; apply Units.ne_zero a (val_injective p h)
    · exact val_lt _
  · intro _ _ _ _ h; rw [Units.ext_iff]; exact val_injective p h
  · intro b hb
    rw [mem_Ico, Nat.succ_le_iff, ← succ_sub hp, Nat.add_one_sub_one, pos_iff_ne_zero] at hb
    refine ⟨Units.mk0 b ?_, Finset.mem_univ _, ?_⟩
    · intro h; apply hb.1; apply_fun val at h
      simpa only [val_cast_of_lt hb.right, val_zero] using h
    · simp only [val_cast_of_lt hb.right, Units.val_mk0]
  · rintro a -; simp only [cast_id, natCast_val]

variable {p} in
/-- Let `p` be prime with `p % 4 ≠ 3`. Then `((p - 1) / 2)!` is a specified square root of `-1`
in `ZMod p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Wilson/Variantdbc83d7fae6f48f99dda13eed1933799a4fcc71f9dc932e087adeba0f6397664.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Wilson/Variantdbc83d7fae6f48f99dda13eed1933799a4fcc71f9dc932e087adeba0f6397664.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb37fc28cfe49d4ded39b0e53e40317351d85744` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
