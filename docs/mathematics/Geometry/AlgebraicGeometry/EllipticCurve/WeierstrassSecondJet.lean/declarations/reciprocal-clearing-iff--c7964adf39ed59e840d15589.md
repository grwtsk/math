# reciprocal_clearing_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba7bfb2f-3deb-c1d6-d9d7-d7e5df6cc5bb",
  "kind": "theorem",
  "lexical_name": "reciprocal_clearing_iff",
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
  "slug": "reciprocal-clearing-iff--c7964adf39ed59e840d15589",
  "source": {
    "blob": "5995cf8be35a9b679171d7c5fe31ef4fbe0fbd19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 238,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7964adf39ed59e840d15589e059bc37fa088169ad8d3bb63c509baa6c0164a9",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba7bfb2f-3deb-c1d6-d9d7-d7e5df6cc5bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocal_clearing_iff (B d : ℤ) (hB : B ≠ 0) :
    (∃ z : ℤ, (z : ℚ)=(d : ℚ)/(B : ℚ)) ↔ B ∣ d := by
  have hq : (B : ℚ) ≠ 0 := by exact_mod_cast hB
  constructor
  · rintro ⟨z,hz⟩
    refine ⟨z,?_⟩
    have he := (eq_div_iff hq).mp hz
    exact_mod_cast (by simpa only [mul_comm] using he.symm : (d : ℚ)=(B : ℚ)*z)
  · rintro ⟨z,hz⟩
    refine ⟨z,?_⟩
    apply (eq_div_iff hq).mpr
    exact_mod_cast (by simpa only [mul_comm] using hz.symm : z*B=d)

/-- Complete binary tangent-cone test. Unlike a finite source grid, F_2 is exhausted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5995cf8be35a9b679171d7c5fe31ef4fbe0fbd19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
