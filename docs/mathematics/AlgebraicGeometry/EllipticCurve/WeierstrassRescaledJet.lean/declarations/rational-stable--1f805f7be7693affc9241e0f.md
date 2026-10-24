# rational_stable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:611277f3-1137-efea-8429-bbad4a33a0c7",
  "kind": "theorem",
  "lexical_name": "rational_stable",
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
  "slug": "rational-stable--1f805f7be7693affc9241e0f",
  "source": {
    "blob": "2dc39c341c3bad4cbb1c7ce549f4f98fc5e3046b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 177,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassRescaledJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f805f7be7693affc9241e0f2df2f57b4222ed986840cd6c85a64909c56d9d43",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/EllipticCurve/WeierstrassRescaledJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:611277f3-1137-efea-8429-bbad4a33a0c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rational_stable (A B : ℤ) (hB : B≠0) (M N k : ℕ)
    (hMN : M≤N) (hk : k≤M) :
    (rationalPolynomial A B (N+1)).coeff k=(rationalPolynomial A B (M+1)).coeff k := by
  by_cases hz : k=0
  · subst k; rw [rational_low A B (N+1) 0 (by decide),rational_low A B (M+1) 0 (by decide)]
  · rw [rational_coefficient A B hB _ _ (by omega),rational_coefficient A B hB _ _ (by omega),
      numerator_stable A B (M+1) (N+1) k (by omega) (by omega)]

end GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassRescaledJet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/EllipticCurve/WeierstrassRescaledJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassRescaledJet.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dc39c341c3bad4cbb1c7ce549f4f98fc5e3046b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
