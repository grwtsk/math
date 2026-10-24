# triangularHarmonicTailMajorant_le_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2623953d-b512-8d9c-06ce-15daf856c484",
  "kind": "theorem",
  "lexical_name": "triangularHarmonicTailMajorant_le_log",
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
  "slug": "triangularharmonictailmajorant-le-log--6a80ec8dcc73509afaef34d9",
  "source": {
    "blob": "e53971e909952315398ec6b560ab5dba8c8ea46b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 36,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHarmonicTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a80ec8dcc73509afaef34d9394862b80c2e18cbd484e1df439be1ec50e364c5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHarmonicTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2623953d-b512-8d9c-06ce-15daf856c484`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem triangularHarmonicTailMajorant_le_log
    {C : ℝ} (hC : 0 ≤ C)
    {X N : ℕ} (hX : 0 < X) (hN : 0 < N) :
    triangularHarmonicTailMajorant C X N ≤
      C * ((X : ℝ) / (N : ℝ)) *
        Real.log ((4 * X : ℕ) : ℝ) *
        (1 + Real.log (X : ℝ)) := by
  unfold triangularHarmonicTailMajorant
  have hh := harmonic_le_one_add_log X
  have hXcast : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
  have hNcast : (0 : ℝ) < (N : ℝ) := by exact_mod_cast hN
  have hlog4X :
      0 ≤ Real.log ((4 * X : ℕ) : ℝ) := by
    apply Real.log_nonneg
    exact_mod_cast (by omega : 1 ≤ 4 * X)
  have hpref :
      0 ≤ C * ((X : ℝ) / (N : ℝ)) *
        Real.log ((4 * X : ℕ) : ℝ) := by
    positivity
  exact mul_le_mul_of_nonneg_left hh hpref

/-- Balanced cutoff used by the smoothing heuristic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHarmonicTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularHarmonicTail.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e53971e909952315398ec6b560ab5dba8c8ea46b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
