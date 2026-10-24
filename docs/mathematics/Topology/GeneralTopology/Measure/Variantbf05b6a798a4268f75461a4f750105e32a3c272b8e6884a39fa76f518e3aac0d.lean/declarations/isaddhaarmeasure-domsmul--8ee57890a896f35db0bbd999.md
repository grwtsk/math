# IsAddHaarMeasure.domSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b748b92e7625030fdc39cf62a4e445c6f871968cc1085ca21a49ca17bee27cc5",
  "kind": "instance",
  "lexical_name": "IsAddHaarMeasure.domSMul",
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
  "slug": "isaddhaarmeasure-domsmul--8ee57890a896f35db0bbd999",
  "source": {
    "blob": "87ac43c27d3a3bcfe5d1b1933c6eb2a6c7aac88d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 877,
    "line": 866,
    "path": "GRWTSK/Topology/GeneralTopology/Measure/Variantbf05b6a798a4268f75461a4f750105e32a3c272b8e6884a39fa76f518e3aac0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ee57890a896f35db0bbd999efcaecb59dd3378fd096340dd621d60df7f4cf43",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Measure/Variantbf05b6a798a4268f75461a4f750105e32a3c272b8e6884a39fa76f518e3aac0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b748b92e7625030fdc39cf62a4e445c6f871968cc1085ca21a49ca17bee27cc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 866–877.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsAddHaarMeasure.domSMul {G A : Type*} [Group G] [AddCommGroup A] [DistribMulAction G A]
    [MeasurableSpace A] [TopologicalSpace A] [BorelSpace A] [IsTopologicalAddGroup A]
    [ContinuousConstSMul G A] {μ : Measure A} [μ.IsAddHaarMeasure] (g : Gᵈᵐᵃ) :
    (g • μ).IsAddHaarMeasure :=
  (DistribMulAction.toAddEquiv _ (DomMulAct.mk.symm g⁻¹)).isAddHaarMeasure_map _
    (continuous_const_smul _) (continuous_const_smul _)

end Measure

end Haar

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Measure/Variantbf05b6a798a4268f75461a4f750105e32a3c272b8e6884a39fa76f518e3aac0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Measure/Variantbf05b6a798a4268f75461a4f750105e32a3c272b8e6884a39fa76f518e3aac0d.lean#L866).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87ac43c27d3a3bcfe5d1b1933c6eb2a6c7aac88d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
