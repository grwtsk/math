# MathlibProofCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65a2df13d38bdc8145d4200bc7ad7e0c50772a598b9f428af02c02de70944386",
  "kind": "structure",
  "lexical_name": "MathlibProofCertificate",
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
  "slug": "mathlibproofcertificate--925788f38b0f1b539e75b494",
  "source": {
    "blob": "721e201d5fa7d72fad1f7eb15ce5297a91e37e88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variant53c652aeee501aa166dc4f9e51d1e1344c520e252074f6aae26d3b0bb15672e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:925788f38b0f1b539e75b4948fffe243ef133c7ea4bc3c4d60b0788be05b99ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variant53c652aeee501aa166dc4f9e51d1e1344c520e252074f6aae26d3b0bb15672e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65a2df13d38bdc8145d4200bc7ad7e0c50772a598b9f428af02c02de70944386`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MathlibProofCertificate
    (Γ : BoundaryCalculus.AnalyticContext)
    (b : AnalyticBoundaryKind)
    (q : BoundaryCalculus.AnalyticClaim Γ b) where
  theoremName : String
  moduleName : String
  proof : q.statement

/--
Convert a Mathlib-backed proof certificate into the existing analytic
certificate format.

`sound` is exactly `q.statement` and `soundProof` is exactly `P.proof`. The
metadata fields contribute nothing semantic.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variant53c652aeee501aa166dc4f9e51d1e1344c520e252074f6aae26d3b0bb15672e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Certificate/Variant53c652aeee501aa166dc4f9e51d1e1344c520e252074f6aae26d3b0bb15672e9.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `721e201d5fa7d72fad1f7eb15ce5297a91e37e88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
