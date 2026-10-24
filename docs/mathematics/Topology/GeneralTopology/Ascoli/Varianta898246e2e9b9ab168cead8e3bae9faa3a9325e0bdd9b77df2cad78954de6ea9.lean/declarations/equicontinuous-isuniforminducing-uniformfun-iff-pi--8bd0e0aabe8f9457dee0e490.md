# Equicontinuous.isUniformInducing_uniformFun_iff_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca1402c4-b170-0819-cda2-976dfbc39988",
  "kind": "lemma",
  "lexical_name": "Equicontinuous.isUniformInducing_uniformFun_iff_pi",
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
  "slug": "equicontinuous-isuniforminducing-uniformfun-iff-pi--8bd0e0aabe8f9457dee0e490",
  "source": {
    "blob": "3c572a02ab48df44a858d10e229ee913611a5b47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 143,
    "path": "GRWTSK/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bd0e0aabe8f9457dee0e4901babde2ffe8f8c96a3a6e607e73a9c0ccba41858",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca1402c4-b170-0819-cda2-976dfbc39988`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Equicontinuous.isUniformInducing_uniformFun_iff_pi [UniformSpace ι] [CompactSpace X]
    (F_eqcont : Equicontinuous F) :
    IsUniformInducing (UniformFun.ofFun ∘ F) ↔ IsUniformInducing F := by
  rw [isUniformInducing_iff_uniformSpace, isUniformInducing_iff_uniformSpace,
      ← F_eqcont.comap_uniformFun_eq]
  rfl

/-- Let `X` be a compact topological space, `α` a uniform space, and `F : ι → (X → α)` an
equicontinuous family. Then, the topologies of uniform convergence and pointwise convergence induce
the same topology on `ι`.

In other words, pointwise convergence and uniform convergence coincide on an equicontinuous
subset of `X → α`.

This is a consequence of `Equicontinuous.comap_uniformFun_eq`, stated in terms of `IsInducing`
for convenuence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ascoli/Varianta898246e2e9b9ab168cead8e3bae9faa3a9325e0bdd9b77df2cad78954de6ea9.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c572a02ab48df44a858d10e229ee913611a5b47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
