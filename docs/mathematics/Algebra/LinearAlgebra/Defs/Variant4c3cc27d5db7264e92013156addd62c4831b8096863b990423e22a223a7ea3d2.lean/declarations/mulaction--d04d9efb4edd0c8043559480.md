# mulAction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39ccc860f7900786d0b309f82a86ee7f9cac6f321dc5fac72b287ea8cc096c92",
  "kind": "instance",
  "lexical_name": "mulAction'",
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
  "slug": "mulaction--d04d9efb4edd0c8043559480",
  "source": {
    "blob": "93ef65f528bb293c4e40fd5688a33b5b163b8382",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 147,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d04d9efb4edd0c80435594802013b5521566b5bf27bf8f0cd70cd699812cf266",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39ccc860f7900786d0b309f82a86ee7f9cac6f321dc5fac72b287ea8cc096c92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance mulAction' [Monoid S] [SMul S R] [MulAction S M] [IsScalarTower S R M]
    (P : Submodule R M) : MulAction S (M ⧸ P) := fast_instance%
  Function.Surjective.mulAction mk Quot.mk_surjective <| Submodule.Quotient.mk_smul P

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant4c3cc27d5db7264e92013156addd62c4831b8096863b990423e22a223a7ea3d2.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93ef65f528bb293c4e40fd5688a33b5b163b8382` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
