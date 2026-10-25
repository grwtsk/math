# repr_opow_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "692e1f0dfcfdf482c864ba74037ea03ae863bf1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 773,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69b775f51cc65bb0296b00f8b025185422a1f1d65774e8f12c72129fe9bbd854.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:019844db-0a53-0b67-9f38-178a70daf06d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa83234e-7f00-cde8-5d88-2b9fe24f3a53",
  "kind": "theorem",
  "lexical_name": "repr_opow_aux₁",
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
  "slug": "repr-opow-aux--a1a31172b0f6e210580b0e22",
  "source": {
    "blob": "692e1f0dfcfdf482c864ba74037ea03ae863bf1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 800,
    "line": 773,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant69b775f51cc65bb0296b00f8b025185422a1f1d65774e8f12c72129fe9bbd854.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1a31172b0f6e210580b0e22aaee4a427102017d16557642eed9cc18b9088181",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant69b775f51cc65bb0296b00f8b025185422a1f1d65774e8f12c72129fe9bbd854.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa83234e-7f00-cde8-5d88-2b9fe24f3a53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 773–800.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem repr_opow_aux₁ {e a} [Ne : NF e] [Na : NF a] {a' : Ordinal} (e0 : repr e ≠ 0)
    (h : a' < (ω : Ordinal.{0}) ^ repr e) (aa : repr a = a') (n : ℕ+) :
    ((ω : Ordinal.{0}) ^ repr e * (n : ℕ) + a') ^ (ω : Ordinal.{0}) =
      (ω ^ repr e) ^ (ω : Ordinal.{0}) := by
  subst aa
  have No := Ne.oadd n (Na.below_of_lt' h)
  have := omega0_le_oadd e n a
  rw [repr] at this
  refine le_antisymm ?_ (opow_le_opow_left _ this)
  apply (opow_le_of_limit ((opow_pos _ omega0_pos).trans_le this).ne' isLimit_omega0).2
  intro b l
  have := (No.below_of_lt (lt_succ _)).repr_lt
  rw [repr] at this
  apply (opow_le_opow_left b <| this.le).trans
  rw [← opow_mul, ← opow_mul]
  apply opow_le_opow_right omega0_pos
  rcases le_or_lt ω (repr e) with h | h
  · apply (mul_le_mul_left' (le_succ b) _).trans
    rw [← add_one_eq_succ, add_mul_succ _ (one_add_of_omega0_le h), add_one_eq_succ, succ_le_iff,
      Ordinal.mul_lt_mul_iff_left (Ordinal.pos_iff_ne_zero.2 e0)]
    exact isLimit_omega0.succ_lt l
  · apply (principal_mul_omega0 (isLimit_omega0.succ_lt h) l).le.trans
    simpa using mul_le_mul_right' (one_le_iff_ne_zero.2 e0) ω

section

-- Porting note: `R'` is used in the proof but marked as an unused variable.
set_option linter.unusedVariables false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant69b775f51cc65bb0296b00f8b025185422a1f1d65774e8f12c72129fe9bbd854.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant69b775f51cc65bb0296b00f8b025185422a1f1d65774e8f12c72129fe9bbd854.lean#L773).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `692e1f0dfcfdf482c864ba74037ea03ae863bf1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
