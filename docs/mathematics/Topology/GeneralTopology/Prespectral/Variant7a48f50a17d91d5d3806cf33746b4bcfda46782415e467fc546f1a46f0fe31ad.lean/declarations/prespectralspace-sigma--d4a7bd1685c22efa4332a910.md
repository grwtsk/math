# PrespectralSpace.sigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11fdc203a02589a24471f07c08afda0b8b28789bf163736343f551cace0a85dd",
  "kind": "instance",
  "lexical_name": "PrespectralSpace.sigma",
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
  "slug": "prespectralspace-sigma--d4a7bd1685c22efa4332a910",
  "source": {
    "blob": "3c9d042d7c19f0a706ddb377daed0b9e7cb665fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/Prespectral/Variant7a48f50a17d91d5d3806cf33746b4bcfda46782415e467fc546f1a46f0fe31ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4a7bd1685c22efa4332a910c280ab196eca0e4dc9e610702ac59067d65f1f76",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prespectral/Variant7a48f50a17d91d5d3806cf33746b4bcfda46782415e467fc546f1a46f0fe31ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11fdc203a02589a24471f07c08afda0b8b28789bf163736343f551cace0a85dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance PrespectralSpace.sigma {ι : Type*} (X : ι → Type*) [∀ i, TopologicalSpace (X i)]
    [∀ i, PrespectralSpace (X i)] : PrespectralSpace (Σ i, X i) :=
  .of_isTopologicalBasis (IsTopologicalBasis.sigma fun i ↦ isTopologicalBasis) fun U hU ↦ by
    simp_rw [Set.mem_iUnion] at hU
    obtain ⟨i, V, hV, rfl⟩ := hU
    exact hV.2.image continuous_sigmaMk

variable (X) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prespectral/Variant7a48f50a17d91d5d3806cf33746b4bcfda46782415e467fc546f1a46f0fe31ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prespectral/Variant7a48f50a17d91d5d3806cf33746b4bcfda46782415e467fc546f1a46f0fe31ad.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c9d042d7c19f0a706ddb377daed0b9e7cb665fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
