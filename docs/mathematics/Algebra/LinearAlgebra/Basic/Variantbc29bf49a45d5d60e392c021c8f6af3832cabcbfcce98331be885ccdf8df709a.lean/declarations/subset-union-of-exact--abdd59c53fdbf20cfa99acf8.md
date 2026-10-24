# subset_union_of_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:707347b8-fee1-71f9-d62c-57738e148899",
  "kind": "theorem",
  "lexical_name": "subset_union_of_exact",
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
  "slug": "subset-union-of-exact--abdd59c53fdbf20cfa99acf8",
  "source": {
    "blob": "7bdf7a22ef78a3f6d67f2d50b8e0a760eead91b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 176,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abdd59c53fdbf20cfa99acf8dec36373f9afb7a1ef274bfeee9c469ddff7ec83",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:707347b8-fee1-71f9-d62c-57738e148899`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_union_of_exact (hf : Function.Injective f) (hfg : Function.Exact f g) :
    associatedPrimes R M' ⊆ associatedPrimes R M ∪ associatedPrimes R M'' := by
  rintro p ⟨_, x, hx⟩
  by_cases! h : ∃ a ∈ p.primeCompl, ∃ y : M, ∃ k, f y = a ^ k • x
  · obtain ⟨a, ha, y, k, h⟩ := h
    left
    refine ⟨‹_›, y, le_antisymm (fun b hb ↦ ?_) (fun b ⟨n, hb⟩ ↦ ?_)⟩
    · rw [hx] at hb
      obtain ⟨n, hb⟩ := hb
      use n
      rw [mem_colon_singleton, mem_bot] at hb ⊢
      apply_fun _ using hf
      rw [map_smul, h, smul_comm, hb, smul_zero, map_zero]
    · rw [mem_colon_singleton, mem_bot] at hb
      apply_fun f at hb
      rw [map_smul, map_zero, h, ← mul_smul, ← mem_bot R, ← mem_colon_singleton] at hb
      replace hb := hx.ge (Ideal.le_radical hb)
      contrapose hb
      exact p.primeCompl.mul_mem (p.primeCompl.pow_mem hb n) (p.primeCompl.pow_mem ha k)
  · right
    refine ⟨‹_›, g x, le_antisymm (fun b hb ↦ ?_) (fun b ⟨n, hb⟩ ↦ ?_)⟩
    · rw [hx] at hb
      refine Ideal.radical_mono (fun b hb ↦ ?_) hb
      rw [mem_colon_singleton, mem_bot] at hb ⊢
      rw [← map_smul, hb, map_zero]
    · rw [mem_colon_singleton, mem_bot, ← map_smul, ← LinearMap.mem_ker,
        hfg.linearMap_ker_eq] at hb
      obtain ⟨y, hy⟩ := hb
      by_contra H
      exact h b H y n hy

variable (R M M') in
/-- The set of associated primes of the product of two modules is equal to
the union of those of the two modules. -/
@[stacks 02M3 "third part"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bdf7a22ef78a3f6d67f2d50b8e0a760eead91b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
