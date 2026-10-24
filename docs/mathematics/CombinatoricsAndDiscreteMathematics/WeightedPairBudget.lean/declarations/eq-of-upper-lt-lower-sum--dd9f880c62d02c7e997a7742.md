# eq_of_upper_lt_lower_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ef87f1f-aac8-9e0f-bc76-1a9c8ff09308",
  "kind": "theorem",
  "lexical_name": "eq_of_upper_lt_lower_sum",
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
  "slug": "eq-of-upper-lt-lower-sum--dd9f880c62d02c7e997a7742",
  "source": {
    "blob": "973a7b477216f2b15197564142e860e45032035f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 47,
    "path": "GRWTSK/Combinatorics/WeightedPairBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd9f880c62d02c7e997a7742e699b559343e64f43b702d573e9568d394822fd3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ef87f1f-aac8-9e0f-bc76-1a9c8ff09308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_upper_lt_lower_sum [DecidableEq α]
    (S : Finset α) (weight : α → ℕ) (a b : α) (left right upper : ℕ)
    (ha : a ∈ S) (hb : b ∈ S)
    (leftBound : left ≤ weight a) (rightBound : right ≤ weight b)
    (totalBound : mass S weight ≤ upper) (strict : upper < left + right) : a = b := by
  by_contra distinct
  have lower : left + right ≤ upper :=
    (Nat.add_le_add leftBound rightBound).trans
      ((pair_le_mass S weight a b ha hb distinct).trans totalBound)
  exact (not_le_of_gt strict) lower

/-- A common lower bound is a specialization, not a proof that the weights agree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/WeightedPairBudget.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `973a7b477216f2b15197564142e860e45032035f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
