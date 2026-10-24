# d4_integer_determinant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4d844cd-7da8-c6d3-53e3-2616150af297",
  "kind": "theorem",
  "lexical_name": "d4_integer_determinant",
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
  "slug": "d4-integer-determinant--1315826a67db62f0dd1162e9",
  "source": {
    "blob": "5202087c8310e6c7372aa242a33aa7725a5319da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 120,
    "path": "GRWTSK/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1315826a67db62f0dd1162e97df8dc61997ee27559f4c60c06bafefc77f736c9",
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

Occurrence: `result:c4d844cd-7da8-c6d3-53e3-2616150af297`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem d4_integer_determinant : d4C.det = 4 := by
  have hc : d4C.map (Int.castRingHom ℚ) = d4CQ := by decide +kernel
  have h := (Int.castRingHom ℚ).map_det d4C
  change (d4C.det : ℚ) = (d4C.map (Int.castRingHom ℚ)).det at h
  rw [hc, d4_determinant] at h
  exact_mod_cast h
#check d4_coxeter_exact_order
#check d4_positive_definite

/-- Exact geometric data for `e8A` on its stated carrier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Geometry/Variant1f767a93a7acbffe12bcdad7e7c931266105ad07925b2fe656e3bf4202128f60.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5202087c8310e6c7372aa242a33aa7725a5319da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
