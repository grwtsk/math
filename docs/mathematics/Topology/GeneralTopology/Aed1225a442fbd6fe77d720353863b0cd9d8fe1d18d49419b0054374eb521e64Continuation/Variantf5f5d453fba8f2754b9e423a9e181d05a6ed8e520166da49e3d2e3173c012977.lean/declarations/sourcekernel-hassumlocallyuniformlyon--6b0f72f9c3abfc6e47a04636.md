# sourceKernel_hasSumLocallyUniformlyOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cb9d929-9010-1949-1ae3-b3853be484aa",
  "kind": "theorem",
  "lexical_name": "sourceKernel_hasSumLocallyUniformlyOn",
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
  "slug": "sourcekernel-hassumlocallyuniformlyon--6b0f72f9c3abfc6e47a04636",
  "source": {
    "blob": "1438693e0fb6181391a2722f10f83edca2e1457f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 710,
    "line": 697,
    "path": "GRWTSK/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantf5f5d453fba8f2754b9e423a9e181d05a6ed8e520166da49e3d2e3173c012977.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b0f72f9c3abfc6e47a0463672b5ee55fa93579f40c23a4fbda75f1efcdf8587",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantf5f5d453fba8f2754b9e423a9e181d05a6ed8e520166da49e3d2e3173c012977.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cb9d929-9010-1949-1ae3-b3853be484aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 697–710.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceKernel_hasSumLocallyUniformlyOn :
    HasSumLocallyUniformlyOn
      (fun o : ZeroOccurrence ↦
        sourceKernel (shiftedValue o))
      (fun s ↦
        ∑' o : ZeroOccurrence,
          sourceKernel (shiftedValue o) s)
      convergenceDomain :=
  hasSumLocallyUniformlyOn_of_forall_compact
    isOpen_convergenceDomain
    (fun K hKD hK ↦
      sourceKernel_hasSumUniformlyOn_compact K hK hKD)

/-- The candidate-free continued occurrence sum is analytic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantf5f5d453fba8f2754b9e423a9e181d05a6ed8e520166da49e3d2e3173c012977.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantf5f5d453fba8f2754b9e423a9e181d05a6ed8e520166da49e3d2e3173c012977.lean#L697).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1438693e0fb6181391a2722f10f83edca2e1457f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
