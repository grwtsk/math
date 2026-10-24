# freyPrimitiveRepresentative_reconstruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da209241-4445-fcaf-6fbc-2c80a06a50d7",
  "kind": "theorem",
  "lexical_name": "freyPrimitiveRepresentative_reconstruct",
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
  "slug": "freyprimitiverepresentative-reconstruct--1dff18786f1a962f78a89fc8",
  "source": {
    "blob": "66daa33898476c13817eedf6fb11ec9ac4d2e3c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 45,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dff18786f1a962f78a89fc8784a938ffd435b9790ea9a3f44de63f456502693",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da209241-4445-fcaf-6fbc-2c80a06a50d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem freyPrimitiveRepresentative_reconstruct
    (w : FreyRationalSectionCoordinates) :
    w = freyRepresentativeScale w •
      freySectionCoordinatesToRat (freyPrimitiveRepresentative w) := by
  by_cases h0 : w 0 = 0
  · ext i
    fin_cases i <;>
      simp [freyPrimitiveRepresentative, freyRepresentativeScale,
        freySectionCoordinatesToRat, h0]
  · let q : ℚ := w 1 / w 0
    have hd : (q.den : ℚ) ≠ 0 := by exact_mod_cast q.den_nz
    have hr : (q.num : ℚ) / (q.den : ℚ) = q := q.num_div_den
    ext i
    fin_cases i
    · simp only [freyPrimitiveRepresentative, freyRepresentativeScale,
        if_neg h0, freySectionCoordinatesToRat, Pi.smul_apply,
        smul_eq_mul, Matrix.cons_val_zero, Int.cast_natCast]
      exact (div_mul_cancel₀ (w 0) hd).symm
    · change w 1 = freyRepresentativeScale w *
        ((freyPrimitiveRepresentative w 1 : ℤ) : ℚ)
      simp only [freyPrimitiveRepresentative, freyRepresentativeScale,
        if_neg h0, Matrix.cons_val_one, Matrix.cons_val_zero]
      change w 1 = (w 0 / (q.den : ℚ)) * (q.num : ℚ)
      calc
        w 1 = w 0 * q := by dsimp [q]; field_simp [h0] <;> ring
        _ = w 0 * ((q.num : ℚ) / (q.den : ℚ)) := by rw [hr]
        _ = (w 0 / (q.den : ℚ)) * (q.num : ℚ) := by ring

/-- Nonzero input gives a nonzero reconstruction scalar; this premise cannot
be dropped when invoking projective scaling invariance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66daa33898476c13817eedf6fb11ec9ac4d2e3c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
