# pair_lt_pair_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adc7bfe0-7ee9-797b-778b-4c4ca66c66d7",
  "kind": "theorem",
  "lexical_name": "pair_lt_pair_right",
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
  "slug": "pair-lt-pair-right--10ab2dde634123a4e6e03e3b",
  "source": {
    "blob": "35bdf1153a83875cae296d4dbb872c184aaa92cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10ab2dde634123a4e6e03e3b5eb6dd199c1da5d53df6574c045125bb6996b937",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adc7bfe0-7ee9-797b-778b-4c4ca66c66d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pair_lt_pair_right (a) {b₁ b₂} (h : b₁ < b₂) : pair a b₁ < pair a b₂ := by
  by_cases h₁ : a < b₁
  · simpa [pair, h₁, Nat.add_assoc, lt_trans h₁ h, h] using mul_self_lt_mul_self h
  · simp only [pair, h₁, ↓reduceIte, Nat.add_assoc]
    by_cases h₂ : a < b₂; swap; · simp [h₂, h]
    simp only [h₂, ↓reduceIte]
    rw [Nat.add_comm, Nat.add_comm _ a, Nat.add_assoc, Nat.add_lt_add_iff_left]
    rwa [Nat.add_comm, ← sqrt_lt, sqrt_add_eq]
    exact le_trans (not_lt.mp h₁) (Nat.le_add_left _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variant50fc1f1329f65427af085934567e4703396ad929975120eff534d35eb0a1f0b9.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35bdf1153a83875cae296d4dbb872c184aaa92cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
