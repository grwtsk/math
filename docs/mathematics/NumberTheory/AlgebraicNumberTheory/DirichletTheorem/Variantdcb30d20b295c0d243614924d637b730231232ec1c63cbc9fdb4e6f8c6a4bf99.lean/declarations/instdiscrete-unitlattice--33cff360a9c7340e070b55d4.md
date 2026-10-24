# instDiscrete_unitLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b5ac4d58d302aca874131c26f38e2fecb402e496a53eda05aa90c96b8578140",
  "kind": "instance",
  "lexical_name": "instDiscrete_unitLattice",
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
  "slug": "instdiscrete-unitlattice--33cff360a9c7340e070b55d4",
  "source": {
    "blob": "66e59771eb655041fc341a01186f6754b23ff81e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 345,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33cff360a9c7340e070b55d41cee8cc75cc61b2af90098eb78ff093aa72d1fbb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b5ac4d58d302aca874131c26f38e2fecb402e496a53eda05aa90c96b8578140`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instDiscrete_unitLattice : DiscreteTopology (unitLattice K) := by
  classical
  refine discreteTopology_of_isOpen_singleton_zero ?_
  refine isOpen_singleton_of_finite_mem_nhds 0 (s := Metric.closedBall 0 1) ?_ ?_
  · exact Metric.closedBall_mem_nhds _ (by norm_num)
  · refine Set.Finite.of_finite_image ?_ (Set.injOn_of_injective Subtype.val_injective)
    convert unitLattice_inter_ball_finite K 1
    ext x
    refine ⟨?_, fun ⟨hx1, hx2⟩ ↦ ⟨⟨x, hx1⟩, hx2, rfl⟩⟩
    rintro ⟨x, hx, rfl⟩
    exact ⟨Subtype.mem x, hx⟩

open scoped Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66e59771eb655041fc341a01186f6754b23ff81e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
