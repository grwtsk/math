# initial_pairing_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93b3e1df1edd6d6f55a291a43f55be52f3387428",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67d04c3f-591b-860f-6385-72231bca3815",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a38ab2c-fe7b-3206-6bbc-1601761cbff4",
  "kind": "theorem",
  "lexical_name": "initial_pairing_identity",
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
  "slug": "initial-pairing-identity--ed84630c3c29ebb7a8a25951",
  "source": {
    "blob": "93b3e1df1edd6d6f55a291a43f55be52f3387428",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 132,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed84630c3c29ebb7a8a25951fa80d542ce03cd0a402ac220a5a7c2dc53f65b38",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a38ab2c-fe7b-3206-6bbc-1601761cbff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem initial_pairing_identity (G : ℝ → ℝ) (hG : ContDiff ℝ 1 G) :
    -(∫ s in (0 : ℝ)..Real.log 3, weightedMobiusPrimitive s * deriv G s) =
      G 0 - G (Real.log 2) / Real.sqrt 2 -
        (1 - 1 / Real.sqrt 2) * G (Real.log 3) := by
  have h2 : 0 ≤ Real.log 2 := Real.log_nonneg (by norm_num)
  have h23 : Real.log 2 ≤ Real.log 3 := Real.log_le_log (by norm_num) (by norm_num)
  have hint (a b : ℝ) : IntervalIntegrable (deriv G) volume a b :=
    (hG.continuous_deriv (by norm_num)).intervalIntegrable a b
  have hi1 : IntervalIntegrable (fun s => weightedMobiusPrimitive s * deriv G s)
      volume 0 (Real.log 2) := by
    apply (hint 0 (Real.log 2)).congr_uIoo
    intro s hs
    rw [uIoo_of_le h2] at hs
    dsimp only
    rw [weightedMobiusPrimitive_eq_one hs.1.le hs.2, one_mul]
  have hi2 : IntervalIntegrable (fun s => weightedMobiusPrimitive s * deriv G s)
      volume (Real.log 2) (Real.log 3) := by
    apply ((hint (Real.log 2) (Real.log 3)).const_mul (1 - 1 / Real.sqrt 2)).congr_uIoo
    intro s hs
    rw [uIoo_of_le h23] at hs
    dsimp only
    rw [weightedMobiusPrimitive_eq_one_sub_two hs.1.le hs.2]
  rw [← intervalIntegral.integral_add_adjacent_intervals hi1 hi2,
    first_block_integral G hG, second_block_integral G hG]
  ring

/-- Prime two strictly decreases the effective length of the initial signed
pairing below the unweighted interval length log 3. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93b3e1df1edd6d6f55a291a43f55be52f3387428` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
