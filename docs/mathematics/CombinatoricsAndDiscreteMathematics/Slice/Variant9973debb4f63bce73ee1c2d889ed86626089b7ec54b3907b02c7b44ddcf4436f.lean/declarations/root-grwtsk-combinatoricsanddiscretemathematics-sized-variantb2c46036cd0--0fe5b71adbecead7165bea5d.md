# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Sized.Variantb2c46036cd054cd1d0fe659dca911005ae6d0f603d25c29a0dd06735d0ffe780.Set.Sized.card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20506a27-24fd-1439-e88e-df554e834e0c",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Sized.Variantb2c46036cd054cd1d0fe659dca911005ae6d0f603d25c29a0dd06735d0ffe780.Set.Sized.card_le",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-sized-variantb2c46036cd0--0fe5b71adbecead7165bea5d",
  "source": {
    "blob": "3938a0059c64cfa699642425de4ad3495ec93b22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 109,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Slice/Variant9973debb4f63bce73ee1c2d889ed86626089b7ec54b3907b02c7b44ddcf4436f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fe5b71adbecead7165bea5d1f2e7bc84b13a78a8a466823fdefd2f70f4003cc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Slice/Variant9973debb4f63bce73ee1c2d889ed86626089b7ec54b3907b02c7b44ddcf4436f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20506a27-24fd-1439-e88e-df554e834e0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Sized.Variantb2c46036cd054cd1d0fe659dca911005ae6d0f603d25c29a0dd06735d0ffe780.Set.Sized.card_le (h𝒜 : (𝒜 : Set (Finset α)).Sized r) :
    #𝒜 ≤ (Fintype.card α).choose r := by
  rw [Fintype.card, ← card_powersetCard]
  exact card_le_card (subset_powersetCard_univ_iff.mpr h𝒜)

end Sized

/-! ### Slices -/


section Slice

variable {𝒜 : Finset (Finset α)} {A A₁ A₂ : Finset α} {r r₁ r₂ : ℕ}

/-- The `r`-th slice of a set family is the subset of its elements which have cardinality `r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Slice/Variant9973debb4f63bce73ee1c2d889ed86626089b7ec54b3907b02c7b44ddcf4436f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Slice/Variant9973debb4f63bce73ee1c2d889ed86626089b7ec54b3907b02c7b44ddcf4436f.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3938a0059c64cfa699642425de4ad3495ec93b22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
