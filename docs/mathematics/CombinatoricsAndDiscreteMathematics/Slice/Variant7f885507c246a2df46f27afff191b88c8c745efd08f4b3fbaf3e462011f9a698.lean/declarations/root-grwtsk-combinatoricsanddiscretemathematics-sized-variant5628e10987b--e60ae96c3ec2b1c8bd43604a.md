# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Sized.Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.Set.Sized.card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c3c1179-c0c5-737c-e9d6-4cecaeb6cf2e",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Sized.Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.Set.Sized.card_le",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-sized-variant5628e10987b--e60ae96c3ec2b1c8bd43604a",
  "source": {
    "blob": "69fe536246fca7b915eab4dd603a862c3b55778a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 106,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e60ae96c3ec2b1c8bd43604a843e26e82c5b9ba69972f893c9104fa2998b2f36",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c3c1179-c0c5-737c-e9d6-4cecaeb6cf2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Sized.Variant5628e10987b092f173352f6fb7564aa687afd197497602359b94dc4ccaed2810.Set.Sized.card_le (h𝒜 : (𝒜 : Set (Finset α)).Sized r) :
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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Slice/Variant7f885507c246a2df46f27afff191b88c8c745efd08f4b3fbaf3e462011f9a698.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69fe536246fca7b915eab4dd603a862c3b55778a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
