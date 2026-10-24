# piecewise'_apply_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18972951-c1d6-bf84-d27e-5b035ac68cf0",
  "kind": "lemma",
  "lexical_name": "piecewise'_apply_right",
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
  "slug": "piecewise-apply-right--5bdb3fd2be7d7cc0f70aab07",
  "source": {
    "blob": "50a995bdfcb330c1f5669e1327e7c5b99b030727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 616,
    "line": 603,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantfbd2a6d1e3327fba6298bca12654d3515c36b5d9991613e5b2b55e2260a3a85e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bdb3fd2be7d7cc0f70aab0799cd776b2c164d07cca341e82181adb905339a1a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantfbd2a6d1e3327fba6298bca12654d3515c36b5d9991613e5b2b55e2260a3a85e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18972951-c1d6-bf84-d27e-5b035ac68cf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 603–616.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma piecewise'_apply_right {C₀ C₁ C₂ : Set X} (h₀ : C₀ ⊆ C₁ ∪ C₂) (h₁ : IsClosed C₁)
    (h₂ : IsClosed C₂) (f₁ : LocallyConstant C₁ Z) (f₂ : LocallyConstant C₂ Z)
    [DecidablePred (· ∈ C₁)] (hf : ∀ x (hx : x ∈ C₁ ∩ C₂), f₁ ⟨x, hx.1⟩ = f₂ ⟨x, hx.2⟩)
    (x : C₀) (hx : x.val ∈ C₂) :
    piecewise' h₀ h₁ h₂ f₁ f₂ hf x = f₂ ⟨x.val, hx⟩ := by
  let : ∀ j : C₀, Decidable (j ∈ Subtype.val ⁻¹' C₁) := fun j ↦ decidable_of_iff (↑j ∈ C₁) Iff.rfl
  rw [piecewise', piecewise_apply_right (f := (f₁.comap
    ⟨(restrictPreimage C₁ ((↑) : C₀ → X)), continuous_subtype_val.restrictPreimage⟩))
    (hx := hx)]
  rfl

end Piecewise

end LocallyConstant
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantfbd2a6d1e3327fba6298bca12654d3515c36b5d9991613e5b2b55e2260a3a85e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantfbd2a6d1e3327fba6298bca12654d3515c36b5d9991613e5b2b55e2260a3a85e.lean#L603).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50a995bdfcb330c1f5669e1327e7c5b99b030727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
