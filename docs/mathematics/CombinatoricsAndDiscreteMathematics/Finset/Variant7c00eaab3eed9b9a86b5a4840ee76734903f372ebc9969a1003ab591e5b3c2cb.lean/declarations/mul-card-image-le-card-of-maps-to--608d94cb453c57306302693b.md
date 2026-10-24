# mul_card_image_le_card_of_maps_to

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6baee5f2-4412-84f0-1a4b-f8fedcbe87ee",
  "kind": "theorem",
  "lexical_name": "mul_card_image_le_card_of_maps_to",
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
  "slug": "mul-card-image-le-card-of-maps-to--608d94cb453c57306302693b",
  "source": {
    "blob": "fba71c0ed3c5667eb8dcfa13f957fa480188a737",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 281,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant7c00eaab3eed9b9a86b5a4840ee76734903f372ebc9969a1003ab591e5b3c2cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:608d94cb453c57306302693b9ba055dcc7ec4fd519d9fdb1cae878b94aede99c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant7c00eaab3eed9b9a86b5a4840ee76734903f372ebc9969a1003ab591e5b3c2cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6baee5f2-4412-84f0-1a4b-f8fedcbe87ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_card_image_le_card_of_maps_to {f : α → β} {s : Finset α} {t : Finset β}
    (Hf : ∀ a ∈ s, f a ∈ t) (n : ℕ) (hn : ∀ b ∈ t, n ≤ #{a ∈ s | f a = b}) :
    n * #t ≤ #s :=
  calc
    n * #t = ∑ _a ∈ t, n := by simp [mul_comm]
    _ ≤ ∑ b ∈ t, #{a ∈ s | f a = b} := sum_le_sum hn
    _ = #s := by rw [← card_eq_sum_card_fiberwise Hf]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant7c00eaab3eed9b9a86b5a4840ee76734903f372ebc9969a1003ab591e5b3c2cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant7c00eaab3eed9b9a86b5a4840ee76734903f372ebc9969a1003ab591e5b3c2cb.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fba71c0ed3c5667eb8dcfa13f957fa480188a737` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
