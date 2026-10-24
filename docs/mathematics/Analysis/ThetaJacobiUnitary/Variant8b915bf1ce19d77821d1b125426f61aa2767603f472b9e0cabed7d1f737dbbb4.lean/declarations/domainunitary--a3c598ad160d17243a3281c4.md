# domainUnitary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcde5adec950b0099f6e05a77757ae57f6c7134f2a9bab61d4174e51cf309f1f",
  "kind": "def",
  "lexical_name": "domainUnitary",
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
  "slug": "domainunitary--a3c598ad160d17243a3281c4",
  "source": {
    "blob": "0c51c4e8da48186d3a1390eae01b010fe48b06fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 168,
    "path": "GRWTSK/Analysis/ThetaJacobiUnitary/Variant8b915bf1ce19d77821d1b125426f61aa2767603f472b9e0cabed7d1f737dbbb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3c598ad160d17243a3281c4f9d7f3ae6bfb0b16c8fabea0db8cd52ce77f5ae8",
  "verification": {
    "reference": "docs/verification/Analysis/ThetaJacobiUnitary/Variant8b915bf1ce19d77821d1b125426f61aa2767603f472b9e0cabed7d1f737dbbb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcde5adec950b0099f6e05a77757ae57f6c7134f2a9bab61d4174e51cf309f1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def domainUnitary (t : ℝ) (ht : 0 ≤ t) :
    jacobiDomain t ht →ₗ[ℂ] coordinateDomain (momentMeasure t) :=
  (pointedUnitary t ht).toLinearEquiv.toLinearMap.submoduleComap _

/-- The actual unbounded theta operator in polynomial Jacobi coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ThetaJacobiUnitary/Variant8b915bf1ce19d77821d1b125426f61aa2767603f472b9e0cabed7d1f737dbbb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ThetaJacobiUnitary/Variant8b915bf1ce19d77821d1b125426f61aa2767603f472b9e0cabed7d1f737dbbb4.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c51c4e8da48186d3a1390eae01b010fe48b06fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
