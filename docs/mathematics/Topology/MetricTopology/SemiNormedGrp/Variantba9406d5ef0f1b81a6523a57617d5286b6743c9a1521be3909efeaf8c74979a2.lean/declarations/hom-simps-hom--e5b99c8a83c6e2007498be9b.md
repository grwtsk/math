# Hom.Simps.hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0515a07f934621e2f69c8884a1c946bc64b921bf77fcc448d699d8eb8770419",
  "kind": "def",
  "lexical_name": "Hom.Simps.hom",
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
  "slug": "hom-simps-hom--e5b99c8a83c6e2007498be9b",
  "source": {
    "blob": "142711e190aba0df605bd6d98d34bfbeac02f5a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 274,
    "path": "GRWTSK/Topology/MetricTopology/SemiNormedGrp/Variantba9406d5ef0f1b81a6523a57617d5286b6743c9a1521be3909efeaf8c74979a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5b99c8a83c6e2007498be9bdc4c03503a8a29e198d4472b6835418c50a44c85",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/SemiNormedGrp/Variantba9406d5ef0f1b81a6523a57617d5286b6743c9a1521be3909efeaf8c74979a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0515a07f934621e2f69c8884a1c946bc64b921bf77fcc448d699d8eb8770419`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Hom.Simps.hom (M N : SemiNormedGrp₁.{u}) (f : Hom M N) : NormedAddGroupHom M N :=
  f.hom

initialize_simps_projections Hom (hom' → hom)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/SemiNormedGrp/Variantba9406d5ef0f1b81a6523a57617d5286b6743c9a1521be3909efeaf8c74979a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/SemiNormedGrp/Variantba9406d5ef0f1b81a6523a57617d5286b6743c9a1521be3909efeaf8c74979a2.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `142711e190aba0df605bd6d98d34bfbeac02f5a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
