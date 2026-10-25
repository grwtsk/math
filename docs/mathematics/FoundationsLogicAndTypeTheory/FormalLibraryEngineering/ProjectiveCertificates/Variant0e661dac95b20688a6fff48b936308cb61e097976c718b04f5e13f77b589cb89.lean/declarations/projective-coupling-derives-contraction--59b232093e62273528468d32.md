# projective_coupling_derives_contraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9efc08e4-1920-650c-4104-ac1a7c20ee8a",
  "kind": "theorem",
  "lexical_name": "projective_coupling_derives_contraction",
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
  "slug": "projective-coupling-derives-contraction--59b232093e62273528468d32",
  "source": {
    "blob": "21bdd0a937e568dc588c1bf82fdfe787cfa584ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProjectiveCertificates/Variant0e661dac95b20688a6fff48b936308cb61e097976c718b04f5e13f77b589cb89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59b232093e62273528468d320a76a02f3efae7b52def3eefd7a69894e75403a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProjectiveCertificates/Variant0e661dac95b20688a6fff48b936308cb61e097976c718b04f5e13f77b589cb89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9efc08e4-1920-650c-4104-ac1a7c20ee8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem projective_coupling_derives_contraction
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {kernel :
      ProjectiveLimitKernel
        (uLimitLaw := uLimitLaw) system}
    (certificate :
      ProjectiveContractiveCoupling
        (uCoupling := uCoupling) kernel)
    (schedule : CompatibleSchedule system)
    (left right : kernel.Law) :
    kernel.wasserstein
        (kernel.push schedule left)
        (kernel.push schedule right) ≤
      system.uniformContraction *
        kernel.wasserstein left right :=
  le_trans
    (certificate.couplingBoundsWasserstein
      schedule left right)
    (le_trans
      (certificate.pushedCostContracts
        schedule
        (certificate.choose left right))
      (mul_le_mul_left'
        (certificate.initialCostBound left right)
        system.uniformContraction))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProjectiveCertificates/Variant0e661dac95b20688a6fff48b936308cb61e097976c718b04f5e13f77b589cb89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProjectiveCertificates/Variant0e661dac95b20688a6fff48b936308cb61e097976c718b04f5e13f77b589cb89.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21bdd0a937e568dc588c1bf82fdfe787cfa584ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
