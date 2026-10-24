# Imo2019q2Cfg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e17da84baf403939a778e706442a358e5534489f132fbc9d41666f703216867b",
  "kind": "structure",
  "lexical_name": "Imo2019q2Cfg",
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
  "slug": "imo2019q2cfg--52b8a2ceda44b69d6c05f8fd",
  "source": {
    "blob": "27c0eb9c1027f1e9bff516e2080fc5831940b68f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 92,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant21e5884a8103874b68a602375dbd624f6811efc9e5b8ef36752ae39a5b3a3098.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52b8a2ceda44b69d6c05f8fdb8884d47da97fdc8f0579cb0925a4ca02bfbe14c",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant21e5884a8103874b68a602375dbd624f6811efc9e5b8ef36752ae39a5b3a3098.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e17da84baf403939a778e706442a358e5534489f132fbc9d41666f703216867b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Imo2019q2Cfg where
  (A B C A₁ B₁ P Q P₁ Q₁ : Pt)
  affineIndependent_ABC : AffineIndependent ℝ ![A, B, C]
  wbtw_B_A₁_C : Wbtw ℝ B A₁ C
  wbtw_A_B₁_C : Wbtw ℝ A B₁ C
  wbtw_A_P_A₁ : Wbtw ℝ A P A₁
  wbtw_B_Q_B₁ : Wbtw ℝ B Q B₁
  PQ_parallel_AB : line[ℝ, P, Q] ∥ line[ℝ, A, B]
  -- A hypothesis implicit in the named line.
  P_ne_Q : P ≠ Q
  sbtw_P_B₁_P₁ : Sbtw ℝ P B₁ P₁
  angle_PP₁C_eq_angle_BAC : ∠ P P₁ C = ∠ B A C
  -- A hypothesis implicit in the first named angle.
  C_ne_P₁ : C ≠ P₁
  sbtw_Q_A₁_Q₁ : Sbtw ℝ Q A₁ Q₁
  angle_CQ₁Q_eq_angle_CBA : ∠ C Q₁ Q = ∠ C B A
  -- A hypothesis implicit in the first named angle.
  C_ne_Q₁ : C ≠ Q₁
#align imo2019_q2.imo2019q2_cfg Imo2019Q2.Imo2019q2Cfg

/-- A default choice of orientation, for lemmas that need to pick one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant21e5884a8103874b68a602375dbd624f6811efc9e5b8ef36752ae39a5b3a3098.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant21e5884a8103874b68a602375dbd624f6811efc9e5b8ef36752ae39a5b3a3098.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27c0eb9c1027f1e9bff516e2080fc5831940b68f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
