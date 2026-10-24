# exists_reduced_fraction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f0e2455405c74d94054f265988fe06881776ed35",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 556,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a16f830f-c359-009f-bb20-8577b892e721",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18ad74a1-34c7-634a-d3f0-19f54168764d",
  "kind": "theorem",
  "lexical_name": "exists_reduced_fraction'",
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
  "slug": "exists-reduced-fraction--c721a9128b9169205f1b2c6f",
  "source": {
    "blob": "f0e2455405c74d94054f265988fe06881776ed35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 580,
    "line": 556,
    "path": "GRWTSK/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c721a9128b9169205f1b2c6fe491f7007be4c531ac24ca1ed50deb6e17f31087",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18ad74a1-34c7-634a-d3f0-19f54168764d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 556–580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_reduced_fraction' {b : B} (hb : b ≠ 0) (hx : Irreducible x) :
    ∃ (a : R) (n : ℤ), ¬x ∣ a ∧ selfZPow x B n * algebraMap R B a = b := by
  obtain ⟨⟨a₀, y⟩, H⟩ := surj (Submonoid.powers x) b
  obtain ⟨d, hy⟩ := (Submonoid.mem_powers_iff y.1 x).mp y.2
  have ha₀ : a₀ ≠ 0 := by
    haveI :=
      @isDomain_of_le_nonZeroDivisors B _ R _ _ _ (Submonoid.powers x) _
        (powers_le_nonZeroDivisors_of_noZeroDivisors hx.ne_zero)
    simp only [map_zero, ← hy, map_pow] at H
    apply ((injective_iff_map_eq_zero' (algebraMap R B)).mp _ a₀).mpr.mt
    · rw [← H]
      apply mul_ne_zero hb (pow_ne_zero _ _)
      exact
        IsLocalization.to_map_ne_zero_of_mem_nonZeroDivisors B
          (powers_le_nonZeroDivisors_of_noZeroDivisors hx.ne_zero)
          (mem_nonZeroDivisors_iff_ne_zero.mpr hx.ne_zero)
    · exact IsLocalization.injective B (powers_le_nonZeroDivisors_of_noZeroDivisors hx.ne_zero)
  simp only [← hy] at H
  obtain ⟨m, a, hyp1, hyp2⟩ := WfDvdMonoid.max_power_factor ha₀ hx
  refine ⟨a, m - d, ?_⟩
  rw [← mk'_one (M := Submonoid.powers x) B, selfZPow_pow_sub, selfZPow_natCast, selfZPow_natCast,
    ← map_pow _ _ d, mul_comm _ b, H, hyp2, map_mul, map_pow _ _ m]
  exact ⟨hyp1, congr_arg _ (IsLocalization.mk'_one _ _)⟩

end NumDen
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant1722eb36b6cc1a9ad48af900eb17ce5d445545c8b5aeccb3ead5bf03bec56380.lean#L556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0e2455405c74d94054f265988fe06881776ed35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
