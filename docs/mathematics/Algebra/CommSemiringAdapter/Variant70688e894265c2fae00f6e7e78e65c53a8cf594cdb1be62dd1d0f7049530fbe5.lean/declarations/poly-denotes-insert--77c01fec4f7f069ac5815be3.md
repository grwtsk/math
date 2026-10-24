# Poly.denoteS_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c240b76-9d20-0dfa-b779-16e3dadfe80d",
  "kind": "theorem",
  "lexical_name": "Poly.denoteS_insert",
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
  "slug": "poly-denotes-insert--77c01fec4f7f069ac5815be3",
  "source": {
    "blob": "ee8a0434998c1908f6d6af2f41c9607ebec91a06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 127,
    "path": "GRWTSK/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77c01fec4f7f069ac5815be30bd871dc4ff24962c5a2fde8f1030783e8608dac",
  "verification": {
    "reference": "docs/verification/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c240b76-9d20-0dfa-b779-16e3dadfe80d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Poly.denoteS_insert {α} [Semiring α] (ctx : Context α) (k : Int) (m : Mon) (p : Poly)
    : k ≥ 0 → p.NonnegCoeffs → (insert k m p).denoteS ctx = k.toNat * m.denote ctx + p.denoteS ctx := by
  simp [insert, cond_eq_ite] <;> split
  next => simp [*]
  next =>
    split
    next h =>
      intro _ hn
      simp at h <;> simp [*, Mon.denote, denoteS_addConst, add_comm]
    next =>
      fun_induction insert.go <;> simp_all +zetaDelta [denoteS]
      next a m p _ _ h₁ h₂ =>
        intro hk hn
        cases hn; rename_i hn₁ hn₂
        replace h₂ : k.toNat + a.toNat = 0 := by
          apply Int.ofNat_inj.mp
          rw [Int.natCast_add, Int.toNat_of_nonneg hn₁,
              Int.toNat_of_nonneg hk, h₂]; rfl
        rw [← add_assoc, Mon.eq_of_grevlex h₁, ← right_distrib, ← natCast_add, h₂]
        simp
      next h₁ _ =>
        intro _ hn; cases hn
        rw [Int.toNat_add, natCast_add, right_distrib, add_assoc, Mon.eq_of_grevlex h₁] <;> assumption
      next ih =>
        intro hk hn; cases hn; rename_i hn₁ hn₂
        rw [ih hk hn₂, add_left_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee8a0434998c1908f6d6af2f41c9607ebec91a06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
