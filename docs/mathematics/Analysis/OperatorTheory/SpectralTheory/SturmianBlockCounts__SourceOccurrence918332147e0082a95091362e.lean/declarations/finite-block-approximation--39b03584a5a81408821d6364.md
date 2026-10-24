# finite_block_approximation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d83d9dfd-e714-f29e-fc26-bce3a4b48891",
  "kind": "theorem",
  "lexical_name": "finite_block_approximation",
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
  "slug": "finite-block-approximation--39b03584a5a81408821d6364",
  "source": {
    "blob": "0a4fbf9dc143de22ee202dbaa7940a35e2823d7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 169,
    "path": "GRWTSK/Spectral/SturmianBlockCounts.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39b03584a5a81408821d6364e7c4ddcd6dd62ca0bf79d5ef575ba87e83b29117",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d83d9dfd-e714-f29e-fc26-bce3a4b48891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_block_approximation (N L : ℕ) (hN : 0 < N) (hL : 0 < L)
    (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    |sturmianNormalizedCount N α V ξ origin E -
      blockCountSum (N/L) L α V ξ origin E / N| ≤ 2/(L:ℝ)+(L:ℝ)/N := by
  have hn : (0:ℝ) < N := Nat.cast_pos.mpr hN
  have hl : (0:ℝ) < L := Nat.cast_pos.mpr hL
  have hd : N/L*L+N%L = N := by
    simpa [Nat.mul_comm, Nat.add_comm] using Nat.mod_add_div N L
  have hq : (N/L:ℕ)*L ≤ N := by omega
  have hqr : ((N/L:ℕ):ℝ)*(L:ℝ) ≤ N := by exact_mod_cast hq
  have hqbound : (2*(N/L:ℕ):ℝ)/(N:ℝ) ≤ 2/(L:ℝ) := by
    apply (div_le_div_iff₀ hn hl).mpr
    nlinarith
  have hr : (N%L:ℕ) ≤ L := (Nat.mod_lt N hL).le
  have hrr : ((N%L:ℕ):ℝ) ≤ L := by exact_mod_cast hr
  have h := normalized_block_count_error (N/L) L (N%L) hL α V ξ origin E
  rw [hd] at h
  calc
    _ ≤ (2*(N/L:ℕ)+(N%L:ℕ):ℝ)/N := h
    _ = (2*(N/L:ℕ):ℝ)/N+(N%L:ℕ)/N := by rw [add_div]
    _ ≤ 2/(L:ℝ)+(L:ℝ)/N :=
      add_le_add hqbound (div_le_div_of_nonneg_right hrr hn.le)

end GRWTSK.Spectral.SturmianBlockCounts
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/SturmianBlockCounts__SourceOccurrence918332147e0082a95091362e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Spectral/SturmianBlockCounts.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a4fbf9dc143de22ee202dbaa7940a35e2823d7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
