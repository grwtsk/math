# Universal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fec6540fc2669f65a839703e4bf9a51db3c9d12f51cd08fee5c536aa9b8e8e89",
  "kind": "structure",
  "lexical_name": "Universal",
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
  "slug": "universal--1a47c28ec2adb3f6c0362f3c",
  "source": {
    "blob": "0a523d59b7c91120450ed1474a7d7a1b96d9e51a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant83de36b20e2be112723b71fc203beb1d043a04ffaed65788f84207bbca6a602c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a47c28ec2adb3f6c0362f3c5256df74be56fb0108ca4bb9bf204fb25e105474",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant83de36b20e2be112723b71fc203beb1d043a04ffaed65788f84207bbca6a602c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fec6540fc2669f65a839703e4bf9a51db3c9d12f51cd08fee5c536aa9b8e8e89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Universal where
  /-- An absolute derivation of `M'` descends as a morphism `M ⟶ M'`. -/
  desc {M' : PresheafOfModulesOfCommRing.{v} R}
    (d' : M'.Derivation φ) : M ⟶ M'
  fac {M' : PresheafOfModulesOfCommRing.{v} R}
    (d' : M'.Derivation φ) : d.postcomp (desc d') = d' := by cat_disch
  postcomp_injective {M' : PresheafOfModulesOfCommRing.{v} R}
    (φ φ' : M ⟶ M') (h : d.postcomp φ = d.postcomp φ') : φ = φ' := by cat_disch

attribute [simp] Universal.fac

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant83de36b20e2be112723b71fc203beb1d043a04ffaed65788f84207bbca6a602c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant83de36b20e2be112723b71fc203beb1d043a04ffaed65788f84207bbca6a602c.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a523d59b7c91120450ed1474a7d7a1b96d9e51a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
