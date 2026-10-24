# bound_of_isBigO_cofinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cebc7f74-166f-040c-d169-64e7c208246c",
  "kind": "theorem",
  "lexical_name": "bound_of_isBigO_cofinite",
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
  "slug": "bound-of-isbigo-cofinite--bbf5de9c429f929778b218f8",
  "source": {
    "blob": "27a1f07fb7322d9d503f3ee04605ed750d6ba18a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2152,
    "line": 2142,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant377353307c0a3db2816f5173c47d1d44336562d918cadc1bce23b885ffbc0abf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbf5de9c429f929778b218f8101c5786a1c7e736c7cec8c3d777a7effc296e43",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Asymptotics/Variant377353307c0a3db2816f5173c47d1d44336562d918cadc1bce23b885ffbc0abf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cebc7f74-166f-040c-d169-64e7c208246c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2142–2152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bound_of_isBigO_cofinite (h : f =O[cofinite] g'') :
    ∃ C > 0, ∀ ⦃x⦄, g'' x ≠ 0 → ‖f x‖ ≤ C * ‖g'' x‖ := by
  rcases h.exists_pos with ⟨C, C₀, hC⟩
  rw [IsBigOWith_def, eventually_cofinite] at hC
  rcases (hC.toFinset.image fun x => ‖f x‖ / ‖g'' x‖).exists_le with ⟨C', hC'⟩
  have : ∀ x, C * ‖g'' x‖ < ‖f x‖ → ‖f x‖ / ‖g'' x‖ ≤ C' := by simpa using hC'
  refine' ⟨max C C', lt_max_iff.2 (Or.inl C₀), fun x h₀ => _⟩
  rw [max_mul_of_nonneg _ _ (norm_nonneg _), le_max_iff, or_iff_not_imp_left, not_le]
  exact fun hx => (div_le_iff (norm_pos_iff.2 h₀)).1 (this _ hx)
#align asymptotics.bound_of_is_O_cofinite Asymptotics.bound_of_isBigO_cofinite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Asymptotics/Variant377353307c0a3db2816f5173c47d1d44336562d918cadc1bce23b885ffbc0abf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant377353307c0a3db2816f5173c47d1d44336562d918cadc1bce23b885ffbc0abf.lean#L2142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27a1f07fb7322d9d503f3ee04605ed750d6ba18a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
