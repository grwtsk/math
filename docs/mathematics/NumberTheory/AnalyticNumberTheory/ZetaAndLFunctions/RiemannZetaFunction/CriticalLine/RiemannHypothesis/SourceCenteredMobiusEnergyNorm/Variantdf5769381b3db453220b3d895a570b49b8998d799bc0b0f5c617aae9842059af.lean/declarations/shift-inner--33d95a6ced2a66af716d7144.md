# shift_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58a1228df1b295aa73e8645ce6d2488cc01ecce4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df5769381b3db453220b3d895a570b49b8998d799bc0b0f5c617aae9842059af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd53c462-a379-3af2-604f-d3609b3562ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fd14d47-9a84-ac8b-7f1b-84e36161b591",
  "kind": "theorem",
  "lexical_name": "shift_inner",
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
  "slug": "shift-inner--33d95a6ced2a66af716d7144",
  "source": {
    "blob": "58a1228df1b295aa73e8645ce6d2488cc01ecce4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusEnergyNorm/Variantdf5769381b3db453220b3d895a570b49b8998d799bc0b0f5c617aae9842059af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33d95a6ced2a66af716d7144b45cee9bdaf695ce832aeaf909dc775908d81f26",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusEnergyNorm/Variantdf5769381b3db453220b3d895a570b49b8998d799bc0b0f5c617aae9842059af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fd14d47-9a84-ac8b-7f1b-84e36161b591`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem shift_inner (A : ℝ) (hp : 0 < A) (a b : ℝ) :
    ⟪shift A hp a, shift A hp b⟫_ℝ =
      sourceCorrelation explicitSecondDerivative A (b - a) := by
  rw [L2.inner_def]
  calc
    _ = ∫ x : ℝ, normalizedTest explicitSecondDerivative A (x + a) *
        normalizedTest explicitSecondDerivative A (x + b) := by
      apply integral_congr_ae
      filter_upwards [shift_coe A hp a, shift_coe A hp b] with x ha hb
      rw [ha, hb, Real.inner_apply]
    _ = ∫ x : ℝ, normalizedTest explicitSecondDerivative A (x + b) *
        normalizedTest explicitSecondDerivative A (x + b - (b - a)) := by
      apply integral_congr_ae
      filter_upwards [] with x
      rw [show x + b - (b - a) = x + a by ring]
      ring
    _ = _ := integral_add_right_eq_self
      (fun x : ℝ => normalizedTest explicitSecondDerivative A x *
        normalizedTest explicitSecondDerivative A (x - (b - a))) b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusEnergyNorm/Variantdf5769381b3db453220b3d895a570b49b8998d799bc0b0f5c617aae9842059af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusEnergyNorm/Variantdf5769381b3db453220b3d895a570b49b8998d799bc0b0f5c617aae9842059af.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58a1228df1b295aa73e8645ce6d2488cc01ecce4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
