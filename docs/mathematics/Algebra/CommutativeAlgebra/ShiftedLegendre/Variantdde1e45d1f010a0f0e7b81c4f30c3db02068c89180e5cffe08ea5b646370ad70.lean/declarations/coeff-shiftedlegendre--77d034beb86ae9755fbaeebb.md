# coeff_shiftedLegendre

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:697ac7ca-e246-97b7-c314-5761906858bd",
  "kind": "theorem",
  "lexical_name": "coeff_shiftedLegendre",
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
  "slug": "coeff-shiftedlegendre--77d034beb86ae9755fbaeebb",
  "source": {
    "blob": "9e346ba1338f4168d2a70e8f8d0c5949ca822989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 92,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ShiftedLegendre/Variantdde1e45d1f010a0f0e7b81c4f30c3db02068c89180e5cffe08ea5b646370ad70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77d034beb86ae9755fbaeebb53629a9ee511afa87cb661041fcd811e2548bae9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ShiftedLegendre/Variantdde1e45d1f010a0f0e7b81c4f30c3db02068c89180e5cffe08ea5b646370ad70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:697ac7ca-e246-97b7-c314-5761906858bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_shiftedLegendre (n k : ℕ) :
    (shiftedLegendre n).coeff k = (-1) ^ k * n.choose k * (n + k).choose n := by
  rw [shiftedLegendre, finsetSum_coeff]
  simp_rw [coeff_C_mul_X_pow]
  simp +contextual [choose_eq_zero_of_lt]

/-- The degree of `shiftedLegendre n` is `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ShiftedLegendre/Variantdde1e45d1f010a0f0e7b81c4f30c3db02068c89180e5cffe08ea5b646370ad70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ShiftedLegendre/Variantdde1e45d1f010a0f0e7b81c4f30c3db02068c89180e5cffe08ea5b646370ad70.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e346ba1338f4168d2a70e8f8d0c5949ca822989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
