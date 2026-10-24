# indexCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61dc849e43f094d322f25cb6cf1b57d9673b7523a63aefe2445fee5667bfd757",
  "kind": "def",
  "lexical_name": "indexCone",
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
  "slug": "indexcone--cab5637e8026f293d641f1f0",
  "source": {
    "blob": "f46ed3c18843189122974abeb8a196f12d612e0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cab5637e8026f293d641f1f06215137ad34ef0806d289adefce6e4e826148891",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61dc849e43f094d322f25cb6cf1b57d9673b7523a63aefe2445fee5667bfd757`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def indexCone (hC : IsCompact C) : Cone (indexFunctor hC) where
  pt := @Profinite.of C _ (by rwa [← isCompact_iff_compactSpace]) _ _
  π := { app := fun J ↦ TopCat.ofHom (π_app C (· ∈ unop J)) }

variable (hC : IsCompact C)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f46ed3c18843189122974abeb8a196f12d612e0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
