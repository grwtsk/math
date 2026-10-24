# sum_condensed_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4dc8f842-4172-94ef-cb48-5db8155dd911",
  "kind": "theorem",
  "lexical_name": "sum_condensed_le'",
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
  "slug": "sum-condensed-le--d8ef7dcc84bcbcd9ed2140d3",
  "source": {
    "blob": "d5eeae7a0f8be1a888dbb4f710db6cec92c01536",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 79,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variant25d3744fd384549c34c55f96a9106132e18afaa17d1ae71f8311f9ba90039d0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8ef7dcc84bcbcd9ed2140d33097d8eb6b05345faee6b23c48d3c72b8acbf7aa",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PSeries/Variant25d3744fd384549c34c55f96a9106132e18afaa17d1ae71f8311f9ba90039d0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4dc8f842-4172-94ef-cb48-5db8155dd911`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_condensed_le' (hf : ∀ ⦃m n⦄, 1 < m → m ≤ n → f n ≤ f m) (n : ℕ) :
    (∑ k in range n, 2 ^ k • f (2 ^ (k + 1))) ≤ ∑ k in Ico 2 (2 ^ n + 1), f k := by
  induction' n with n ihn
  · simp
  suffices 2 ^ n • f (2 ^ (n + 1)) ≤ ∑ k in Ico (2 ^ n + 1) (2 ^ (n + 1) + 1), f k by
    rw [sum_range_succ, ← sum_Ico_consecutive]
    exacts [add_le_add ihn this,
      (add_le_add_right n.one_le_two_pow _ : 1 + 1 ≤ 2 ^ n + 1),
      add_le_add_right (Nat.pow_le_pow_of_le_right zero_lt_two n.le_succ) _]
  have : ∀ k ∈ Ico (2 ^ n + 1) (2 ^ (n + 1) + 1), f (2 ^ (n + 1)) ≤ f k := fun k hk =>
    hf (n.one_le_two_pow.trans_lt <| (Nat.lt_succ_of_le le_rfl).trans_le (mem_Ico.mp hk).1)
      (Nat.le_of_lt_succ <| (mem_Ico.mp hk).2)
  convert sum_le_sum this
  simp [pow_succ, two_mul]
#align finset.sum_condensed_le' Finset.sum_condensed_le'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PSeries/Variant25d3744fd384549c34c55f96a9106132e18afaa17d1ae71f8311f9ba90039d0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variant25d3744fd384549c34c55f96a9106132e18afaa17d1ae71f8311f9ba90039d0d.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5eeae7a0f8be1a888dbb4f710db6cec92c01536` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
