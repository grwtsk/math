# UnifiedResolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42d56e7f53a5a54182be2f54469e5c84283f8fd21d8fca2302e7d5d8eaaf3d60",
  "kind": "inductive",
  "lexical_name": "UnifiedResolution",
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
  "slug": "unifiedresolution--b685b645d218892abf892b81",
  "source": {
    "blob": "19b982eb3591d2dce6e577b0ebd9796385281b7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 58,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Unified/Variant2db1060ba6a236a78b5d7059c00e4389f3a682a7e1e2debd8fc305bd4116c9d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b685b645d218892abf892b8184ff8a537a2ce385ac35a3bef2b8038eabb02d00",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Unified/Variant2db1060ba6a236a78b5d7059c00e4389f3a682a7e1e2debd8fc305bd4116c9d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42d56e7f53a5a54182be2f54469e5c84283f8fd21d8fca2302e7d5d8eaaf3d60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive UnifiedResolution
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {checker : TrustedChecker Obligation Proof}
    (validator : ContextCutValidator Obligation Proof Event)
    (base : ContextResolverProfile Obligation Proof Event checker)
    (domain :
      UnifiedDomainProfile Obligation Proof Event checker base)
    (cut : ContextBoundCut Obligation Proof Event)
  | solved
      (valid : validator.Valid cut)
      (baseSolution : base.Solution)
      (baseCertificate :
        FixedCertificate
          cut.core.obligations checker cut.core.proofRegistry)
      (candidate : UnifiedCandidate (domain.binding cut))
  | unknownAuthority
      (valid : validator.Valid cut)
      (packet : base.Packet)
      (next :
        Continuation (AuthenticatedToken base.authenticator))
      (certificate :
        FrontierCertificate
          (unresolved cut.core.obligations checker
            cut.core.proofRegistry))
  | unknownDomain
      (valid : validator.Valid cut)
      (kind : UnifiedUnknownKind)
      (packet : domain.DomainPacket)
  | rejected
      (failure : CutFailure)
      (invalid : ¬ validator.Valid cut)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Unified/Variant2db1060ba6a236a78b5d7059c00e4389f3a682a7e1e2debd8fc305bd4116c9d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Unified/Variant2db1060ba6a236a78b5d7059c00e4389f3a682a7e1e2debd8fc305bd4116c9d7.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19b982eb3591d2dce6e577b0ebd9796385281b7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
