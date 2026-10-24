# starProjection_orthogonal_apply_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c35e1ad-a5d1-01e3-4f19-86fae7dd686d",
  "kind": "theorem",
  "lexical_name": "starProjection_orthogonal_apply_eq_zero",
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
  "slug": "starprojection-orthogonal-apply-eq-zero--c2b3d36fa3a03cb2ec2e4a12",
  "source": {
    "blob": "0ef7a90eec68277169d82e36b073488027b2dabc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 503,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd2f605286eb583e4b1ca8672d780e0c1be4fdc062ec0ea45cf6db90693d23565.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2b3d36fa3a03cb2ec2e4a12329fd6fa467f70a16fe57b4b4850d36b3529945a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantd2f605286eb583e4b1ca8672d780e0c1be4fdc062ec0ea45cf6db90693d23565.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c35e1ad-a5d1-01e3-4f19-86fae7dd686d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem starProjection_orthogonal_apply_eq_zero
    [Kᗮ.HasOrthogonalProjection] {v : E} (hv : v ∈ K) :
    Kᗮ.starProjection v = 0 := by
  rw [starProjection_apply, coe_eq_zero]
  exact orthogonalProjectionOnto_orthogonal_apply_eq_zero hv

/-- If `U ≤ V`, then projecting on `V` and then on `U` is the same as projecting on `U`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantd2f605286eb583e4b1ca8672d780e0c1be4fdc062ec0ea45cf6db90693d23565.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantd2f605286eb583e4b1ca8672d780e0c1be4fdc062ec0ea45cf6db90693d23565.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ef7a90eec68277169d82e36b073488027b2dabc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
