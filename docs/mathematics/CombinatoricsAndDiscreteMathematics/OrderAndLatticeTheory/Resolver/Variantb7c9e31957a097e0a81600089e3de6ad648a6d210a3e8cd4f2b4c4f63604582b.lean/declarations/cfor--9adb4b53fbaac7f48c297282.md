# cfor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40c8a7af48800d53f5691da2d134464e1a20314d09787ebd4c2ee4264ca439bb",
  "kind": "def",
  "lexical_name": "cfor",
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
  "slug": "cfor--9adb4b53fbaac7f48c297282",
  "source": {
    "blob": "1e202fd2f918abc26051c4a90fa1a236f126dae6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Variantb7c9e31957a097e0a81600089e3de6ad648a6d210a3e8cd4f2b4c4f63604582b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9adb4b53fbaac7f48c297282279e1f237dc01ad4925ce5794bc9f5dd7e65afde",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Variantb7c9e31957a097e0a81600089e3de6ad648a6d210a3e8cd4f2b4c4f63604582b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40c8a7af48800d53f5691da2d134464e1a20314d09787ebd4c2ee4264ca439bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cfor
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {validator :
      ClassifiedCutValidator Obligation Proof Event}
    {checker : TrustedChecker Obligation Proof}
    (profile :
      ResolverProfile Obligation Proof Event validator checker)
    (cut : InvocationCut Obligation Proof Event) :
    CertifiedResolution profile cut :=
  match validateCut validator cut with
  | .invalid failure invalid =>
      .rejected failure invalid
  | .valid valid =>
      if closed :
          unresolved
            cut.obligations checker cut.proofRegistry = ∅ then
        let certificate :=
          fixedCertificateOfUnresolvedEmpty
            cut.obligations checker cut.proofRegistry closed
        .solved valid
          (profile.buildSolution cut certificate)
          certificate
      else
        let nonempty :=
          Finset.nonempty_iff_ne_empty.mpr closed
        let certificate :
            FrontierCertificate
              (unresolved
                cut.obligations checker cut.proofRegistry) :=
          {
            nonempty
            schedulingOnly := True
            schedulingOnly_proved := True.intro
          }
        .unknown valid
          (profile.firstPacket cut nonempty)
          (profile.continuation cut nonempty)
          certificate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Variantb7c9e31957a097e0a81600089e3de6ad648a6d210a3e8cd4f2b4c4f63604582b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Resolver/Variantb7c9e31957a097e0a81600089e3de6ad648a6d210a3e8cd4f2b4c4f63604582b.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e202fd2f918abc26051c4a90fa1a236f126dae6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
