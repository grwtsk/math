# bertrandPrimeSourceRefines

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5215a9ea67611f6c8cb265f91b5f90edae3a96688831bee610aed333871946e0",
  "kind": "def",
  "lexical_name": "bertrandPrimeSourceRefines",
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
  "slug": "bertrandprimesourcerefines--ce1197889ad5eaad3df8f7d0",
  "source": {
    "blob": "27e971ff636073c568e8059e2873d6fedeaf51e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 91,
    "path": "GRWTSK/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce1197889ad5eaad3df8f7d0b11df4cc52329be8a281efc5a071247e2b0aec85",
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

Occurrence: `declaration:5215a9ea67611f6c8cb265f91b5f90edae3a96688831bee610aed333871946e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bertrandPrimeSourceRefines :
    ProfileRefines bertrandProfile bertrandPrimeSourceProfile where
  adapterArtifact := ⟨"https://w3id.org/reflexive", "bertrand-prime-source-adapter", "1.0.0", "sha256:bertrand-prime-source-adapter-v1"⟩
  proofArtifact := ⟨"https://w3id.org/reflexive", "bertrand-prime-source-adapter-proof", "1.0.0", "sha256:bertrand-prime-source-adapter-proof-v1"⟩
  comparisonScope := bertrandPrimeSourceProfile.assumptionSet
  comparisonScopeExact := rfl
  domainCoverage := by
    intro p hp
    exact hp.2
  admissiblePreserved := by
    intro p q hp hq
    change (Nat.Prime p ∧ 1 < p) ∧
      (p < q ∧ q < 2 * p) ∧ Nat.Prime q
    change 1 < p ∧ (p < q ∧ q < 2 * p) ∧ Nat.Prime q at hq
    exact ⟨hp, hq.2⟩

/-- The prime-source claim is separately packaged after the full theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27e971ff636073c568e8059e2873d6fedeaf51e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
