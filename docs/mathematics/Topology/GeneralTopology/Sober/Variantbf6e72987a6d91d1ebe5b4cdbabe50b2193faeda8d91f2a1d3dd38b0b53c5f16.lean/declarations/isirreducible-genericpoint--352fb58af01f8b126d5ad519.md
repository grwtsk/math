# IsIrreducible.genericPoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:686b45f689914dd4081ee5a80f0a1e8e454d9c916d772da3cfe5e765c01084d8",
  "kind": "def",
  "lexical_name": "IsIrreducible.genericPoint",
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
  "slug": "isirreducible-genericpoint--352fb58af01f8b126d5ad519",
  "source": {
    "blob": "7aae3bfd46942645ce342758c524f1ed6161db77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 125,
    "path": "GRWTSK/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:352fb58af01f8b126d5ad519b62e74be9890dfff45a3c53b47ebb7c07e63b95d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:686b45f689914dd4081ee5a80f0a1e8e454d9c916d772da3cfe5e765c01084d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def IsIrreducible.genericPoint [QuasiSober α] {S : Set α} (hS : IsIrreducible S) :
    α :=
  (QuasiSober.sober hS.closure isClosed_closure).choose
#align is_irreducible.generic_point IsIrreducible.genericPoint

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sober/Variantbf6e72987a6d91d1ebe5b4cdbabe50b2193faeda8d91f2a1d3dd38b0b53c5f16.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7aae3bfd46942645ce342758c524f1ed6161db77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
