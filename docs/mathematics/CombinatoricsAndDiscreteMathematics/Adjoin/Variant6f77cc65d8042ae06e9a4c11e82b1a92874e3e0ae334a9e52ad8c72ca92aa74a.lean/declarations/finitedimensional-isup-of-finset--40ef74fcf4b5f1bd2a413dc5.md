# finiteDimensional_iSup_of_finset'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0ece5ad-0307-9498-8f59-f6d8f066c61b",
  "kind": "theorem",
  "lexical_name": "finiteDimensional_iSup_of_finset'",
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
  "slug": "finitedimensional-isup-of-finset--40ef74fcf4b5f1bd2a413dc5",
  "source": {
    "blob": "c3706b8a02530204e89d7161d83deebb527a9cba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1266,
    "line": 1255,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variant6f77cc65d8042ae06e9a4c11e82b1a92874e3e0ae334a9e52ad8c72ca92aa74a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40ef74fcf4b5f1bd2a413dc5d7033af33f0d6c40fba443343e9a4f5a4ce58a6d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variant6f77cc65d8042ae06e9a4c11e82b1a92874e3e0ae334a9e52ad8c72ca92aa74a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0ece5ad-0307-9498-8f59-f6d8f066c61b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1255–1266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteDimensional_iSup_of_finset' {ι : Type*} {f : ι → IntermediateField K L}
    /-Porting note: this was the mathlib3 version. Using `[h : ...]`, as in mathlib3, causes the
    error "invalid parametric local instance".-/
    {s : Finset ι} (h : ∀ i, i ∈ s → FiniteDimensional K (f i)) :
    FiniteDimensional K (⨆ i ∈ s, f i : IntermediateField K L) := by
  haveI : ∀ i : { i // i ∈ s }, FiniteDimensional K (f i) := fun i => h i i.2
  have : ⨆ i ∈ s, f i = ⨆ i : { i // i ∈ s }, f i :=
    le_antisymm (iSup_le fun i => iSup_le fun h => le_iSup (fun i : { i // i ∈ s } => f i) ⟨i, h⟩)
      (iSup_le fun i => le_iSup_of_le i (le_iSup_of_le i.2 le_rfl))
  exact this.symm ▸ IntermediateField.finiteDimensional_iSup_of_finite

/-- A compositum of algebraic extensions is algebraic -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Adjoin/Variant6f77cc65d8042ae06e9a4c11e82b1a92874e3e0ae334a9e52ad8c72ca92aa74a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Adjoin/Variant6f77cc65d8042ae06e9a4c11e82b1a92874e3e0ae334a9e52ad8c72ca92aa74a.lean#L1255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3706b8a02530204e89d7161d83deebb527a9cba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
