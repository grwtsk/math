# derivative_gain_bounds_one_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e39a929-4cd4-7b94-a010-aeed5a00823b",
  "kind": "theorem",
  "lexical_name": "derivative_gain_bounds_one_step",
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
  "slug": "derivative-gain-bounds-one-step--bd1e2aa269b4ddd26d0523bf",
  "source": {
    "blob": "a7cb1f851a951a1d387349e282f3b3d0fc4bfc6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 28,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variantdaf77d0789bff6e2d15868fe2e233d65da3bcdfd5982f88fab9a7cf69dc41687.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd1e2aa269b4ddd26d0523bf84ca80b6bf3ccfccba8b6f174f4d9956834115fc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variantdaf77d0789bff6e2d15868fe2e233d65da3bcdfd5982f88fab9a7cf69dc41687.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e39a929-4cd4-7b94-a010-aeed5a00823b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivative_gain_bounds_one_step
    {X : Type}
    {construction : ReflectiveMap X}
    {metric : ResidualMetric X}
    (certificate :
      DerivativeGainCertificate construction metric)
    (x y : X)
    (xMember : construction.domain.contains x)
    (yMember : construction.domain.contains y) :
    metric.distance (construction.apply x)
      (construction.apply y) ≤
      certificate.gain * metric.distance x y :=
  certificate.bounds x y xMember yMember

/-!
Non-integral gains use a common positive scale.  The bound
`scale * d(F x, F y) ≤ numerator * d(x, y)` is the division-free form of
`d(F x, F y) ≤ (numerator / scale) * d(x, y)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variantdaf77d0789bff6e2d15868fe2e233d65da3bcdfd5982f88fab9a7cf69dc41687.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeGain/Variantdaf77d0789bff6e2d15868fe2e233d65da3bcdfd5982f88fab9a7cf69dc41687.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7cb1f851a951a1d387349e282f3b3d0fc4bfc6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
