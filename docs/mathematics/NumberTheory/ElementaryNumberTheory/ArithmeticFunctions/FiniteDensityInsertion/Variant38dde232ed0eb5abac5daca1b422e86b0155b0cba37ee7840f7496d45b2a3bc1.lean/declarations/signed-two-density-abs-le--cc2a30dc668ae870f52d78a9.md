# signed_two_density_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6613ea9-f100-ad7d-9526-b4fc64c0c14d",
  "kind": "theorem",
  "lexical_name": "signed_two_density_abs_le",
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
  "slug": "signed-two-density-abs-le--cc2a30dc668ae870f52d78a9",
  "source": {
    "blob": "251abac54e2e3e1f46d1c8aeba505e573b24fe69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 196,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variant38dde232ed0eb5abac5daca1b422e86b0155b0cba37ee7840f7496d45b2a3bc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc2a30dc668ae870f52d78a91be6e361e40b631538bda82b596c0389334bae09",
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

Occurrence: `result:a6613ea9-f100-ad7d-9526-b4fc64c0c14d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_two_density_abs_le (h D : ℕ) (hh : Nat.Coprime 2 h)
    (hh1 : 1 ≤ h) (hD : 2 ≤ D) :
    |SquarefreeCount.finiteSquarefreeDensity h D -
      Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) D| ≤
      (1/16:ℝ) * |SquarefreeCount.finiteSquarefreeDensity h D| +
      Real.sqrt 2 / (2 * (D:ℝ)) := by
  calc
    _ ≤ |twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h D| +
        |SquarefreeCount.finiteSquarefreeDensity h D -
          Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) D -
          twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h D| := by
      convert abs_add_le
        (twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h D)
        (SquarefreeCount.finiteSquarefreeDensity h D -
          Real.sqrt 2 * SquarefreeCount.finiteSquarefreeDensity (2*h) D -
          twoDensityFactor * SquarefreeCount.finiteSquarefreeDensity h D) using 1
      congr 1
      ring
    _ ≤ _ := by
      rw [abs_mul, abs_of_nonneg twoDensityFactor_bounds.1]
      exact add_le_add (mul_le_mul_of_nonneg_right twoDensityFactor_bounds.2 (abs_nonneg _))
        (signed_two_density_error_le h D hh hh1 hD)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variant38dde232ed0eb5abac5daca1b422e86b0155b0cba37ee7840f7496d45b2a3bc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variant38dde232ed0eb5abac5daca1b422e86b0155b0cba37ee7840f7496d45b2a3bc1.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `251abac54e2e3e1f46d1c8aeba505e573b24fe69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
