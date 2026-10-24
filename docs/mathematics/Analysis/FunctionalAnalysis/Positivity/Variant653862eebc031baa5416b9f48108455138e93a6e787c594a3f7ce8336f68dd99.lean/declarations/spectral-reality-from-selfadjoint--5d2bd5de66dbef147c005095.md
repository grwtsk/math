# spectral_reality_from_selfAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfb6fd27-5a8e-c97d-be90-7faa2dc92ba5",
  "kind": "theorem",
  "lexical_name": "spectral_reality_from_selfAdjoint",
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
  "slug": "spectral-reality-from-selfadjoint--5d2bd5de66dbef147c005095",
  "source": {
    "blob": "98ae84f3c4a2228e79182a32eaf22559f2b08a01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 90,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Positivity/Variant653862eebc031baa5416b9f48108455138e93a6e787c594a3f7ce8336f68dd99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d2bd5de66dbef147c005095df2b1ea198aa4cc3c63cf51f5c2337072fd58d95",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Positivity/Variant653862eebc031baa5416b9f48108455138e93a6e787c594a3f7ce8336f68dd99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfb6fd27-5a8e-c97d-be90-7faa2dc92ba5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectral_reality_from_selfAdjoint
    (O : RHOperatorData)
    (hD : IsSelfAdjoint O.D)
    (hReal : ∀ mu ∈ RHSpectrum O.D, mu.im = 0) :
    ∀ mu ∈ RHSpectrum O.D, mu.im = 0 :=
  spectrum_real_of_selfAdjoint O hD hReal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Positivity/Variant653862eebc031baa5416b9f48108455138e93a6e787c594a3f7ce8336f68dd99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Positivity/Variant653862eebc031baa5416b9f48108455138e93a6e787c594a3f7ce8336f68dd99.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ae84f3c4a2228e79182a32eaf22559f2b08a01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
