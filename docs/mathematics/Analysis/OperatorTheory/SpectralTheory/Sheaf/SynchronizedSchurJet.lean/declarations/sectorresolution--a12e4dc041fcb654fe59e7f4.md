# SectorResolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7666d5c79a0c0c361cf0ee3b27a311210218c8d9fd56604c4372fb2c216f2ab6",
  "kind": "structure",
  "lexical_name": "SectorResolution",
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
  "slug": "sectorresolution--a12e4dc041fcb654fe59e7f4",
  "source": {
    "blob": "1decd0fe306f36157a1acfef1b12a92440e5066e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 62,
    "path": "GRWTSK/Spectral/Sheaf/SynchronizedSchurJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a12e4dc041fcb654fe59e7f4e32f5c634a2189a2bac628bd9f999c0e35b23404",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7666d5c79a0c0c361cf0ee3b27a311210218c8d9fd56604c4372fb2c216f2ab6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SectorResolution
    (ι : Type*) [Fintype ι] [DecidableEq ι]
    (order : ℕ) (jet : JetCertificate ι order) where
  sectorDimension : Sector → ℕ
  sectorMatrix : ∀ sector, ℂ →
    Matrix (Fin (sectorDimension sector)) (Fin (sectorDimension sector)) ℂ
  determinant_factorization : ∀ z,
    (jet.effective z).det = ∏ sector, (sectorMatrix sector z).det

namespace SectorResolution

variable {ι : Type*} [Fintype ι] [DecidableEq ι]
  {order : ℕ} {jet : JetCertificate ι order}

/-- The effective determinant vanishes exactly when one synchronized sector block vanishes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/Sheaf/SynchronizedSchurJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Spectral/Sheaf/SynchronizedSchurJet.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1decd0fe306f36157a1acfef1b12a92440e5066e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
