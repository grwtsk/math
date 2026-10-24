# NormedSpace.restrictScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0afc3f4afb8ca91d4366e63870c28877733a779818ca86809a0a6bf38051c795",
  "kind": "abbrev",
  "lexical_name": "NormedSpace.restrictScalars",
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
  "slug": "normedspace-restrictscalars--94b3f0433a5850a3537ba5f5",
  "source": {
    "blob": "4c77fe8ce4676de7bd21c3a0f6adf1017168bdcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 441,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant52a7c99e112cc29f39c5f0b2dedb1d645c74a6ee6e13872d51f5cb894320631f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94b3f0433a5850a3537ba5f5b048d862099c0cd17fb61a3f754e307867f22cc9",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant52a7c99e112cc29f39c5f0b2dedb1d645c74a6ee6e13872d51f5cb894320631f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0afc3f4afb8ca91d4366e63870c28877733a779818ca86809a0a6bf38051c795`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev NormedSpace.restrictScalars : NormedSpace 𝕜 E :=
  RestrictScalars.normedSpace _ 𝕜' E

end NormedSpace

section NormedAlgebra

variable (𝕜 𝕜' E)
variable [NormedField 𝕜] [NormedField 𝕜'] [NormedAlgebra 𝕜 𝕜']
  [SeminormedRing E] [NormedAlgebra 𝕜' E]

/-- If `E` is a normed algebra over `𝕜'` and `𝕜` is a normed algebra over `𝕜'`, then
`RestrictScalars.module` is additionally a `NormedAlgebra`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant52a7c99e112cc29f39c5f0b2dedb1d645c74a6ee6e13872d51f5cb894320631f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant52a7c99e112cc29f39c5f0b2dedb1d645c74a6ee6e13872d51f5cb894320631f.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c77fe8ce4676de7bd21c3a0f6adf1017168bdcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
