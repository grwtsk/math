# d4_positive_definite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c15cc1c4-7754-8ef1-d4b9-4db2b89ff472",
  "kind": "theorem",
  "lexical_name": "d4_positive_definite",
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
  "slug": "d4-positive-definite--8cdc501592b48753a158f68b",
  "source": {
    "blob": "5202087c8310e6c7372aa242a33aa7725a5319da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 105,
    "path": "GRWTSK/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cdc501592b48753a158f68b72042629e3b36391db3a236ae594738b472207a3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c15cc1c4-7754-8ef1-d4b9-4db2b89ff472`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem d4_positive_definite : d4CQ.PosDef := by
  have hp : ∀ i, 0 < d4D i := by decide +kernel
  have hi : Function.Injective d4Lᵀ.mulVec := by
    apply mulVec_injective_of_isUnit
    apply (isUnit_iff_isUnit_det _).mpr
    rw [det_transpose, d4_lower_det]
    exact isUnit_one
  have h := (PosDef.diagonal hp).conjTranspose_mul_mul_same hi
  simpa only [conjTranspose_eq_transpose_of_trivial, transpose_transpose, d4_ldl] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5202087c8310e6c7372aa242a33aa7725a5319da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
