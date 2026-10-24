# isoₛₗ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b52807b13a5e31d0b16b74c1fea3fa29137fdcc4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/4964b7ffee7ab7bcece606af6d6ef454f99156fe6c4635fc90b7cf2a2d27eb1b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d420cd35-35cf-980c-5514-df6457fc1166",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7134bfe2-2932-d77e-449d-f67c0717a8b7",
  "kind": "theorem",
  "lexical_name": "isoₛₗ",
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
  "slug": "iso--b05df983b6d2b85e0afe8c0f",
  "source": {
    "blob": "b52807b13a5e31d0b16b74c1fea3fa29137fdcc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 214,
    "path": "GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant4964b7ffee7ab7bcece606af6d6ef454f99156fe6c4635fc90b7cf2a2d27eb1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b05df983b6d2b85e0afe8c0fce209becae275aa432a5a2bc25bd036f098d5cb3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ModuleTopology/Variant4964b7ffee7ab7bcece606af6d6ef454f99156fe6c4635fc90b7cf2a2d27eb1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7134bfe2-2932-d77e-449d-f67c0717a8b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem isoₛₗ (hσ : Continuous σ) (hσ' : Continuous σ') (e : A ≃SL[σ] B') :
    IsModuleTopology S B' where
  eq_moduleTopology' := by
    -- get these in before I start putting new topologies on A and B and have to use `@`
    let g : A →ₛₗ[σ] B' := e
    let g' : B' →ₛₗ[σ'] A := e.symm
    let h : A →+ B' := e
    let h' : B' →+ A := e.symm
    simp_rw [e.toHomeomorph.symm.isInducing.1, eq_moduleTopology R A, moduleTopology, induced_sInf]
    apply congr_arg
    ext τ -- from this point on the definitions of `g`, `g'` etc. above don't work without `@`.
    rw [Set.mem_image]
    constructor
    · rintro ⟨σ, ⟨hσ1, hσ2⟩, rfl⟩
      exact ⟨continuousSMul_inducedₛₗ g' hσ', continuousAdd_induced h'⟩
    · rintro ⟨h1, h2⟩
      use τ.induced e
      rw [induced_compose]
      refine ⟨⟨continuousSMul_inducedₛₗ g hσ, continuousAdd_induced h⟩, ?_⟩
      nth_rw 2 [← induced_id (t := τ)]
      simp

/-- If `A` and `B` are `R`-modules, homeomorphic via an `R`-linear homeomorphism, and if
`A` has the module topology, then so does `B`.
See `IsModuleTopology.isoₛₗ` for the generalization to a semilinear homeomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ModuleTopology/Variant4964b7ffee7ab7bcece606af6d6ef454f99156fe6c4635fc90b7cf2a2d27eb1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant4964b7ffee7ab7bcece606af6d6ef454f99156fe6c4635fc90b7cf2a2d27eb1b.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b52807b13a5e31d0b16b74c1fea3fa29137fdcc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
