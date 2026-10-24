# full_error_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c77ea68-fcaf-37d8-f84b-a7ee3587119e",
  "kind": "theorem",
  "lexical_name": "full_error_identity",
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
  "slug": "full-error-identity--cf2d9cde96c9bd911fedf40a",
  "source": {
    "blob": "d050e9e8b474c2e589b725ed79ecc1fdc00f6753",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 78,
    "path": "GRWTSK/Analysis/Complex/RationalTaylorSeedNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf2d9cde96c9bd911fedf40aebf1106403ebc800b7224a68e0f9ec0a6e51475b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c77ea68-fcaf-37d8-f84b-a7ee3587119e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_error_identity (a : QComplex) (R δ : ℚ) (j : ℕ) :
    fullError a R δ j = (errorNum a R δ j : ℚ) / (errorDen a R δ j : ℚ) := by
  have hC : (seedDen a j : ℚ) ≠ 0 := by exact_mod_cast (ne_of_gt (seedDen_pos a j))
  have hR : (R.den : ℚ) ≠ 0 := by exact_mod_cast Rat.den_ne_zero R
  have hδ : (δ.den : ℚ) ≠ 0 := by exact_mod_cast Rat.den_ne_zero δ
  have hF : ((j + 1).factorial : ℚ) ≠ 0 := by exact_mod_cast Nat.factorial_ne_zero (j + 1)
  have eR : (R.num : ℚ) = R * (R.den : ℚ) := (div_eq_iff hR).mp (Rat.num_div_den R)
  have eδ : (δ.num : ℚ) = δ * (δ.den : ℚ) := (div_eq_iff hδ).mp (Rat.num_div_den δ)
  unfold fullError
  rw [polynomial_identity, rect_decode _ (seedDen_pos a j)]
  simp only [errorNum, errorDen, tailNum, tailDen, Int.cast_add, Int.cast_mul,
    Int.cast_pow, Int.cast_ofNat, Int.cast_natCast, eR, eδ]
  field_simp [hC, hR, hδ, hF] <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalTaylorSeedNormalization.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d050e9e8b474c2e589b725ed79ecc1fdc00f6753` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
