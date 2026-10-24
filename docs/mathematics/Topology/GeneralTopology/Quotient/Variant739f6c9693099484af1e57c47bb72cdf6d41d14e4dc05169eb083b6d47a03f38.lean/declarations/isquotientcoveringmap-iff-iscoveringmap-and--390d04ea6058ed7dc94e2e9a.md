# isQuotientCoveringMap_iff_isCoveringMap_and

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:940f269b-3abb-3490-6afd-06eb7f69048a",
  "kind": "theorem",
  "lexical_name": "isQuotientCoveringMap_iff_isCoveringMap_and",
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
  "slug": "isquotientcoveringmap-iff-iscoveringmap-and--390d04ea6058ed7dc94e2e9a",
  "source": {
    "blob": "3348d2a4068c7336738a5f5144d377e4ea0847dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 327,
    "path": "GRWTSK/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:390d04ea6058ed7dc94e2e9a0606d7c66d399677ebaf91922bb1670df71e4e47",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:940f269b-3abb-3490-6afd-06eb7f69048a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] theorem isQuotientCoveringMap_iff_isCoveringMap_and :
    IsQuotientCoveringMap f G ↔ IsCoveringMap f ∧ f.Surjective ∧ ContinuousConstSMul G E ∧
      IsCancelSMul G E ∧ ∀ {e₁ e₂}, f e₁ = f e₂ ↔ e₁ ∈ MulAction.orbit G e₂ where
  mp h := have := h.toContinuousConstSMul
    ⟨h.isCoveringMap, h.surjective, this, h.isCancelSMul, h.apply_eq_iff_mem_orbit⟩
  mpr h := (isQuotientCoveringMap_iff ..).mpr ⟨h.1.isQuotientMap h.2.1, h.2.2.1, h.2.2.2.2, fun e ↦
    have ⟨_, U, heU, hU, hfU, H, hH⟩ := h.1 (f e)
    ⟨Subtype.val '' Prod.snd ∘ H ⁻¹' {(H ⟨e, heU⟩).2}, (hfU.isOpenMap_subtype_val _ <|
        (isOpen_discrete _).preimage <| by fun_prop).mem_nhds ⟨⟨e, heU⟩, rfl, rfl⟩, fun g ↦ by
      rintro ⟨_, ⟨_, ⟨x, hx, rfl⟩, rfl⟩, y, hy, eq⟩
      have := h.2.2.2.1
      apply IsCancelSMul.right_cancel _ _ x.1
      simp_rw [← eq, one_smul]
      refine congr($(H.injective <| Prod.ext (Subtype.ext ?_) <| hy.trans hx.symm))
      simp_rw [hH]
      exact h.2.2.2.2.mpr ⟨_, eq.symm⟩⟩⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3348d2a4068c7336738a5f5144d377e4ea0847dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
