# isUniversal'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7738fadc10531193761af00cb2cb745f98d425d1e969c718f33947451c1bb2ea",
  "kind": "def",
  "lexical_name": "isUniversal'",
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
  "slug": "isuniversal--583a07bd5f2a4d4ba47666f5",
  "source": {
    "blob": "3a6795c05ab1a9d1f0676b40d881dc45c08362d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 208,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:583a07bd5f2a4d4ba47666f5483c22c77a35b8ab0558160b9914837f8a316f96",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7738fadc10531193761af00cb2cb745f98d425d1e969c718f33947451c1bb2ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isUniversal' : (derivation' φ').Universal :=
  Derivation'.Universal.mk
    (fun {M'} d' ↦
      { app := fun X ↦ (d'.app X).desc
        naturality := fun {X Y} f ↦ CommRingCat.KaehlerDifferential.ext (fun b ↦ by
          dsimp
          rw [ModuleCat.Derivation.desc_d, Derivation'.app_apply]
          erw [relativeDifferentials'_map_d φ' f]
          rw [ModuleCat.Derivation.desc_d]
          dsimp
          rw [Derivation.d_map]
          dsimp) })
    (fun {M'} d' ↦ by
      ext X b
      apply ModuleCat.Derivation.desc_d)
    (fun {M} α β h ↦ by
      ext1 X
      exact CommRingCat.KaehlerDifferential.ext (Derivation.congr_d h))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant3b6824d3d08dc3fc720ff9a7e56602fd0a31973df66c40a55dfb36d2f766c36a.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a6795c05ab1a9d1f0676b40d881dc45c08362d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
