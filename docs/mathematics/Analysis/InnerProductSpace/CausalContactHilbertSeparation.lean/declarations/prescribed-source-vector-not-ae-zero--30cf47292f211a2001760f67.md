# prescribed_source_vector_not_ae_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ea391f6-4e9e-ef66-07ec-011a749d33ab",
  "kind": "theorem",
  "lexical_name": "prescribed_source_vector_not_ae_zero",
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
  "slug": "prescribed-source-vector-not-ae-zero--30cf47292f211a2001760f67",
  "source": {
    "blob": "c648cf161235be6f8a319980ba9adea4614e3487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 34,
    "path": "GRWTSK/Analysis/InnerProductSpace/CausalContactHilbertSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30cf47292f211a2001760f67a3cb8ba70a37d28c3fa3588da66106c8334225ff",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/CausalContactHilbertSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ea391f6-4e9e-ef66-07ec-011a749d33ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prescribed_source_vector_not_ae_zero {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 1 ≤ n) :
    ¬ SourceGram.sourceVector A n =ᵐ[volume] (0 : ℝ → ℝ) := by
  intro isZero
  have positive : 0 < n := lt_of_lt_of_le Nat.zero_lt_one hn
  have unit := SourceGram.source_gram_diagonal_eq_one hA n
  rw [SourceGram.source_gram_eq_integral positive positive] at unit
  have integralZero : (∫ x : ℝ, SourceGram.sourceVector A n x *
      SourceGram.sourceVector A n x) = 0 := by
    calc
      _ = ∫ _x : ℝ, (0 : ℝ) := by
        apply integral_congr_ae
        filter_upwards [isZero] with x hx
        simp only [Pi.zero_apply] at hx
        rw [hx, zero_mul]
      _ = 0 := by simp
  rw [integralZero] at unit
  norm_num at unit

/-- The full contacting native feature, admitted to the actual Lebesgue L2 space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/CausalContactHilbertSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/CausalContactHilbertSeparation.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c648cf161235be6f8a319980ba9adea4614e3487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
