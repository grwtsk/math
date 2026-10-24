# sourceEnergy_re_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bdf3a88-e8d4-21ef-b311-89347235d3de",
  "kind": "theorem",
  "lexical_name": "sourceEnergy_re_inner",
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
  "slug": "sourceenergy-re-inner--3aabc84d1984f56c0d479672",
  "source": {
    "blob": "d9065d5d9052285331e6b3297386e45a5fad3f97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 291,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationCombined/Variant6992c484a37fe912a44914dee405cea920552f98d72c3a0c5e9735033b651774.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3aabc84d1984f56c0d47967232db49a91e21aff0275981b11752320c0266eb65",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceResolventTruncationCombined/Variant6992c484a37fe912a44914dee405cea920552f98d72c3a0c5e9735033b651774.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bdf3a88-e8d4-21ef-b311-89347235d3de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceEnergy_re_inner (f : H) :
    (inner ℂ f (sourceEnergy f)).re = ‖sourceOperator.adjoint f‖ ^ 2 := by
  rw [sourceEnergy_inner]
  exact (norm_sq_eq_re_inner (𝕜 := ℂ) (sourceOperator.adjoint f)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceResolventTruncationCombined/Variant6992c484a37fe912a44914dee405cea920552f98d72c3a0c5e9735033b651774.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationCombined/Variant6992c484a37fe912a44914dee405cea920552f98d72c3a0c5e9735033b651774.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9065d5d9052285331e6b3297386e45a5fad3f97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
