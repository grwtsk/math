# higherPairIndices_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:112f4f5c-2d8c-2838-d387-1cc62dd8d122",
  "kind": "theorem",
  "lexical_name": "higherPairIndices_image",
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
  "slug": "higherpairindices-image--2c902048f5b7b27accefc592",
  "source": {
    "blob": "4394fd6f1b3c30b5ba84459ae0ce1828ce799ef0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 460,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticStatements/Variantbda9f2b5a1348a4293752f80c60c9a894d04f10dc1929b3659f66836141cd6ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c902048f5b7b27accefc592db0190b2a8857a200fd98e4fa9491d13e00567b8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticStatements/Variantbda9f2b5a1348a4293752f80c60c9a894d04f10dc1929b3659f66836141cd6ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:112f4f5c-2d8c-2838-d387-1cc62dd8d122`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherPairIndices_image (A : ℝ) :
    (higherPairIndices A).image powerIndex = higherPrimePowerIndices A := by
  classical
  ext n
  constructor
  · rintro hn
    obtain ⟨q, hq, rfl⟩ := Finset.mem_image.mp hn
    exact Finset.mem_preimage.mp hq
  · intro hn
    obtain ⟨p, k, hp, hk, hpn⟩ := (Finset.mem_filter.mp hn).2
    let q : HigherPowerIndex := (⟨p, hp⟩, ⟨k, hk⟩)
    have hq : powerIndex q = n := hpn
    exact Finset.mem_image.mpr ⟨q, Finset.mem_preimage.mpr (hq ▸ hn), hq⟩

/-- Genuine finite reindexing retains each original Mangoldt/square-root/correlation term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticStatements/Variantbda9f2b5a1348a4293752f80c60c9a894d04f10dc1929b3659f66836141cd6ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticStatements/Variantbda9f2b5a1348a4293752f80c60c9a894d04f10dc1929b3659f66836141cd6ad.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4394fd6f1b3c30b5ba84459ae0ce1828ce799ef0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
