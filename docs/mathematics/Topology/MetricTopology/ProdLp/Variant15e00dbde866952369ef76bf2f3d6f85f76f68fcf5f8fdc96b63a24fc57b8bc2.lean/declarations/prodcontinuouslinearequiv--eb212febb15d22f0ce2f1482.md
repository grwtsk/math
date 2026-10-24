# prodContinuousLinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ecc3cfb13631ebf606eb5dde4affb42ec7756b66a4b092a3fc1b6554e2ef1777",
  "kind": "def",
  "lexical_name": "prodContinuousLinearEquiv",
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
  "slug": "prodcontinuouslinearequiv--eb212febb15d22f0ce2f1482",
  "source": {
    "blob": "cf4720acd0f4b17bcca0c3e4789876dab1594314",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 514,
    "path": "GRWTSK/Topology/MetricTopology/ProdLp/Variant15e00dbde866952369ef76bf2f3d6f85f76f68fcf5f8fdc96b63a24fc57b8bc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb212febb15d22f0ce2f148231b1b94b086d3acdb1cbda89d182392717fa7ff9",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ProdLp/Variant15e00dbde866952369ef76bf2f3d6f85f76f68fcf5f8fdc96b63a24fc57b8bc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ecc3cfb13631ebf606eb5dde4affb42ec7756b66a4b092a3fc1b6554e2ef1777`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def prodContinuousLinearEquiv : WithLp p (α × β) ≃L[𝕜] α × β where
  toLinearEquiv := WithLp.linearEquiv _ _ _
  continuous_toFun := prod_continuous_equiv _ _ _
  continuous_invFun := prod_continuous_equiv_symm _ _ _

end ContinuousLinearEquiv

/-! Throughout the rest of the file, we assume `1 ≤ p` -/
variable [hp : Fact (1 ≤ p)]

/-- `PseudoEMetricSpace` instance on the product of two pseudoemetric spaces, using the
`L^p` pseudoedistance, and having as uniformity the product uniformity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ProdLp/Variant15e00dbde866952369ef76bf2f3d6f85f76f68fcf5f8fdc96b63a24fc57b8bc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ProdLp/Variant15e00dbde866952369ef76bf2f3d6f85f76f68fcf5f8fdc96b63a24fc57b8bc2.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf4720acd0f4b17bcca0c3e4789876dab1594314` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
