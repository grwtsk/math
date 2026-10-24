# _root_.GRWTSK.Algebra.GroupTheory.CycleType.Variantd823183fb29ff25400c8cfae74ec78363b68326b5ba0ba0929285e73cc9d6a68.card_support_eq_three_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32d85ae2-efd4-2051-22e2-34d75fe3dcbf",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.CycleType.Variantd823183fb29ff25400c8cfae74ec78363b68326b5ba0ba0929285e73cc9d6a68.card_support_eq_three_iff",
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
  "slug": "root-grwtsk-algebra-grouptheory-cycletype-variantd823183fb29ff25400c8cfa--304e3fe4d61c86c055f334df",
  "source": {
    "blob": "0044cc4dfb35333e8503f3a9912f0aeebf5bc7aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 621,
    "line": 608,
    "path": "GRWTSK/Algebra/GroupTheory/Type/Variant53da8484eb9a6767cb40cb8af7c6b7d620597dc47a2ce0ab5a2f1c5c2315a7fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:304e3fe4d61c86c055f334df42aca6d14232eb3bceac59070f37f70b8d6debb0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Type/Variant53da8484eb9a6767cb40cb8af7c6b7d620597dc47a2ce0ab5a2f1c5c2315a7fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32d85ae2-efd4-2051-22e2-34d75fe3dcbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 608–621.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GroupTheory.CycleType.Variantd823183fb29ff25400c8cfae74ec78363b68326b5ba0ba0929285e73cc9d6a68.card_support_eq_three_iff : #σ.support = 3 ↔ σ.IsThreeCycle := by
  refine ⟨fun h => ?_, IsThreeCycle.card_support⟩
  by_cases h0 : σ.cycleType = 0
  · rw [← sum_cycleType, h0, sum_zero] at h
    exact (ne_of_lt zero_lt_three h).elim
  obtain ⟨n, hn⟩ := exists_mem_of_ne_zero h0
  by_cases h1 : σ.cycleType.erase n = 0
  · rw [← sum_cycleType, ← cons_erase hn, h1, cons_zero, Multiset.sum_singleton] at h
    rw [IsThreeCycle, ← cons_erase hn, h1, h, ← cons_zero]
  obtain ⟨m, hm⟩ := exists_mem_of_ne_zero h1
  rw [← sum_cycleType, ← cons_erase hn, ← cons_erase hm, Multiset.sum_cons, Multiset.sum_cons] at h
  have : ∀ {k}, 2 ≤ m → 2 ≤ n → n + (m + k) = 3 → False := by omega
  cases this (two_le_of_mem_cycleType (mem_of_mem_erase hm)) (two_le_of_mem_cycleType hn) h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Type/Variant53da8484eb9a6767cb40cb8af7c6b7d620597dc47a2ce0ab5a2f1c5c2315a7fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Type/Variant53da8484eb9a6767cb40cb8af7c6b7d620597dc47a2ce0ab5a2f1c5c2315a7fa.lean#L608).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0044cc4dfb35333e8503f3a9912f0aeebf5bc7aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
