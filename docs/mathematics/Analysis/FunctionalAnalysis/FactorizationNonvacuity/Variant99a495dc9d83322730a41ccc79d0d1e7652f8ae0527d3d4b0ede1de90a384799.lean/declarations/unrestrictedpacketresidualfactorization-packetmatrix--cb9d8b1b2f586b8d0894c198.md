# UnrestrictedPacketResidualFactorization.packetMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b02c77412a23f508af08d0d4bb007def3e2cdd8729d6b424f72316b65c5ea5e3",
  "kind": "def",
  "lexical_name": "UnrestrictedPacketResidualFactorization.packetMatrix",
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
  "slug": "unrestrictedpacketresidualfactorization-packetmatrix--cb9d8b1b2f586b8d0894c198",
  "source": {
    "blob": "6db4c82ae399dd166d3e694f4a895ba9e3bba599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 60,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FactorizationNonvacuity/Variant99a495dc9d83322730a41ccc79d0d1e7652f8ae0527d3d4b0ede1de90a384799.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb9d8b1b2f586b8d0894c198110f29e9737d2add60be8e4e8cab8a5caac94dca",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FactorizationNonvacuity/Variant99a495dc9d83322730a41ccc79d0d1e7652f8ae0527d3d4b0ede1de90a384799.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b02c77412a23f508af08d0d4bb007def3e2cdd8729d6b424f72316b65c5ea5e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def UnrestrictedPacketResidualFactorization.packetMatrix
    {Left Right LeftPacketSpace RightPacketSpace : Type*}
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    [NormedAddCommGroup LeftPacketSpace]
    [InnerProductSpace ℂ LeftPacketSpace]
    [CompleteSpace LeftPacketSpace]
    [NormedAddCommGroup RightPacketSpace]
    [InnerProductSpace ℂ RightPacketSpace]
    [CompleteSpace RightPacketSpace]
    {target : ℕ → Matrix Left Right ℂ}
    (factorization : UnrestrictedPacketResidualFactorization Left Right
      LeftPacketSpace RightPacketSpace target)
    (x : ℕ) : Matrix Left Right ℂ :=
  fun left right ↦
    ⟪factorization.leftSynthesis (EuclideanSpace.single left 1),
      factorization.incidence x
        (factorization.rightSynthesis
          (EuclideanSpace.single right 1))⟫_ℂ

/-- Minimal non-vacuity check: some matrix entry must actually be represented
by the packet part.  Concrete packet models should additionally prove
localization, prefix compatibility, and an independently specified residual.
-/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FactorizationNonvacuity/Variant99a495dc9d83322730a41ccc79d0d1e7652f8ae0527d3d4b0ede1de90a384799.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FactorizationNonvacuity/Variant99a495dc9d83322730a41ccc79d0d1e7652f8ae0527d3d4b0ede1de90a384799.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6db4c82ae399dd166d3e694f4a895ba9e3bba599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
