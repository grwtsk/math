# reflectedMomentIntegrand_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9cdb4b814f987450166049168fbec5a487ed6d9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ff2a198-9f90-045b-1a0e-496bd7f09e57",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f218d32e-0a86-9efc-5ce2-cfaaeb08cef3",
  "kind": "theorem",
  "lexical_name": "reflectedMomentIntegrand_integrable",
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
  "slug": "reflectedmomentintegrand-integrable--cbe648bc24ecd74b2ff6aac1",
  "source": {
    "blob": "9cdb4b814f987450166049168fbec5a487ed6d9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 91,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbe648bc24ecd74b2ff6aac173ca6bc6465c95171ccb57e830645756484e18e2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f218d32e-0a86-9efc-5ce2-cfaaeb08cef3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedMomentIntegrand_integrable
    {F : ℝ → ℝ} (hF : TwoMomentProfile F)
    (s : ℝ) :
    Integrable (reflectedMomentIntegrand F s) := by
  have hsupp :
      HasCompactSupport (fun r : ℝ => F (s - r)) := by
    have heq :
        (fun r : ℝ => F (s - r)) =
          F ∘ Homeomorph.subLeft s := by
      funext r
      rfl
    rw [heq]
    exact hF.2.1.comp_homeomorph (Homeomorph.subLeft s)
  have hc :
      Continuous (reflectedMomentIntegrand F s) := by
    unfold reflectedMomentIntegrand
    have hc := hF.1
    fun_prop
  exact hc.integrable_of_hasCompactSupport hsupp.mul_left

/-- The shifted whole-line first moment vanishes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cdb4b814f987450166049168fbec5a487ed6d9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
