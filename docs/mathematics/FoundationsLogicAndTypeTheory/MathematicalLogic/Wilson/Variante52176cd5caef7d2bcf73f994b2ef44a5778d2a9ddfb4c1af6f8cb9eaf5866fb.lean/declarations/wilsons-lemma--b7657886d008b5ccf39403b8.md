# wilsons_lemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88040de9-4a93-bc7a-0d99-b1e8aaad9629",
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
  "slug": "wilsons-lemma--b7657886d008b5ccf39403b8",
  "source": {
    "blob": "75ef175ee3861305fdc41e0e3e9c0d0de4c4b2e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Wilson/Variante52176cd5caef7d2bcf73f994b2ef44a5778d2a9ddfb4c1af6f8cb9eaf5866fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7657886d008b5ccf39403b823b92c9fe65e5a72ea3323c83dbb847555aae543",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Wilson/Variante52176cd5caef7d2bcf73f994b2ef44a5778d2a9ddfb4c1af6f8cb9eaf5866fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88040de9-4a93-bc7a-0d99-b1e8aaad9629`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–98.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Wilson/Variante52176cd5caef7d2bcf73f994b2ef44a5778d2a9ddfb4c1af6f8cb9eaf5866fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Wilson/Variante52176cd5caef7d2bcf73f994b2ef44a5778d2a9ddfb4c1af6f8cb9eaf5866fb.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75ef175ee3861305fdc41e0e3e9c0d0de4c4b2e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
