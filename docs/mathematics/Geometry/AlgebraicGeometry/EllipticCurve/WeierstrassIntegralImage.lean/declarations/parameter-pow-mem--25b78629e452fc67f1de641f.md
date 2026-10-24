# parameter_pow_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7352417a-e7e2-20cc-d849-ca5f0390c555",
  "kind": "theorem",
  "lexical_name": "parameter_pow_mem",
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
  "slug": "parameter-pow-mem--25b78629e452fc67f1de641f",
  "source": {
    "blob": "09c1279803b705e13d4da51c9981f8ab3f149677",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 155,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25b78629e452fc67f1de641f8a8074b86f95db5f88badf687349e5600234c39c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7352417a-e7e2-20cc-d849-ca5f0390c555`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parameter_pow_mem (A B : ℤ) (x y : S) (h : Relation A B x y)
    (N : ℕ) (hy : y^(N+1)=0) (hx : y^2 ∣ x) (k : ℕ) :
    y^k ∈ lattice x y N :=
  (mem_lattice_iff A B x y h N hy hx _).mpr
    ⟨MvPolynomial.X 1^k,by simp [evaluate]⟩

/-- Kill the FULL origin-ideal power before factoring through the integral jet quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassIntegralImage.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09c1279803b705e13d4da51c9981f8ab3f149677` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
