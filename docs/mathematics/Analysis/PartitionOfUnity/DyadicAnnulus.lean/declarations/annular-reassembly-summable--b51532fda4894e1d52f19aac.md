# annular_reassembly_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4054fcc0-b250-b0e4-20bf-c35446a031db",
  "kind": "theorem",
  "lexical_name": "annular_reassembly_summable",
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
  "slug": "annular-reassembly-summable--b51532fda4894e1d52f19aac",
  "source": {
    "blob": "1f56668e34261d00fba8c2a21fb758a973e62aab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 111,
    "path": "GRWTSK/Analysis/PartitionOfUnity/DyadicAnnulus.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b51532fda4894e1d52f19aac9d606932e3a12cc046bb62198ed6e3bcadb99ba0",
  "verification": {
    "reference": "docs/verification/Analysis/PartitionOfUnity/DyadicAnnulus.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4054fcc0-b250-b0e4-20bf-c35446a031db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem annular_reassembly_summable {α : Type*} (a : α → ℂ) (N : α → ℝ)
    (ha : Summable a) (hN : ∀ p, a p ≠ 0 → 1 ≤ N p) :
    Summable (fun q : α × ℕ => dyadicAnnulus (N q.1/(2:ℝ)^q.2)*a q.1) := by
  have hs (p : α) : HasSum (fun j : ℕ => ‖dyadicAnnulus (N p/(2:ℝ)^j)*a p‖) ‖a p‖ := by
    by_cases hp : a p = 0
    · simp only [hp, mul_zero, norm_zero]
      exact hasSum_zero
    · simpa only [norm_mul, one_mul] using (dyadicAnnulus_partition_norm (N p) (hN p hp)).mul_right ‖a p‖
  apply Summable.of_norm
  apply (summable_prod_of_nonneg (fun _ => norm_nonneg _)).mpr
  exact ⟨fun p => (hs p).summable, by simpa only [fun p => (hs p).tsum_eq] using ha.norm⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PartitionOfUnity/DyadicAnnulus.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PartitionOfUnity/DyadicAnnulus.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f56668e34261d00fba8c2a21fb758a973e62aab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
