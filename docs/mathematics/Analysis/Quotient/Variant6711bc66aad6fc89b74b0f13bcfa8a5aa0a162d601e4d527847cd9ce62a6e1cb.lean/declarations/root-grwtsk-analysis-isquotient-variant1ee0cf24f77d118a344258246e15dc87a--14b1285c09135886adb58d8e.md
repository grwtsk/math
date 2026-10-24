# _root_.GRWTSK.Analysis.IsQuotient.Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.QuotientAddGroup.norm_lift_apply_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2520b372-79f6-5b53-d34c-b03c8d3c4890",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.IsQuotient.Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.QuotientAddGroup.norm_lift_apply_le",
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
  "slug": "root-grwtsk-analysis-isquotient-variant1ee0cf24f77d118a344258246e15dc87a--14b1285c09135886adb58d8e",
  "source": {
    "blob": "524c4e9c40ee4d9adea543f941a42bbd3e9c5bc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 370,
    "path": "GRWTSK/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14b1285c09135886adb58d8efe1796a09e7db65e3ffa002229fe880d2595b211",
  "verification": {
    "reference": "docs/verification/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2520b372-79f6-5b53-d34c-b03c8d3c4890`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.IsQuotient.Variant1ee0cf24f77d118a344258246e15dc87aeefa499d661567f6ef626c0a3a97a67.QuotientAddGroup.norm_lift_apply_le {S : AddSubgroup M} (f : NormedAddGroupHom M N)
    (hf : ∀ x ∈ S, f x = 0) (x : M ⧸ S) : ‖lift S f.toAddMonoidHom hf x‖ ≤ ‖f‖ * ‖x‖ := by
  cases (norm_nonneg f).eq_or_gt with
  | inl h =>
    rcases mk_surjective x with ⟨x, rfl⟩
    simpa [h] using le_opNorm f x
  | inr h =>
    rw [← not_lt, ← lt_div_iff₀' h, norm_lt_iff]
    rintro ⟨x, rfl, hx⟩
    exact ((lt_div_iff₀' h).1 hx).not_le (le_opNorm f x)

/-- The operator norm of the projection is `1` if the subspace is not dense. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Quotient/Variant6711bc66aad6fc89b74b0f13bcfa8a5aa0a162d601e4d527847cd9ce62a6e1cb.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `524c4e9c40ee4d9adea543f941a42bbd3e9c5bc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
