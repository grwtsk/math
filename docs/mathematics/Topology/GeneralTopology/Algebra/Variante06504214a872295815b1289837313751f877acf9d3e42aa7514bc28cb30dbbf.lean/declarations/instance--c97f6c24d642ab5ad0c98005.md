# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1780f8439ef93162710ef8d4db8405d4b28782c621694472ed8419dc1c3d3c2e",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c97f6c24d642ab5ad0c98005",
  "source": {
    "blob": "d852f56e3ee12712c013b64ea9b20a838433f011",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 347,
    "path": "GRWTSK/Topology/GeneralTopology/Algebra/Variante06504214a872295815b1289837313751f877acf9d3e42aa7514bc28cb30dbbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c97f6c24d642ab5ad0c98005aa397bb85382c8006f6b0e7be764818f05131870",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Algebra/Variante06504214a872295815b1289837313751f877acf9d3e42aa7514bc28cb30dbbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1780f8439ef93162710ef8d4db8405d4b28782c621694472ed8419dc1c3d3c2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [CommGroup β] [IsTopologicalGroup β] : IsTopologicalGroup C(α, β) where
  continuous_mul := by
    letI : UniformSpace β := IsTopologicalGroup.toUniformSpace β
    have : IsUniformGroup β := isUniformGroup_of_commGroup
    rw [continuous_iff_continuousAt]
    rintro ⟨f, g⟩
    rw [ContinuousAt, tendsto_iff_forall_isCompact_tendstoUniformlyOn, nhds_prod_eq]
    exact fun K hK =>
      uniformContinuous_mul.comp_tendstoUniformlyOn
        ((tendsto_iff_forall_isCompact_tendstoUniformlyOn.mp Filter.tendsto_id K hK).prodMk
          (tendsto_iff_forall_isCompact_tendstoUniformlyOn.mp Filter.tendsto_id K hK))
  continuous_inv := by
    letI : UniformSpace β := IsTopologicalGroup.toUniformSpace β
    have : IsUniformGroup β := isUniformGroup_of_commGroup
    rw [continuous_iff_continuousAt]
    intro f
    rw [ContinuousAt, tendsto_iff_forall_isCompact_tendstoUniformlyOn]
    exact fun K hK =>
      uniformContinuous_inv.comp_tendstoUniformlyOn
        (tendsto_iff_forall_isCompact_tendstoUniformlyOn.mp Filter.tendsto_id K hK)

/-- If an infinite product of functions in `C(α, β)` converges to `g`
(for the compact-open topology), then the pointwise product converges to `g x` for all `x ∈ α`. -/
@[to_additive
  "If an infinite sum of functions in `C(α, β)` converges to `g` (for the compact-open topology),
then the pointwise sum converges to `g x` for all `x ∈ α`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Algebra/Variante06504214a872295815b1289837313751f877acf9d3e42aa7514bc28cb30dbbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Algebra/Variante06504214a872295815b1289837313751f877acf9d3e42aa7514bc28cb30dbbf.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d852f56e3ee12712c013b64ea9b20a838433f011` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
