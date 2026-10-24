# frobeniusPairing_eq_trace_transpose_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fef835ef-d655-a21c-6922-54ddd5db870e",
  "kind": "theorem",
  "lexical_name": "frobeniusPairing_eq_trace_transpose_mul",
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
  "slug": "frobeniuspairing-eq-trace-transpose-mul--bd741c0470cc09acd18fb230",
  "source": {
    "blob": "61489a745c2332359d3bb8a035b37b5ea11b6932",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 331,
    "path": "GRWTSK/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd741c0470cc09acd18fb230e6e0260257361c34614bf7ca6a71b3f116919c0e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fef835ef-d655-a21c-6922-54ddd5db870e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frobeniusPairing_eq_trace_transpose_mul (A B : StandardMatrix) :
    frobeniusPairing A B = Matrix.trace (A.transpose * B) := by
  simp [frobeniusPairing, Matrix.trace, Matrix.mul_apply, Fin.sum_univ_two]
  ring

/-! ## Coordinate-free oriented trace

The Frobenius formula above is tied to an orthonormal coordinate realization.
The following construction lives directly in the endomorphism algebra of the
kernel-defined standard plane.  Ordinary endomorphism trace is invariant under
arbitrary linear equivalence, not merely orthogonal changes of coordinates.
-/

/-- Difference of the two restricted generators as an endomorphism of the
kernel-defined standard plane.  Writing subtraction as addition of a negative
scalar makes the linear structure used by `toMatrix` explicit. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AnalyticPrimeWalk/Variantdde6f831139c31d5a08dc63ef46761e51bdc795cf118ef9c670aca1b66bc7481.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61489a745c2332359d3bb8a035b37b5ea11b6932` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
