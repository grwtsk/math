# nilpotencyLength_eq_succ_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51f9421d-4cb2-e696-0285-bb8085032fa7",
  "kind": "theorem",
  "lexical_name": "nilpotencyLength_eq_succ_iff",
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
  "slug": "nilpotencylength-eq-succ-iff--394d7be04c6a4599e19e50d3",
  "source": {
    "blob": "2fc68f517c627a1147a0ffbf63bfc3e3481da8d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 420,
    "path": "GRWTSK/Algebra/Nilpotent/Variantd1d1dc0d1c0571355c2b8dfa3cbbabdd9629c34c814b533f96b7d091241a6ba4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:394d7be04c6a4599e19e50d3d90c4a681652f70e2af49f19d08bec1560558935",
  "verification": {
    "reference": "docs/verification/Algebra/Nilpotent/Variantd1d1dc0d1c0571355c2b8dfa3cbbabdd9629c34c814b533f96b7d091241a6ba4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51f9421d-4cb2-e696-0285-bb8085032fa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nilpotencyLength_eq_succ_iff (k : ℕ) :
    nilpotencyLength L M = k + 1 ↔
      lowerCentralSeries R L M (k + 1) = ⊥ ∧ lowerCentralSeries R L M k ≠ ⊥ := by
  have aux (k : ℕ) : lowerCentralSeries R L M k = ⊥ ↔ lowerCentralSeries ℤ L M k = ⊥ := by
    simp [SetLike.ext'_iff, coe_lowerCentralSeries_eq_int R L M]
  let s := {k | lowerCentralSeries ℤ L M k = ⊥}
  rw [aux, ne_eq, aux]
  change sInf s = k + 1 ↔ k + 1 ∈ s ∧ k ∉ s
  have hs : ∀ k₁ k₂, k₁ ≤ k₂ → k₁ ∈ s → k₂ ∈ s := by
    rintro k₁ k₂ h₁₂ (h₁ : lowerCentralSeries ℤ L M k₁ = ⊥)
    exact eq_bot_iff.mpr (h₁ ▸ antitone_lowerCentralSeries ℤ L M h₁₂)
  exact Nat.sInf_upward_closed_eq_succ_iff hs k

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Nilpotent/Variantd1d1dc0d1c0571355c2b8dfa3cbbabdd9629c34c814b533f96b7d091241a6ba4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nilpotent/Variantd1d1dc0d1c0571355c2b8dfa3cbbabdd9629c34c814b533f96b7d091241a6ba4.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fc68f517c627a1147a0ffbf63bfc3e3481da8d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
