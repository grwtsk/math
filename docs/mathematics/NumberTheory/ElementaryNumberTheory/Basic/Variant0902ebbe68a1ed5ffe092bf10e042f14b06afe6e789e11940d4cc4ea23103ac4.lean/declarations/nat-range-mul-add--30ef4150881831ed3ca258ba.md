# Nat.range_mul_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:278098a2-93ec-5722-e19d-1b1eea41b436",
  "kind": "lemma",
  "lexical_name": "Nat.range_mul_add",
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
  "slug": "nat-range-mul-add--30ef4150881831ed3ca258ba",
  "source": {
    "blob": "ce55d9d4545548f1af235ca01c960aab74f90e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1286,
    "line": 1274,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant0902ebbe68a1ed5ffe092bf10e042f14b06afe6e789e11940d4cc4ea23103ac4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30ef4150881831ed3ca258ba1a5516c2a08cbd5fc29377ea836ab12c8146f6fb",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant0902ebbe68a1ed5ffe092bf10e042f14b06afe6e789e11940d4cc4ea23103ac4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:278098a2-93ec-5722-e19d-1b1eea41b436`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1274–1286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Nat.range_mul_add (m k : ℕ) :
    Set.range (fun n : ℕ ↦ m * n + k) = {n : ℕ | (n : ZMod m) = k ∧ k ≤ n} := by
  ext n
  simp only [Set.mem_range, Set.mem_setOf_eq]
  conv => enter [1, 1, y]; rw [add_comm, eq_comm]
  refine ⟨fun ⟨a, ha⟩ ↦ ⟨?_, le_iff_exists_add.mpr ⟨_, ha⟩⟩, fun ⟨H₁, H₂⟩ ↦ ?_⟩
  · simpa using congr_arg ((↑) : ℕ → ZMod m) ha
  · obtain ⟨a, ha⟩ := le_iff_exists_add.mp H₂
    simp only [ha, Nat.cast_add, add_eq_left, ZMod.natCast_zmod_eq_zero_iff_dvd] at H₁
    obtain ⟨b, rfl⟩ := H₁
    exact ⟨b, ha⟩

/-- Equivalence between `ℕ` and `ZMod N × ℕ`, sending `n` to `(n mod N, n / N)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant0902ebbe68a1ed5ffe092bf10e042f14b06afe6e789e11940d4cc4ea23103ac4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant0902ebbe68a1ed5ffe092bf10e042f14b06afe6e789e11940d4cc4ea23103ac4.lean#L1274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce55d9d4545548f1af235ca01c960aab74f90e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
