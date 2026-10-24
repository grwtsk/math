# dyadicLowerEndpoint_eq_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b294c29763f539c0dfc7f8b272ed1fcac98ba8f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ddb98b0-775c-1944-a2e3-f72da212aad0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:370e4015-2389-ef50-d8f2-3af27d290d7f",
  "kind": "theorem",
  "lexical_name": "dyadicLowerEndpoint_eq_of_mem",
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
  "slug": "dyadiclowerendpoint-eq-of-mem--3678965f3d1cd41bcdfb7490",
  "source": {
    "blob": "b294c29763f539c0dfc7f8b272ed1fcac98ba8f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 66,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3678965f3d1cd41bcdfb7490461114a34a06a06a931eec7314c0269920f26577",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:370e4015-2389-ef50-d8f2-3af27d290d7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadicLowerEndpoint_eq_of_mem {n M : ℕ} (hn : 1 < n)
    (hpower : ∃ j : ℕ, M = 2 ^ j)
    (hmem : M < n ∧ n ≤ 2 * M) :
    dyadicLowerEndpoint n = M := by
  obtain ⟨j, rfl⟩ := hpower
  unfold dyadicLowerEndpoint
  have hlower : 2 ^ j ≤ n - 1 := by omega
  have hupper : n - 1 < 2 ^ (j + 1) := by
    rw [pow_succ']
    omega
  rw [Nat.log2_eq_log_two,
    Nat.log_eq_of_pow_le_of_lt_pow hlower hupper]

/-- A dyadic rectangle which actually meets the effective finite Type II
range.  `M` and `K` are canonical powers of two; the witnesses record one
effective pair in `(M,2M] × (K,2K]` whose product is at most `2N`.

The witnesses make irrelevant empty rectangles unrepresentable.  They carry
no analytic data and no bound beyond the literal finite support conditions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicBlocks/Variant28f52fab5d86fe783f4046f659ccbc3f23aac53e62ccf0d82911ea44f5001870.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b294c29763f539c0dfc7f8b272ed1fcac98ba8f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
