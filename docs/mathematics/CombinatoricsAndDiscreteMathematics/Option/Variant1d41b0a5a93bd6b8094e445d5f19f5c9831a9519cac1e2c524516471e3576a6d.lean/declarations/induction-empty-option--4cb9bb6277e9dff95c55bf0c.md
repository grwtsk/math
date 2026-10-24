# induction_empty_option

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3a06937-9b0b-b706-0920-9a9d6402b84f",
  "kind": "theorem",
  "lexical_name": "induction_empty_option",
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
  "slug": "induction-empty-option--4cb9bb6277e9dff95c55bf0c",
  "source": {
    "blob": "b5a92c8965571a98806ea62535ff5af4b2974fb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 88,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variant1d41b0a5a93bd6b8094e445d5f19f5c9831a9519cac1e2c524516471e3576a6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cb9bb6277e9dff95c55bf0c249a48defc9f9c0baae3ac81d297bbd949efcb38",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Option/Variant1d41b0a5a93bd6b8094e445d5f19f5c9831a9519cac1e2c524516471e3576a6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3a06937-9b0b-b706-0920-9a9d6402b84f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_empty_option {P : ∀ (α : Type u) [Fintype α], Prop}
    (of_equiv : ∀ (α β) [Fintype β] (e : α ≃ β), @P α (@Fintype.ofEquiv α β ‹_› e.symm) → @P β ‹_›)
    (h_empty : P PEmpty) (h_option : ∀ (α) [Fintype α], P α → P (Option α)) (α : Type u)
    [h_fintype : Fintype α] : P α := by
  obtain ⟨p⟩ :=
    let f_empty := fun i => by convert h_empty
    let h_option : ∀ {α : Type u} [Fintype α] [DecidableEq α],
          (∀ (h : Fintype α), P α) → ∀ (h : Fintype (Option α)), P (Option α)  := by
      rintro α hα - Pα hα'
      convert h_option α (Pα _)
    @truncRecEmptyOption (fun α => ∀ h, @P α h) (@fun α β e hα hβ => @of_equiv α β hβ e (hα _))
      f_empty h_option α _ (Classical.decEq α)
  exact p _
  -- ·

end Fintype

/-- An induction principle for finite types, analogous to `Nat.rec`. It effectively says
that every `Fintype` is either `Empty` or `Option α`, up to an `Equiv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Option/Variant1d41b0a5a93bd6b8094e445d5f19f5c9831a9519cac1e2c524516471e3576a6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variant1d41b0a5a93bd6b8094e445d5f19f5c9831a9519cac1e2c524516471e3576a6d.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5a92c8965571a98806ea62535ff5af4b2974fb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
