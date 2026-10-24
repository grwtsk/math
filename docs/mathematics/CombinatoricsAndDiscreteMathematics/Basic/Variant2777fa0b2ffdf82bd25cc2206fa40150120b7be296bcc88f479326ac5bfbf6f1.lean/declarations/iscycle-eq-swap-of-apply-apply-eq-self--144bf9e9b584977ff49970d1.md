# IsCycle.eq_swap_of_apply_apply_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32d4dc30-7592-018e-5f0f-b67fda9badad",
  "kind": "theorem",
  "lexical_name": "IsCycle.eq_swap_of_apply_apply_eq_self",
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
  "slug": "iscycle-eq-swap-of-apply-apply-eq-self--144bf9e9b584977ff49970d1",
  "source": {
    "blob": "2b37542d32b13f4895cc697a6c13254f7038e3ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 503,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:144bf9e9b584977ff49970d1ac13f813a27b4eaa03a4734350e71846b3a73bf4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32d4dc30-7592-018e-5f0f-b67fda9badad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCycle.eq_swap_of_apply_apply_eq_self {α : Type*} [DecidableEq α] {f : Perm α}
    (hf : IsCycle f) {x : α} (hfx : f x ≠ x) (hffx : f (f x) = x) : f = swap x (f x) :=
  Equiv.ext fun y =>
    let ⟨z, hz⟩ := hf
    let ⟨i, hi⟩ := hz.2 hfx
    if hyx : y = x then by simp [hyx]
    else
      if hfyx : y = f x then by simp [hfyx, hffx]
      else by
        rw [swap_apply_of_ne_of_ne hyx hfyx]
        refine' by_contradiction fun hy => _
        cases' hz.2 hy with j hj
        rw [← sub_add_cancel j i, zpow_add, mul_apply, hi] at hj
        cases' zpow_apply_eq_of_apply_apply_eq_self hffx (j - i) with hji hji
        · rw [← hj, hji] at hyx
          tauto
        · rw [← hj, hji] at hfyx
          tauto
#align equiv.perm.is_cycle.eq_swap_of_apply_apply_eq_self Equiv.Perm.IsCycle.eq_swap_of_apply_apply_eq_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b37542d32b13f4895cc697a6c13254f7038e3ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
