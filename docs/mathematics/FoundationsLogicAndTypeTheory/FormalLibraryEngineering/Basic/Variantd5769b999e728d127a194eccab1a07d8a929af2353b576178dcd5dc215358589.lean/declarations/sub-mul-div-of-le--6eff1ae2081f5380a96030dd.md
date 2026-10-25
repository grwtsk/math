# sub_mul_div_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d07890b1-5171-4594-d683-3ffb6803e0dd",
  "kind": "theorem",
  "lexical_name": "sub_mul_div_of_le",
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
  "slug": "sub-mul-div-of-le--6eff1ae2081f5380a96030dd",
  "source": {
    "blob": "81b5e4d5bd290a781d727afc0dafbb7c2fec6c4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 373,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd5769b999e728d127a194eccab1a07d8a929af2353b576178dcd5dc215358589.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6eff1ae2081f5380a96030ddf6c15919fd7148e9f39812448e7fadf85afaf969",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd5769b999e728d127a194eccab1a07d8a929af2353b576178dcd5dc215358589.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d07890b1-5171-4594-d683-3ffb6803e0dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sub_mul_div_of_le (x n p : Nat) (h₁ : n*p ≤ x) : (x - n*p) / n = x / n - p := by
  match eq_zero_or_pos n with
  | .inl h₀ => rw [h₀, Nat.div_zero, Nat.div_zero, Nat.zero_sub]
  | .inr h₀ => induction p with
    | zero => rw [Nat.mul_zero, Nat.sub_zero, Nat.sub_zero]
    | succ p IH =>
      have h₂ : n * p ≤ x := Nat.le_trans (Nat.mul_le_mul_left _ (le_succ _)) h₁
      have h₃ : x - n * p ≥ n := by
        apply Nat.le_of_add_le_add_right
        rw [Nat.sub_add_cancel h₂, Nat.add_comm]
        rw [mul_succ] at h₁
        exact h₁
      rw [sub_succ, ← IH h₂, div_eq_sub_div h₀ h₃]
      simp [mul_succ, Nat.sub_sub]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd5769b999e728d127a194eccab1a07d8a929af2353b576178dcd5dc215358589.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd5769b999e728d127a194eccab1a07d8a929af2353b576178dcd5dc215358589.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81b5e4d5bd290a781d727afc0dafbb7c2fec6c4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
