# preserves_target_invariants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ca50aec42be4f9e4676b3dd60790b24798d28e3a3ebe45817ee5f8fa4b93be2",
  "kind": "def",
  "lexical_name": "preserves_target_invariants",
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
  "slug": "preserves-target-invariants--9574a2931dcef991012e7427",
  "source": {
    "blob": "70f25ff6dfb43163365d1ce8f6764c619e617f17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 176,
    "path": "GRWTSK/Algebra/LinearAlgebra/ProjectionDepth/Variante617f90366d73a75d920a0043217882800b0a1c399d0696750c19c084ebdb4e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9574a2931dcef991012e74278bcea2238e05f09e61a3b34a51a596458b885d57",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ProjectionDepth/Variante617f90366d73a75d920a0043217882800b0a1c399d0696750c19c084ebdb4e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ca50aec42be4f9e4676b3dd60790b24798d28e3a3ebe45817ee5f8fa4b93be2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preserves_target_invariants
    (Err : ProjectionErrors)
    (M : InvariantMargins)
    (kappa : Nat)
    (h : AdmissibleKappa Err M kappa) :
    PreservesTargetInvariants Err M kappa where
  positiveScale := h.positiveScale
  errorBelowMargin := h.errorBelowMargin
  booleanSupportPreserved := h.booleanCapacityOK
  dyadicRefinementPreserved := h.dyadicRefinementOK
  spectralClassesPreserved := h.spectralProjectionOK
  determinantDecisionPreserved := h.determinantSurrogateOK
  externalTracePreserved := h.externalTraceOK

/-- Public finite statement for a projection-depth-aware proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ProjectionDepth/Variante617f90366d73a75d920a0043217882800b0a1c399d0696750c19c084ebdb4e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ProjectionDepth/Variante617f90366d73a75d920a0043217882800b0a1c399d0696750c19c084ebdb4e3.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70f25ff6dfb43163365d1ce8f6764c619e617f17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
