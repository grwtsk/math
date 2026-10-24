# Prod.continuous_to_fun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcd731b39e401c04dd74cdfb6242d11ae2852a0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb4ecab6-391c-e353-30d5-11e7a0834c68",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c414aa5f-35b5-a46c-96e8-dfea095b0890",
  "kind": "theorem",
  "lexical_name": "Prod.continuous_to_fun",
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
  "slug": "prod-continuous-to-fun--822338493bac5a237b9cc8a0",
  "source": {
    "blob": "bcd731b39e401c04dd74cdfb6242d11ae2852a0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 140,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:822338493bac5a237b9cc8a0133c1f8b0b4248bb6bbb01c57141c660f6e31fee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c414aa5f-35b5-a46c-96e8-dfea095b0890`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Prod.continuous_to_fun : ContinuousOn (Prod.toFun' e₁ e₂)
    (π (F₁ × F₂) (E₁ ×ᵇ E₂) ⁻¹' (e₁.baseSet ∩ e₂.baseSet)) := by
  let f₁ : TotalSpace (F₁ × F₂) (E₁ ×ᵇ E₂) → TotalSpace F₁ E₁ × TotalSpace F₂ E₂ :=
    fun p ↦ ((⟨p.1, p.2.1⟩ : TotalSpace F₁ E₁), (⟨p.1, p.2.2⟩ : TotalSpace F₂ E₂))
  let f₂ : TotalSpace F₁ E₁ × TotalSpace F₂ E₂ → (B × F₁) × B × F₂ := fun p ↦ ⟨e₁ p.1, e₂ p.2⟩
  let f₃ : (B × F₁) × B × F₂ → B × F₁ × F₂ := fun p ↦ ⟨p.1.1, p.1.2, p.2.2⟩
  have hf₁ : Continuous f₁ := (Prod.isInducing_diag F₁ E₁ F₂ E₂).continuous
  have hf₂ : ContinuousOn f₂ (e₁.source ×ˢ e₂.source) :=
    e₁.toOpenPartialHomeomorph.continuousOn.prodMap e₂.toOpenPartialHomeomorph.continuousOn
  have hf₃ : Continuous f₃ := by fun_prop
  refine ((hf₃.comp_continuousOn hf₂).comp hf₁.continuousOn ?_).congr ?_
  · rw [e₁.source_eq, e₂.source_eq]
    exact mapsTo_preimage _ _
  rintro ⟨b, v₁, v₂⟩ ⟨hb₁, _⟩
  simp only [f₁, f₂, f₃, Prod.toFun', Prod.mk_inj, Function.comp_apply, and_true]
  rw [e₁.coe_fst]
  rw [e₁.source_eq, mem_preimage]
  exact hb₁

variable (e₁ e₂) [∀ x, Zero (E₁ x)] [∀ x, Zero (E₂ x)]

/-- Given trivializations `e₁`, `e₂` for fiber bundles `E₁`, `E₂` over a base `B`, the inverse
function for the construction `Trivialization.prod`, the induced
trivialization for the fiberwise product of `E₁` and `E₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variant5ebfe0bafce7921fc87e8c1fd0d7fcd1768190cc1cbfb4deb9db49d1a3a82aac.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcd731b39e401c04dd74cdfb6242d11ae2852a0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
