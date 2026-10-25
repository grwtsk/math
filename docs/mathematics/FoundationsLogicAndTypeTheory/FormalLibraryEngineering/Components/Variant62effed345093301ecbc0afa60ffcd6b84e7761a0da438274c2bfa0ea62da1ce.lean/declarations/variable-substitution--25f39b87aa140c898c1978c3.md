# variable_substitution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bbd1b05-24cc-c77f-31d7-5fc0c1306cef",
  "kind": "theorem",
  "lexical_name": "variable_substitution",
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
  "slug": "variable-substitution--25f39b87aa140c898c1978c3",
  "source": {
    "blob": "1b8ffcebf58c28e1875ce86f1d958785aca4d1aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 387,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant62effed345093301ecbc0afa60ffcd6b84e7761a0da438274c2bfa0ea62da1ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25f39b87aa140c898c1978c34afbaac783b700c9173eab8ab5c653c5180baa54",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant62effed345093301ecbc0afa60ffcd6b84e7761a0da438274c2bfa0ea62da1ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bbd1b05-24cc-c77f-31d7-5fc0c1306cef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem variable_substitution {Γ : List (Expr S)} (hΓ : ValidContext P Γ) :
    ∃ ρ : Nat → Nat, Ω.TypedSubstitution Γ (Expr.var ∘ ρ) := by
  induction hΓ with
  | nil => exact ⟨id,fun _ _ h => nomatch h⟩
  | @cons Γ A s hΓ hA ih =>
    obtain ⟨ρ,hρ⟩ := ih
    have ht := HasType.subst hA hρ
    obtain ⟨n,_,hn⟩ := Ω.fresh_variable ht 0
    refine ⟨fun i => match i with | 0 => n | i+1 => ρ i,?_⟩
    convert hρ.cons hn using 1
    funext i; cases i <;> rfl

end ContextTower

open Classical in
/-- Finite primary-component induction. The supplied interfaces are consumed
one at a time, and Ground=Top is only used at strict predecessor components. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant62effed345093301ecbc0afa60ffcd6b84e7761a0da438274c2bfa0ea62da1ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Components/Variant62effed345093301ecbc0afa60ffcd6b84e7761a0da438274c2bfa0ea62da1ce.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b8ffcebf58c28e1875ce86f1d958785aca4d1aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
