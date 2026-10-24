# finiteSquarefreeDensity_two_error_le_half_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:360f81d3-56fe-673b-a53a-f447c641f78a",
  "kind": "theorem",
  "lexical_name": "finiteSquarefreeDensity_two_error_le_half_cutoff",
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
  "slug": "finitesquarefreedensity-two-error-le-half-cutoff--1f0d03421ebae7d1fd1bb072",
  "source": {
    "blob": "251abac54e2e3e1f46d1c8aeba505e573b24fe69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 138,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variant38dde232ed0eb5abac5daca1b422e86b0155b0cba37ee7840f7496d45b2a3bc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f0d03421ebae7d1fd1bb0720c4142545450b16a2f8f917b332d16603299f97d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variant38dde232ed0eb5abac5daca1b422e86b0155b0cba37ee7840f7496d45b2a3bc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:360f81d3-56fe-673b-a53a-f447c641f78a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteSquarefreeDensity_two_error_le_half_cutoff (h D : ℕ)
    (hh : Nat.Coprime 2 h) (hh1 : 1 ≤ h) (hD : 2 ≤ D) :
    |SquarefreeCount.finiteSquarefreeDensity (2 * h) D -
      (2 / 3 : ℝ) * SquarefreeCount.finiteSquarefreeDensity h D| ≤
      1 / (6 * (D / 2 : ℕ)) := by
  rw [finiteSquarefreeDensity_two_error_eq h D hh, abs_mul, abs_neg,
    abs_of_nonneg (div_nonneg (CoprimeCount.coprimeDensity_nonneg h hh1) (by norm_num))]
  have hcoeff : CoprimeCount.coprimeDensity h / 6 ≤ (1/6:ℝ) := by
    exact div_le_div_of_nonneg_right (CoprimeCount.coprimeDensity_le_one h hh1) (by norm_num)
  calc
    _ ≤ (1/6:ℝ)*(1/(D/2:ℕ)) := mul_le_mul hcoeff
      (coprimeReciprocalSquareSum_tail_abs_le (2*h) (D/2) D (by omega)
        (Nat.div_le_self D 2)) (abs_nonneg _) (by norm_num)
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variant38dde232ed0eb5abac5daca1b422e86b0155b0cba37ee7840f7496d45b2a3bc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variant38dde232ed0eb5abac5daca1b422e86b0155b0cba37ee7840f7496d45b2a3bc1.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `251abac54e2e3e1f46d1c8aeba505e573b24fe69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
