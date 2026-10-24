# action_norm_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8a8a42a-905c-c93c-d1e4-443b489005bb",
  "kind": "theorem",
  "lexical_name": "action_norm_sq_le",
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
  "slug": "action-norm-sq-le--758c918a798fdecebed11e67",
  "source": {
    "blob": "bb52c9810622fd903bc594b13b9615d4d1078eb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 171,
    "path": "GRWTSK/NumberTheory/VonMangoldt/ComplexReadout.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:758c918a798fdecebed11e67a0af63647c906a066857cf990ec54f94f88167a1",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8a8a42a-905c-c93c-d1e4-443b489005bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem action_norm_sq_le {X : ℕ} (hX : 0 < X) :
    ‖action X φ.value‖^2 ≤ augmentedEnergy X * testEnergy φ := by
  have hr := realAction_sq_bound (reTest φ) hX
  have hi := realAction_sq_bound (imTest φ) hX
  have hsplit : testEnergy φ =
      ((φ.value 0).re^2 + (φ.value 1-φ.value 0).re^2 +
        ∫ t, (φ.slope t).re^2 ∂unitVolume) +
      ((φ.value 0).im^2 + (φ.value 1-φ.value 0).im^2 +
        ∫ t, (φ.slope t).im^2 ∂unitVolume) := by
    unfold testEnergy
    simp_rw [complex_norm_sq]
    have hre : Integrable (fun t => (φ.slope t).re^2) unitVolume :=
      ((reTest φ).slope_continuous.pow 2).integrableOn_Icc
    have him : Integrable (fun t => (φ.slope t).im^2) unitVolume :=
      ((imTest φ).slope_continuous.pow 2).integrableOn_Icc
    rw [integral_add hre him]
    ring
  rw [complex_norm_sq, action_re, action_im, hsplit, mul_add]
  convert! add_le_add hr hi using 1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/VonMangoldt/ComplexReadout.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb52c9810622fd903bc594b13b9615d4d1078eb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
