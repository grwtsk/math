# LSeriesSummable.le_const_mul_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e86adbb2-41d6-3034-1e0f-28827646da58",
  "kind": "lemma",
  "lexical_name": "LSeriesSummable.le_const_mul_rpow",
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
  "slug": "lseriessummable-le-const-mul-rpow--71d1b9e4f16ed5ae61c4e154",
  "source": {
    "blob": "ee9c53ed2b6b8407fa419327c77105221a1a760a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 333,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Varianta744f92ec7b2e4572bf8df39b5051f34ac45814ba6a867719efe083eb12235ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71d1b9e4f16ed5ae61c4e1549d462c29c0976b66a405504e85fb9f0171e19efd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Varianta744f92ec7b2e4572bf8df39b5051f34ac45814ba6a867719efe083eb12235ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e86adbb2-41d6-3034-1e0f-28827646da58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LSeriesSummable.le_const_mul_rpow {f : ℕ → ℂ} {s : ℂ} (h : LSeriesSummable f s) :
    ∃ C, ∀ n ≠ 0, ‖f n‖ ≤ C * n ^ s.re := by
  replace h := h.norm
  use tsum fun n ↦ ‖term f s n‖
  by_contra! ⟨n, hn₀, hn⟩
  have := h.le_tsum n fun _ _ ↦ norm_nonneg _
  rw [norm_term_eq, ite_eq_right hn₀,
    div_le_iff₀ <| Real.rpow_pos_of_pos (Nat.cast_pos.mpr <| Nat.pos_of_ne_zero hn₀) _] at this
  exact (this.trans_lt hn).false.elim

open Filter in
/-- If the `LSeries` of `f` is summable at `s`, then `f = O(n^(re s))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Varianta744f92ec7b2e4572bf8df39b5051f34ac45814ba6a867719efe083eb12235ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Varianta744f92ec7b2e4572bf8df39b5051f34ac45814ba6a867719efe083eb12235ea.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee9c53ed2b6b8407fa419327c77105221a1a760a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
