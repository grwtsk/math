# containsKey_of_length_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb899cd8-ce91-96f4-95ac-44cf0fc707df",
  "kind": "theorem",
  "lexical_name": "containsKey_of_length_eq",
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
  "slug": "containskey-of-length-eq--ef0da9aeaf2946b122ae45de",
  "source": {
    "blob": "ddcb189e0bb3710a43ea511e7a5fcd0941f0a100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3662,
    "line": 3630,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef0da9aeaf2946b122ae45deb3a5442d885d3e015d4fbd4b6fc655a321a6f6af",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb899cd8-ce91-96f4-95ac-44cf0fc707df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3630–3662.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem containsKey_of_length_eq [BEq α] [EquivBEq α] {l₁ l₂ : List ((a : α) × β a)} (dl₁ : DistinctKeys l₁) (dl₂ : DistinctKeys l₂) (hl : l₂.length = l₁.length) (hs : ∀ (a : α), containsKey a l₁ → containsKey a l₂)  : ∀ (a : α), containsKey a l₂ → containsKey a l₁ := by
  intro a ha
  apply Classical.byContradiction
  intro hb
  simp only [Bool.not_eq_true] at hb
  suffices l₁.length < l₂.length by omega
  suffices l₁.length ≤ (eraseKey a l₂).length ∧ 1 + (eraseKey a l₂).length = l₂.length by omega
  apply And.intro
  · apply length_le_length_of_containsKey dl₁ (DistinctKeys.eraseKey dl₂)
    intro a₂ mem₂
    rw [containsKey_eraseKey dl₂]
    simp only [Bool.and_eq_true, Bool.not_eq_eq_eq_not, Bool.not_true]
    apply And.intro
    · apply Classical.byContradiction
      intro hyp
      simp only [Bool.not_eq_false] at hyp
      rw [containsKey_congr hyp] at hb
      rw [hb] at mem₂
      contradiction
    · apply hs
      exact mem₂
  · simp only [length_eraseKey, ha, ↓reduceIte]
    have : l₂.length > 0 := by
      cases l₂ with
      | nil => simp at ha
      | _ => simp
    omega

section

variable {β : Type v}

/-- Internal implementation detail of the hash map -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variantb88354fef237968bca1f8b9bf5ae1eb6ec6de16248feaabb5b8fe2ee6dbd750e.lean#L3630).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcb189e0bb3710a43ea511e7a5fcd0941f0a100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
