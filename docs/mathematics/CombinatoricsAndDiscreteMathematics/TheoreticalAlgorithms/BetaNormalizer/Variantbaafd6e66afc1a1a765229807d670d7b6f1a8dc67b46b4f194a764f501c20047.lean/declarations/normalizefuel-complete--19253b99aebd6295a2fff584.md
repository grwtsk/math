# normalizeFuel_complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2b5569e-c08a-2360-0b7d-e3bb44442a83",
  "kind": "theorem",
  "lexical_name": "normalizeFuel_complete",
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
  "slug": "normalizefuel-complete--19253b99aebd6295a2fff584",
  "source": {
    "blob": "7dbd1a80ec6af23fad2cb2b7d77ddf9e7ef96806",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 61,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variantbaafd6e66afc1a1a765229807d670d7b6f1a8dc67b46b4f194a764f501c20047.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19253b99aebd6295a2fff584bc451db89b477f3696a4f19fa78f20872280f5d3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variantbaafd6e66afc1a1a765229807d670d7b6f1a8dc67b46b4f194a764f501c20047.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2b5569e-c08a-2360-0b7d-e3bb44442a83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizeFuel_complete (source : AccessibleState S) (fuel : ℕ)
    (sufficient : height source ≤ fuel) :
    ∃ target, normalizeFuel fuel source.val = some target := by
  induction fuel generalizing source with
  | zero =>
      cases successors : next source.val with
      | nil => exact ⟨source.val, by simp [normalizeFuel, successors]⟩
      | cons target rest =>
          have reduction : Beta source.val target := next_sound (by simp [successors])
          let descendant : AccessibleState S := ⟨target, source.property.step reduction⟩
          have decrease : height descendant < height source :=
            (reducer S).height_decreases reduction
          omega
  | succ fuel ih =>
      cases successors : next source.val with
      | nil => exact ⟨source.val, by simp [normalizeFuel, successors]⟩
      | cons target rest =>
          have reduction : Beta source.val target := next_sound (by simp [successors])
          let descendant : AccessibleState S := ⟨target, source.property.step reduction⟩
          have decrease : height descendant < height source :=
            (reducer S).height_decreases reduction
          obtain ⟨normal, success⟩ := ih descendant (by omega)
          exact ⟨normal, by simpa [normalizeFuel, successors, descendant] using success⟩

/-- The supported executable strategy succeeds at the exact height, with all source semantics. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variantbaafd6e66afc1a1a765229807d670d7b6f1a8dc67b46b4f194a764f501c20047.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variantbaafd6e66afc1a1a765229807d670d7b6f1a8dc67b46b4f194a764f501c20047.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7dbd1a80ec6af23fad2cb2b7d77ddf9e7ef96806` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
