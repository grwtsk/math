# det_pivotTransition_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa63baca-16d9-4afc-22ef-9ad56eecf76f",
  "kind": "theorem",
  "lexical_name": "det_pivotTransition_ne_zero",
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
  "slug": "det-pivottransition-ne-zero--1dd3e062d45be679e572e34a",
  "source": {
    "blob": "95eff18f9add49527fa5e71e94c88fc279cfe57e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 65,
    "path": "GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dd3e062d45be679e572e34a2b0dcb0c1d9f01a9fdae54b3056d39cb0f7a0153",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa63baca-16d9-4afc-22ef-9ad56eecf76f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_pivotTransition_ne_zero (A : Matrix (Fin k) (Fin n) ℝ)
    (c d : Fin k → Fin n) (hc : columnMinor A c ≠ 0)
    (hd : columnMinor A d ≠ 0) :
    (pivotTransition A c d).det ≠ 0 := by
  rw [pivotTransition, Matrix.det_mul, det_pivotInverse A d hd]
  exact mul_ne_zero (inv_ne_zero hd) hc

/-- Reverse transition is the nonsingular inverse, with no totalization gap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant9abd3e2fb638eb52123df67498fb2de840e30ea2db2d6e2bb81e76952d41a6e7.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95eff18f9add49527fa5e71e94c88fc279cfe57e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
