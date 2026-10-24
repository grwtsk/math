# bertrandPrimeSourceCertifiedTheorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3ef03978bf4b2e4dddb4b6dc59699ff1116de0d0b66f5722324cb9053f1fd4a",
  "kind": "def",
  "lexical_name": "bertrandPrimeSourceCertifiedTheorem",
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
  "slug": "bertrandprimesourcecertifiedtheorem--f0790a08ec7a519c1c9d1822",
  "source": {
    "blob": "27e971ff636073c568e8059e2873d6fedeaf51e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 113,
    "path": "GRWTSK/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0790a08ec7a519c1c9d1822d1d0402df460c579caf4a6d2bde1b1ffa77282e7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3ef03978bf4b2e4dddb4b6dc59699ff1116de0d0b66f5722324cb9053f1fd4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bertrandPrimeSourceCertifiedTheorem :
    CertifiedIntervalTheorem bertrandPrimeSourceProfile where
  theoremArtifact := ⟨"https://w3id.org/reflexive", "bertrand-prime-source-corollary", "1.0.0", "sha256:bertrand-prime-source-corollary-v1"⟩
  proofArtifact := ⟨"https://w3id.org/reflexive", "tt02-lean-proof", "1.0.0", "sha256:tt02-lean-proof-v1"⟩
  formalDeclaration := ⟨"https://w3id.org/reflexive", "FCRS.Transport.Theorems.tt02_bertrandPrimeSource", "1.0.0", "sha256:tt02-declaration-v1"⟩
  kernelBuildEvidence := ⟨"https://w3id.org/reflexive", "lean-kernel-build", "4.32.2", "sha256:lean-kernel-build-mathlib-905b9581"⟩
  assumptionSet := bertrandPrimeSourceProfile.assumptionSet
  theoremArtifactExact := rfl
  assumptionSetExact := rfl
  claim := bertrandPrimeSourceIntervalClaim

end FCRS.Transport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27e971ff636073c568e8059e2873d6fedeaf51e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
