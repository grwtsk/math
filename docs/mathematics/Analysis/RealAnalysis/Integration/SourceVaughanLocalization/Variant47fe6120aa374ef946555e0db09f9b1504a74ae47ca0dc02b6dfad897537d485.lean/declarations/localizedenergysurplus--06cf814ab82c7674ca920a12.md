# localizedEnergySurplus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fa9d8c9a3af9de9c37112f0e3f525dd5281e304796c9f7eb210e87db26f19d4",
  "kind": "def",
  "lexical_name": "localizedEnergySurplus",
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
  "slug": "localizedenergysurplus--06cf814ab82c7674ca920a12",
  "source": {
    "blob": "09af7426b7522213644bfe7a8667fe92e4b50184",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 171,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceVaughanLocalization/Variant47fe6120aa374ef946555e0db09f9b1504a74ae47ca0dc02b6dfad897537d485.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06cf814ab82c7674ca920a12095f7167bf128e270a6d99fb1cf413da330ba2a8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceVaughanLocalization/Variant47fe6120aa374ef946555e0db09f9b1504a74ae47ca0dc02b6dfad897537d485.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8fa9d8c9a3af9de9c37112f0e3f525dd5281e304796c9f7eb210e87db26f19d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def localizedEnergySurplus (A : ℝ) : ℝ :=
  localizedPlusEnergy A - localizedMinusEnergy A -
    4 * (centeredDeletedDiagonal A + independentMainTerm A)

/-- Localization preserves the old exact signed surplus, without separate sector estimates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceVaughanLocalization/Variant47fe6120aa374ef946555e0db09f9b1504a74ae47ca0dc02b6dfad897537d485.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceVaughanLocalization/Variant47fe6120aa374ef946555e0db09f9b1504a74ae47ca0dc02b6dfad897537d485.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09af7426b7522213644bfe7a8667fe92e4b50184` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
