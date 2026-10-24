# Ordered.lowerBound?_least_lb

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48bc9de8-7bbf-67d8-3187-0a6b5059d8dc",
  "kind": "theorem",
  "lexical_name": "Ordered.lowerBound?_least_lb",
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
  "slug": "ordered-lowerbound-least-lb--6d80b1ea7570556b23db6aaa",
  "source": {
    "blob": "fa670c74b4960613283f3cf987aca7b7b9f008c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 309,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantedffa3c764eae75e5527becd6009f237f1009de630e13c33f3f98cef0745e61d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d80b1ea7570556b23db6aaa4829264e2bb98ae01ad976942b6bb85fba38595d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantedffa3c764eae75e5527becd6009f237f1009de630e13c33f3f98cef0745e61d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48bc9de8-7bbf-67d8-3187-0a6b5059d8dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ordered.lowerBound?_least_lb [@TransCmp α cmp] [IsCut cmp cut] (h : Ordered cmp t)
    (hlb : ∀ {x}, lb = some x → t.All (cmpLT cmp x ·)) :
    t.lowerBound? cut lb = some x → y ∈ t → cut x = .gt → cmp x y = .lt → cut y = .lt := by
  induction t generalizing lb with
  | nil => intro.
  | node _ _ _ _ ihl ihr =>
    simp [lowerBound?]; split <;> rename_i hv <;> rintro h₁ (rfl | hy' | hy') hx h₂
    · exact hv
    · exact ihl h.2.2.1 (fun h => (hlb h).2.1) h₁ hy' hx h₂
    · exact IsCut.lt_trans (cut := cut) (cmp := cmp) (All_def.1 h.2.1 _ hy').1 hv
    · rcases lowerBound?_mem_lb h₁ with h₁ | ⟨⟨⟩⟩
      · cases TransCmp.lt_asymm h₂ (All_def.1 h.2.1 _ h₁).1
      · cases TransCmp.lt_asymm h₂ h₂
    · refine (TransCmp.lt_asymm h₂ ?_).elim; have := (All_def.1 h.1 _ hy').1
      rcases lowerBound?_mem_lb h₁ with h₁ | ⟨⟨⟩⟩
      · exact TransCmp.lt_trans this (All_def.1 h.2.1 _ h₁).1
      · exact this
    · exact ihr h.2.2.2 (by rintro _ ⟨⟨⟩⟩; exact h.2.1) h₁ hy' hx h₂
    · cases h₁; cases TransCmp.lt_asymm h₂ h₂
    · cases h₁; cases hx.symm.trans hv
    · cases h₁; cases hx.symm.trans hv

/--
A statement of the least-ness of the result of `lowerBound?`. If `x` is the return value of
`lowerBound?` and it is strictly less than the cut, then any other `y > x` in the tree is in fact
strictly greater than the cut (so there is no exact match, and nothing closer to the cut).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantedffa3c764eae75e5527becd6009f237f1009de630e13c33f3f98cef0745e61d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantedffa3c764eae75e5527becd6009f237f1009de630e13c33f3f98cef0745e61d.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa670c74b4960613283f3cf987aca7b7b9f008c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
