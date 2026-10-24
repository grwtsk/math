# primeHarmonicPrefix_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f76186c9f6d7aa9724f2adaf5fdf3b5a8953482",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:578dbfb9-ec19-7342-5713-60662662587d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1725968-4387-8ce4-44b2-d4e12bdc4686",
  "kind": "theorem",
  "lexical_name": "primeHarmonicPrefix_eq",
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
  "slug": "primeharmonicprefix-eq--04f2d92bb8949a8709272c4a",
  "source": {
    "blob": "7f76186c9f6d7aa9724f2adaf5fdf3b5a8953482",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04f2d92bb8949a8709272c4a6fe7aad96685fe69177c2b39659bfa92e3a11956",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1725968-4387-8ce4-44b2-d4e12bdc4686`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem primeHarmonicPrefix_eq (u : ℝ) :
    primeHarmonicPrefix u =
      ∑ n ∈ Finset.Icc 0 ⌊Real.exp u⌋₊, (n : ℝ)⁻¹ * primeWeight n := by
  rw [primeHarmonicPrefix]
  calc
    _ = ∑ n ∈ (Finset.Icc 2 ⌊Real.exp u⌋₊).filter Nat.Prime,
        (n : ℝ)⁻¹ * Real.log (n : ℝ) := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [ArithmeticFunction.vonMangoldt_apply_prime (Finset.mem_filter.mp hn).2]
      ring
    _ = ∑ n ∈ (Finset.Icc 0 ⌊Real.exp u⌋₊).filter Nat.Prime,
        (n : ℝ)⁻¹ * Real.log (n : ℝ) := by
      apply Finset.sum_subset
      · intro n hn
        obtain ⟨hn, hp⟩ := Finset.mem_filter.mp hn
        exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr
          ⟨Nat.zero_le n, (Finset.mem_Icc.mp hn).2⟩, hp⟩
      · intro n hn hn'
        obtain ⟨hn, hp⟩ := Finset.mem_filter.mp hn
        exact False.elim (hn' (Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr
          ⟨hp.two_le, (Finset.mem_Icc.mp hn).2⟩, hp⟩))
    _ = _ := by
      rw [Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro n _
      simp only [primeWeight]
      split_ifs <;> simp

/-- The reciprocal-square theta integral is genuinely integrable on each finite interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f76186c9f6d7aa9724f2adaf5fdf3b5a8953482` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
