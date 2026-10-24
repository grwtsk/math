# ofIsUniformEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b572dbf9575784916d3c2575e0c477d4bdd2c6d80c72a556d4bd344093a5fb2",
  "kind": "def",
  "lexical_name": "ofIsUniformEmbedding",
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
  "slug": "ofisuniformembedding--600af4d18a3099761481155a",
  "source": {
    "blob": "203d7f99c5bf94f4d20c2169cb1294b674bb2f1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 221,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant9d0e3fa5e2809b7aa718df61822e5fc424c3b8f5196ad9da313baa6ef6949f20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:600af4d18a3099761481155ab98da9ac3aae45f5cbd9177888fd7da567e131aa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equiv/Variant9d0e3fa5e2809b7aa718df61822e5fc424c3b8f5196ad9da313baa6ef6949f20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b572dbf9575784916d3c2575e0c477d4bdd2c6d80c72a556d4bd344093a5fb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofIsUniformEmbedding (f : α → β) (hf : IsUniformEmbedding f) :
    α ≃ᵤ Set.range f where
  uniformContinuous_toFun := hf.isUniformInducing.uniformContinuous.subtype_mk _
  uniformContinuous_invFun := by
    rw [hf.isUniformInducing.uniformContinuous_iff, Equiv.invFun_as_coe,
      Equiv.self_comp_ofInjective_symm]
    exact uniformContinuous_subtype_val
  toEquiv := Equiv.ofInjective f hf.injective

/-- If two sets are equal, then they are uniformly equivalent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equiv/Variant9d0e3fa5e2809b7aa718df61822e5fc424c3b8f5196ad9da313baa6ef6949f20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant9d0e3fa5e2809b7aa718df61822e5fc424c3b8f5196ad9da313baa6ef6949f20.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `203d7f99c5bf94f4d20c2169cb1294b674bb2f1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
