# le_arch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eae47aeaa7c67394991f0c5f10bb988fc5837d61",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 634,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/bea0092c7ddce64acae070434b9d27e4897bbf5cc61ac2b0d4febd90d1f4a366.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e737c6d-66e1-f532-357e-1260b4c807e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9a1e272-b448-f9e8-c35a-3d6bad8fc2a6",
  "kind": "theorem",
  "lexical_name": "le_arch",
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
  "slug": "le-arch--2d46ea62ec3823fbca4959fb",
  "source": {
    "blob": "eae47aeaa7c67394991f0c5f10bb988fc5837d61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 650,
    "line": 634,
    "path": "GRWTSK/Algebra/Basic/Variantbea0092c7ddce64acae070434b9d27e4897bbf5cc61ac2b0d4febd90d1f4a366.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d46ea62ec3823fbca4959fbbbc0ef9c56cb3ef7a8cba0f24a53c07c8884d5bc",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantbea0092c7ddce64acae070434b9d27e4897bbf5cc61ac2b0d4febd90d1f4a366.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9a1e272-b448-f9e8-c35a-3d6bad8fc2a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 634–650.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_arch (a : ℤ√d) : ∃ n : ℕ, a ≤ n := by
  obtain ⟨x, y, (h : a ≤ ⟨x, y⟩)⟩ : ∃ x y : ℕ, Nonneg (⟨x, y⟩ + -a) :=
    match -a with
    | ⟨Int.ofNat x, Int.ofNat y⟩ => ⟨0, 0, by trivial⟩
    | ⟨Int.ofNat x, -[y+1]⟩ => ⟨0, y + 1, by simp [Int.negSucc_eq, add_assoc, Nonneg, Nonnegg]⟩
    | ⟨-[x+1], Int.ofNat y⟩ => ⟨x + 1, 0, by simp [Int.negSucc_eq, add_assoc, Nonneg, Nonnegg]⟩
    | ⟨-[x+1], -[y+1]⟩ => ⟨x + 1, y + 1, by simp [Int.negSucc_eq, add_assoc, Nonneg, Nonnegg]⟩
  refine ⟨x + d * y, h.trans ?_⟩
  change Nonneg ⟨↑x + d * y - ↑x, 0 - ↑y⟩
  rcases y with - | y
  · simp only [Nat.cast_zero, mul_zero, add_zero, sub_self]
    trivial
  have h : ∀ y, SqLe y d (d * y) 1 := fun y => by
    simpa [SqLe, mul_comm, mul_left_comm] using Nat.mul_le_mul_right (y * y) (Nat.le_mul_self d)
  rw [show (x : ℤ) + d * Nat.succ y - x = d * Nat.succ y by simp]
  exact h (y + 1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantbea0092c7ddce64acae070434b9d27e4897bbf5cc61ac2b0d4febd90d1f4a366.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantbea0092c7ddce64acae070434b9d27e4897bbf5cc61ac2b0d4febd90d1f4a366.lean#L634).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eae47aeaa7c67394991f0c5f10bb988fc5837d61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
