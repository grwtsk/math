# nonZeroEquivProjectivizationProdUnits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1cb3eb5ad9ee4cf995e1b7c022fe3082f872f19e3efd195087b15b1e970a170c",
  "kind": "def",
  "lexical_name": "nonZeroEquivProjectivizationProdUnits",
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
  "slug": "nonzeroequivprojectivizationprodunits--8a8c5659b3d457943b2fb876",
  "source": {
    "blob": "49eb9b99ae717c2a4d58fe67c08548150503f4ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 37,
    "path": "GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant3946ecdfc6160a9c82d0807fc7ed34125564e350293d53d6f2de097add62acb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a8c5659b3d457943b2fb8768b9d8d0762c3e8cc273f95dae71493f044db66a8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Cardinality/Variant3946ecdfc6160a9c82d0807fc7ed34125564e350293d53d6f2de097add62acb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1cb3eb5ad9ee4cf995e1b7c022fe3082f872f19e3efd195087b15b1e970a170c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def nonZeroEquivProjectivizationProdUnits : { v : V // v ≠ 0 } ≃ ℙ k V × kˣ :=
  let e := MulAction.selfEquivOrbitsQuotientProd <| fun b ↦ by
    rw [(Units.nonZeroSubMul k V).stabilizer_of_subMul,
      Module.stabilizer_units_eq_bot_of_ne_zero k b.property]
  e.trans (Equiv.prodCongrLeft (fun _ ↦ (equivQuotientOrbitRel k V).symm))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Cardinality/Variant3946ecdfc6160a9c82d0807fc7ed34125564e350293d53d6f2de097add62acb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Cardinality/Variant3946ecdfc6160a9c82d0807fc7ed34125564e350293d53d6f2de097add62acb8.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49eb9b99ae717c2a4d58fe67c08548150503f4ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
