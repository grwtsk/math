# ClaimCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b392cb8e338902bb24ab8b5293ebe40ddc7882ea456103f2f0ada88717911b1d",
  "kind": "inductive",
  "lexical_name": "ClaimCertificate",
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
  "slug": "claimcertificate--30b5ec07c30c8c5fdc81d57c",
  "source": {
    "blob": "09e772a64f1e346035c548df91c4dc08ce622c85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Scope/Variantf2b458a313b1c1c6a4562cd43812cca35cb5cc55db9e18a3cc3d8d60eee56a77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30b5ec07c30c8c5fdc81d57cfef3dafc35dce9560cd49c17e888cd7c66ef8689",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Scope/Variantf2b458a313b1c1c6a4562cd43812cca35cb5cc55db9e18a3cc3d8d60eee56a77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b392cb8e338902bb24ab8b5293ebe40ddc7882ea456103f2f0ada88717911b1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ClaimCertificate (p : Prop) : ClaimAuthority → Type where
  | kernelProved (proof : p) :
      ClaimCertificate p .kernelProvedArithmetic
  | conditional
      (hypothesis : Prop)
      (derivation : hypothesis → p) :
      ClaimCertificate p .conditionalSmoothCapability
  | unsubmitted :
      ClaimCertificate p .explicitlyUnsubmitted

/-- Direct proof extraction is available exactly for kernel-proved claims. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Scope/Variantf2b458a313b1c1c6a4562cd43812cca35cb5cc55db9e18a3cc3d8d60eee56a77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Scope/Variantf2b458a313b1c1c6a4562cd43812cca35cb5cc55db9e18a3cc3d8d60eee56a77.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09e772a64f1e346035c548df91c4dc08ce622c85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
