# mellin_thetaStrongPair_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7031867c241b9d9a76622952e585ceddbeb3917",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16adc945-0ff4-3b9a-31eb-8e06c6f9ce16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f59711e4-2b5b-ec9a-9ae1-b14e1a40e5ef",
  "kind": "theorem",
  "lexical_name": "mellin_thetaStrongPair_split",
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
  "slug": "mellin-thetastrongpair-split--0ba9684e19b6bb3cd9e2fcdf",
  "source": {
    "blob": "a7031867c241b9d9a76622952e585ceddbeb3917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 176,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ba9684e19b6bb3cd9e2fcdf0b2e51ab1723a7f598ef71910322ad500e4b8e9a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f59711e4-2b5b-ec9a-9ae1-b14e1a40e5ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mellin_thetaStrongPair_split (s : ℂ) :
    mellin thetaStrongPair.f s =
      mellin thetaUpperSource s +
        mellin thetaUpperSource ((1 / 2 : ℂ) - s) := by
  have hupper := thetaUpperSource_mellinConvergent s
  have hlower := thetaLowerSource_mellinConvergent s
  calc
    mellin thetaStrongPair.f s =
        mellin (fun x : ℝ => thetaUpperSource x + thetaLowerSource x) s := by
      unfold mellin
      apply setIntegral_congr_fun measurableSet_Ioi
      intro x hx
      dsimp only
      rw [thetaStrongPair_source_split hx, smul_add]
    _ = mellin thetaUpperSource s + mellin thetaLowerSource s :=
      (hasMellin_add hupper hlower).2
    _ = _ := by rw [mellin_thetaLowerSource]

/-- The same split, stated directly for Mathlib's pole-removed `Λ₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7031867c241b9d9a76622952e585ceddbeb3917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
