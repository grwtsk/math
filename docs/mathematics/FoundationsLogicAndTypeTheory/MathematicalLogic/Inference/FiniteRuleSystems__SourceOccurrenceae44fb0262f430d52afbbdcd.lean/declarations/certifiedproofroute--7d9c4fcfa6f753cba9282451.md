# CertifiedProofRoute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8270c327f7f75336d97987d82bdc19816fd0c4a45ff52bb1cd2687dd7d08bb80",
  "kind": "structure",
  "lexical_name": "CertifiedProofRoute",
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
  "slug": "certifiedproofroute--7d9c4fcfa6f753cba9282451",
  "source": {
    "blob": "a257229bd43026937b34cc93486075286e2ab0fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 205,
    "path": "GRWTSK/Logic/Inference/FiniteRuleSystems.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d9c4fcfa6f753cba9282451ab0564c88d90f7d8ef9bb26edc1436abc473dde5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8270c327f7f75336d97987d82bdc19816fd0c4a45ff52bb1cd2687dd7d08bb80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CertifiedProofRoute (Artifact : Type u) (Revision : Type v) (Claim : Type w)
    (Target : SourceSnapshot Artifact Revision → Claim → Prop) where
  route : ProofRoute Claim
  certificate : RevisionCertificate Artifact Revision (fun snapshot ↦
    (∀ prerequisite ∈ route.premises, Target snapshot prerequisite) →
      Target snapshot route.conclusion)

section CertificateSupport

variable {Artifact : Type u} {Revision : Type v} {Claim : Type w} {Provider : Type x}
  [DecidableEq Revision] [DecidableEq Claim] [DecidableEq Provider]

/-- Declared finite revision reads have an executable equality check. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/Inference/FiniteRuleSystems.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a257229bd43026937b34cc93486075286e2ab0fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
