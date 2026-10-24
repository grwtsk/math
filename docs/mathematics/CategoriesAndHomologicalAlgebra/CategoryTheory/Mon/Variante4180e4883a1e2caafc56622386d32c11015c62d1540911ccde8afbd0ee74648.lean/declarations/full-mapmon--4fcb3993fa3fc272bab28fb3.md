# Full.mapMon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f72d2c95673375fa1227fc8f2c1cb2aa6937da22d18e6cbea57e7df6bb22c8e3",
  "kind": "instance",
  "lexical_name": "Full.mapMon",
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
  "slug": "full-mapmon--4fcb3993fa3fc272bab28fb3",
  "source": {
    "blob": "88d33a124bb93bc4db6795b7d32eede81e6abef1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 366,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variante4180e4883a1e2caafc56622386d32c11015c62d1540911ccde8afbd0ee74648.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4fcb3993fa3fc272bab28fb3e32ae1a2b9aa719049912e84cda7e93f7534985b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variante4180e4883a1e2caafc56622386d32c11015c62d1540911ccde8afbd0ee74648.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f72d2c95673375fa1227fc8f2c1cb2aa6937da22d18e6cbea57e7df6bb22c8e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected instance Full.mapMon [F.Full] [F.Faithful] : F.mapMon.Full where
  map_surjective {X Y} f :=
    let ⟨g, hg⟩ := F.map_surjective f.hom
    ⟨{
      hom := g
      one_hom := F.map_injective <| by simpa [← hg, cancel_epi] using f.one_hom
      mul_hom := F.map_injective <| by simpa [← hg, cancel_epi] using f.mul_hom
    }, Mon_.Hom.ext hg⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variante4180e4883a1e2caafc56622386d32c11015c62d1540911ccde8afbd0ee74648.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variante4180e4883a1e2caafc56622386d32c11015c62d1540911ccde8afbd0ee74648.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88d33a124bb93bc4db6795b7d32eede81e6abef1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
