# cRank_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fd254df-2b64-d7c7-a9a6-6e1dbd34ba2d",
  "kind": "theorem",
  "lexical_name": "cRank_diagonal",
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
  "slug": "crank-diagonal--f174485aff06c18931bf7553",
  "source": {
    "blob": "d5acbd5f7b8f25078c403b18cb5616273c22d3a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 463,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f174485aff06c18931bf755373324689789ce8652de691652e2c87a3c46ec4a0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fd254df-2b64-d7c7-a9a6-6e1dbd34ba2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 463–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cRank_diagonal [DecidableEq m] (w : m → R) :
    (diagonal w).cRank = lift.{uR} #{i // (w i) ≠ 0} := by
  classical
  set w' : {i // (w i) ≠ 0} → _ := fun i ↦ (diagonal w) i
  have h : LinearIndependent R w' := by
    have hli' := Pi.linearIndependent_single_of_ne_zero (R := R)
      (v := fun i : m ↦ if w i = 0 then (1 : R) else w i) (by simp [ite_eq_iff'])
    convert! hli'.comp Subtype.val Subtype.val_injective
    ext ⟨j, hj⟩ k
    simp [w', diagonal, hj, Pi.single_apply, eq_comm]
  have hrw : insert 0 (range (diagonal w).col) = insert 0 (range w') := by
    suffices ∀ a, diagonal w a = 0 ∨ ∃ b, w b ≠ 0 ∧ diagonal w b = diagonal w a
      by aesop (add simp [col_eq_transpose, subset_def])
    simp_rw [or_iff_not_imp_right, not_exists, not_and, not_imp_not]
    simp +contextual [funext_iff, diagonal]
  rw [cRank, ← span_insert_zero, hrw, span_insert_zero, rank_span h,
    ← lift_umax, ← Cardinal.mk_range_eq_of_injective h.injective, lift_id']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean#L463).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5acbd5f7b8f25078c403b18cb5616273c22d3a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
