# e8_integer_determinant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:484ecc56-a9ec-a5a5-e9f7-7e9f81a0e27b",
  "kind": "theorem",
  "lexical_name": "e8_integer_determinant",
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
  "slug": "e8-integer-determinant--6e03c95f51cc4c6fb4bb2686",
  "source": {
    "blob": "5202087c8310e6c7372aa242a33aa7725a5319da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 449,
    "path": "GRWTSK/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e03c95f51cc4c6fb4bb2686c33a1b9520731e31c94ed5dcba47ec43dfa46c1a",
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

Occurrence: `result:484ecc56-a9ec-a5a5-e9f7-7e9f81a0e27b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem e8_integer_determinant : e8C.det = 1 := by
  have hc : e8C.map (Int.castRingHom ℚ) = e8CQ := by decide +kernel
  have h := (Int.castRingHom ℚ).map_det e8C
  change (e8C.det : ℚ) = (e8C.map (Int.castRingHom ℚ)).det at h
  rw [hc, e8_determinant] at h
  exact_mod_cast h
#check e8_coxeter_exact_order
#check e8_positive_definite

/-- Exact geometric data for `rootBasis` on its stated carrier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5202087c8310e6c7372aa242a33aa7725a5319da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
