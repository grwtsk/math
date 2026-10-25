# projective_coupling_derives_contraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3d263068119a95a5ddb0aa90a16a8b55d95d0f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f20e144fc01e9e82e79fad0fa6a4d1ffb833ba1438930234ab2d665bdf1abd8b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82787971-a336-b481-d4a8-0aa874ab6afc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a665c4c-75e9-52de-b84d-bf1d2f94c17e",
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
  "slug": "projective-coupling-derives-contraction--3ec515966e4550b38d25c252",
  "source": {
    "blob": "a3d263068119a95a5ddb0aa90a16a8b55d95d0f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProjectiveCertificates/Variantf20e144fc01e9e82e79fad0fa6a4d1ffb833ba1438930234ab2d665bdf1abd8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ec515966e4550b38d25c25216e76bf523dc53725acb8c62b25c5a9b0749efde",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProjectiveCertificates/Variantf20e144fc01e9e82e79fad0fa6a4d1ffb833ba1438930234ab2d665bdf1abd8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a665c4c-75e9-52de-b84d-bf1d2f94c17e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–121.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProjectiveCertificates/Variantf20e144fc01e9e82e79fad0fa6a4d1ffb833ba1438930234ab2d665bdf1abd8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProjectiveCertificates/Variantf20e144fc01e9e82e79fad0fa6a4d1ffb833ba1438930234ab2d665bdf1abd8b.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3d263068119a95a5ddb0aa90a16a8b55d95d0f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
