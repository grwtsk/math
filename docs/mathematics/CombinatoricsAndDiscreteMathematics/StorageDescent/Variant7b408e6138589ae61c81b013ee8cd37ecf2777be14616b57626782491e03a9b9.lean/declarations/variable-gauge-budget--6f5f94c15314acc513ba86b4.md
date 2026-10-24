# variable_gauge_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd32cf55-8017-cd64-2eb4-f57038151030",
  "kind": "theorem",
  "lexical_name": "variable_gauge_budget",
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
  "slug": "variable-gauge-budget--6f5f94c15314acc513ba86b4",
  "source": {
    "blob": "7f585589d21b8675c94607c350665e75ee527c59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 128,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f5f94c15314acc513ba86b44a61e7f5b6b37516d1ee5c90453927dee7c87c2a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd32cf55-8017-cd64-2eb4-f57038151030`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem variable_gauge_budget (L : LocalStorage X I) (b : I → X → ℝ)
    (overlap : ∀ i j x, x ∈ L.domain i → x ∈ L.domain j →
      L.value j x - L.value i x = b j x - b i x)
    (i : ℕ → I) (x : ℕ → X) (c r : ℕ → ℝ) (N : ℕ)
    (blocks : ∀ k < N, x k ∈ L.domain (i k) ∧ x (k + 1) ∈ L.domain (i k))
    (hc : ∀ k < N, c k ≤ L.value (i k) (x k) - L.value (i k) (x (k + 1)) + r k) :
    ∑ k ∈ Finset.range N, c k ≤ L.global b (x 0) - L.global b (x N) +
      ∑ k ∈ Finset.range N, (r k + b (i k) (x k) - b (i k) (x (k + 1))) := by
  apply terminal_budget
  intro k hk
  rw [L.global_eq _ overlap (blocks k hk).1,
    L.global_eq _ overlap (blocks k hk).2]
  linarith [hc k hk]

/-- Product jumps include the cross increment, even at reset events. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/StorageDescent/Variant7b408e6138589ae61c81b013ee8cd37ecf2777be14616b57626782491e03a9b9.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f585589d21b8675c94607c350665e75ee527c59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
