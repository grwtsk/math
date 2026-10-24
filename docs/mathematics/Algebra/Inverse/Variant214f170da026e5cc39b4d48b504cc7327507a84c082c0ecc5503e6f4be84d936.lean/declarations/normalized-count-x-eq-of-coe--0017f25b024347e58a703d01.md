# normalized_count_X_eq_of_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fda93c49-a3cc-4d7d-e944-db01c51f4e72",
  "kind": "theorem",
  "lexical_name": "normalized_count_X_eq_of_coe",
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
  "slug": "normalized-count-x-eq-of-coe--0017f25b024347e58a703d01",
  "source": {
    "blob": "f6c9bfbe4debd974f0326f69644ab5b7f2218d6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 348,
    "path": "GRWTSK/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0017f25b024347e58a703d019d19709f2c5d7e3eb69f6fad3e6f328473fa8dac",
  "verification": {
    "reference": "docs/verification/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fda93c49-a3cc-4d7d-e944-db01c51f4e72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_count_X_eq_of_coe {P : k[X]} (hP : P ≠ 0) :
    Multiset.count PowerSeries.X (normalizedFactors (P : k⟦X⟧)) =
      Multiset.count Polynomial.X (normalizedFactors P) := by
  apply eq_of_forall_le_iff
  simp only [← Nat.cast_le (α := ℕ∞)]
  rw [X_eq_normalize, PowerSeries.X_eq_normalizeX, ← emultiplicity_eq_count_normalizedFactors
    irreducible_X hP, ← emultiplicity_eq_count_normalizedFactors X_irreducible] <;>
  simp only [← pow_dvd_iff_le_emultiplicity, Polynomial.X_pow_dvd_iff,
    PowerSeries.X_pow_dvd_iff, Polynomial.coeff_coe P, implies_true, ne_eq, coe_eq_zero_iff, hP,
    not_false_eq_true]

open IsLocalRing

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Inverse/Variant214f170da026e5cc39b4d48b504cc7327507a84c082c0ecc5503e6f4be84d936.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6c9bfbe4debd974f0326f69644ab5b7f2218d6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
