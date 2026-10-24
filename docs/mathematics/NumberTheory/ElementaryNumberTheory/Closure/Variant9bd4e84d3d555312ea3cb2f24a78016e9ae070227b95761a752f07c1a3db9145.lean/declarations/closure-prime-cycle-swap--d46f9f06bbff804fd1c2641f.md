# closure_prime_cycle_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7241cf83970080acb889cb8d2e7649b6b17191b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9bd4e84d3d555312ea3cb2f24a78016e9ae070227b95761a752f07c1a3db9145.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38f26c80-e82a-3bb7-86d2-4134ad9229d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d88e5150-8c86-ded9-e976-8391d67af4c5",
  "kind": "theorem",
  "lexical_name": "closure_prime_cycle_swap",
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
  "slug": "closure-prime-cycle-swap--d46f9f06bbff804fd1c2641f",
  "source": {
    "blob": "7241cf83970080acb889cb8d2e7649b6b17191b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 108,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Closure/Variant9bd4e84d3d555312ea3cb2f24a78016e9ae070227b95761a752f07c1a3db9145.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d46f9f06bbff804fd1c2641f6ac8db7af50e11a62f9e1fa1ceeaa890cff09603",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Closure/Variant9bd4e84d3d555312ea3cb2f24a78016e9ae070227b95761a752f07c1a3db9145.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d88e5150-8c86-ded9-e976-8391d67af4c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_prime_cycle_swap {σ τ : Perm α} (h0 : (Fintype.card α).Prime) (h1 : IsCycle σ)
    (h2 : σ.support = Finset.univ) (h3 : IsSwap τ) : closure ({σ, τ} : Set (Perm α)) = ⊤ := by
  obtain ⟨x, y, h4, h5⟩ := h3
  obtain ⟨i, hi⟩ :=
    h1.exists_pow_eq (mem_support.mp ((Finset.ext_iff.mp h2 x).mpr (Finset.mem_univ x)))
      (mem_support.mp ((Finset.ext_iff.mp h2 y).mpr (Finset.mem_univ y)))
  rw [h5, ← hi]
  refine closure_cycle_coprime_swap
    (Nat.Coprime.symm (h0.coprime_iff_not_dvd.mpr fun h => h4 ?_)) h1 h2 x
  obtain ⟨m, hm⟩ := h
  rwa [hm, pow_mul, ← Finset.card_univ, ← h2, ← h1.orderOf, pow_orderOf_eq_one, one_pow,
    one_apply] at hi

end Generation

end Perm

end Equiv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Closure/Variant9bd4e84d3d555312ea3cb2f24a78016e9ae070227b95761a752f07c1a3db9145.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Closure/Variant9bd4e84d3d555312ea3cb2f24a78016e9ae070227b95761a752f07c1a3db9145.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7241cf83970080acb889cb8d2e7649b6b17191b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
