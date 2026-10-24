# SMulCommClass.rat'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c7ca9804afce5d494fc8b51bc2c4c864ab04e1dba0129e9c2e60105da691976",
  "kind": "instance",
  "lexical_name": "SMulCommClass.rat'",
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
  "slug": "smulcommclass-rat--e9083332cecef7f5ad9471f0",
  "source": {
    "blob": "d9651fa153a5ffcaa17d4eb1569513ca2b93f2f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 89,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9083332cecef7f5ad9471f065fe80f3e895d07cd9a0e8959c33230919cd26d6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c7ca9804afce5d494fc8b51bc2c4c864ab04e1dba0129e9c2e60105da691976`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance SMulCommClass.rat' [Monoid α] [AddCommGroup M] [DistribMulAction α M] [Module ℚ M] :
    SMulCommClass α ℚ M :=
  SMulCommClass.symm _ _ _

end

-- see note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rat/Variant71f5f2ee354cb264c414a9825e959e4d2e2ad73e4b6af7c87d9a20a558266cfd.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9651fa153a5ffcaa17d4eb1569513ca2b93f2f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
