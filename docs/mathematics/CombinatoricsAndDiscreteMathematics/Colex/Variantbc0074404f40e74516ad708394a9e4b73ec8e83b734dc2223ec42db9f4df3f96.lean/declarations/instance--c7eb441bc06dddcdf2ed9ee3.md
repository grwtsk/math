# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3bc73ce57c6f5e77666f6f899289de3cfe234e4af1588808f2109579377157d",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c7eb441bc06dddcdf2ed9ee3",
  "source": {
    "blob": "62879d18af2672e8cd1bf5ec9511c7a349235202",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 219,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7eb441bc06dddcdf2ed9ee30d95f6558eb96dc6e9fc52826956bcd6e277d3b8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3bc73ce57c6f5e77666f6f899289de3cfe234e4af1588808f2109579377157d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [LinearOrder α] : LinearOrder (Finset.Colex α) :=
  { instLT,
    instLE with
    le_refl := fun A => Or.inr rfl
    le_trans := le_trans
    le_antisymm := fun A B AB BA =>
      AB.elim (fun k => BA.elim (fun t => (asymm k t).elim) fun t => t.symm) id
    le_total := fun A B =>
      (lt_trichotomy A B).elim3 (Or.inl ∘ Or.inl) (Or.inl ∘ Or.inr) (Or.inr ∘ Or.inl)
    -- Porting note: we must give some hints for instances
    decidableLE := by
      letI : DecidableEq (Finset.Colex α) := inferInstanceAs (DecidableEq (Finset α))
      exact fun A B => inferInstanceAs (Decidable (A < B ∨ A = B))
    decidableLT := inferInstance
    decidableEq := inferInstanceAs (DecidableEq (Finset α))
    lt_iff_le_not_le := fun A B => by
      constructor
      · intro t
        refine' ⟨Or.inl t, _⟩
        rintro (i | rfl)
        · apply asymm_of _ t i
        · apply irrefl _ t
      rintro ⟨h₁ | rfl, h₂⟩
      · apply h₁
      apply h₂.elim (Or.inr rfl) }

/-- The instances set up let us infer that `(· < ·)` is a strict total order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Colex/Variantbc0074404f40e74516ad708394a9e4b73ec8e83b734dc2223ec42db9f4df3f96.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62879d18af2672e8cd1bf5ec9511c7a349235202` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
