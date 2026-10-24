# logResidual_positive_integral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13c0ba8320f9b0f96c99c100ce8986b0af025ae1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f25e198-1528-fa8a-6c88-d98bb5064681",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd460e61-09c8-44f4-1a02-fccac4a82f60",
  "kind": "theorem",
  "lexical_name": "logResidual_positive_integral_le",
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
  "slug": "logresidual-positive-integral-le--764beffa58135658f9dd0307",
  "source": {
    "blob": "13c0ba8320f9b0f96c99c100ce8986b0af025ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 135,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:764beffa58135658f9dd0307c896084881cbee9606f75f4d97ed4a9689e3e126",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd460e61-09c8-44f4-1a02-fccac4a82f60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logResidual_positive_integral_le (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)
    (Y : ℝ) (hY : 1 ≤ Y) :
    (∫ u : ℝ in Ioi (Real.log Y), ‖logResidual X ε u‖ ^ 2) ≤
      (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) ^ 2 / Y := by
  have hm := logResidual_memLp X ε hX
  have hi := (memLp_two_iff_integrable_sq_norm hm.aestronglyMeasurable).mp hm
  calc
    _ ≤ ∫ u : ℝ in Ioi (Real.log Y), Real.exp (-u) *
        (1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d|) ^ 2 := by
      apply integral_mono_ae hi.integrableOn ((integrableOn_exp_neg_Ioi _).mul_const _)
      filter_upwards [] with u
      exact logResidual_sq_le X ε u
    _ = _ := by
      rw [integral_mul_const, integral_exp_neg_Ioi, Real.exp_neg,
        Real.exp_log (lt_of_lt_of_le zero_lt_one hY)]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13c0ba8320f9b0f96c99c100ce8986b0af025ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
