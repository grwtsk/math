# norm_apply_eq_norm_coef

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aef535125b4a6f5c4998ba4aa9e52fcc599c4be9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 335,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/5549e12904fbb123ad1bafc58727fd24b191daff43ebff307505684578fa468b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7caddb2-bb53-d835-be45-0c05ed237b88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc30cc1a-2a4d-8cc1-ad70-19eb5a36f92d",
  "kind": "theorem",
  "lexical_name": "norm_apply_eq_norm_coef",
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
  "slug": "norm-apply-eq-norm-coef--f61b7c175274876a5cace7de",
  "source": {
    "blob": "aef535125b4a6f5c4998ba4aa9e52fcc599c4be9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 335,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FormalMultilinearSeries/Variant5549e12904fbb123ad1bafc58727fd24b191daff43ebff307505684578fa468b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f61b7c175274876a5cace7deb3b084c6a9af50ad6cbe3d800bf71b9e3668176e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FormalMultilinearSeries/Variant5549e12904fbb123ad1bafc58727fd24b191daff43ebff307505684578fa468b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc30cc1a-2a4d-8cc1-ad70-19eb5a36f92d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_apply_eq_norm_coef : ‖p n‖ = ‖coeff p n‖ := by
  rw [← mkPiRing_coeff_eq p, ContinuousMultilinearMap.norm_mkPiRing]

end Coef

section Fslope

variable [NontriviallyNormedField 𝕜] [NormedAddCommGroup E] [NormedSpace 𝕜 E]
  {p : FormalMultilinearSeries 𝕜 𝕜 E} {n : ℕ}

/-- The formal counterpart of `dslope`, corresponding to the expansion of `(f z - f 0) / z`. If `f`
has `p` as a power series, then `dslope f` has `fslope p` as a power series. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FormalMultilinearSeries/Variant5549e12904fbb123ad1bafc58727fd24b191daff43ebff307505684578fa468b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FormalMultilinearSeries/Variant5549e12904fbb123ad1bafc58727fd24b191daff43ebff307505684578fa468b.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aef535125b4a6f5c4998ba4aa9e52fcc599c4be9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
