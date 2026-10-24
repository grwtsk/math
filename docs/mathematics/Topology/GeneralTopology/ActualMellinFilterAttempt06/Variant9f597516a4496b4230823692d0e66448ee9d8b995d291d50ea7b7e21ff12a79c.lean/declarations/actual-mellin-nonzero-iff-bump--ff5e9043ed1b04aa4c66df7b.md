# actual_mellin_nonzero_iff_bump

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b62791e-21ec-87e9-0b25-888d978882ab",
  "kind": "theorem",
  "lexical_name": "actual_mellin_nonzero_iff_bump",
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
  "slug": "actual-mellin-nonzero-iff-bump--ff5e9043ed1b04aa4c66df7b",
  "source": {
    "blob": "5de42abe934d89dad924f1021adb37c7c027eaad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff5e9043ed1b04aa4c66df7b3cb49c340cc5d7a975885efae10ccece4de15b3a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b62791e-21ec-87e9-0b25-888d978882ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_mellin_nonzero_iff_bump {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hs0 : s ≠ 0) (hs1 : s ≠ 1) :
    mellin (fun x => (actualLogSource A x : ℂ)) s ≠ 0 ↔
      primitiveTransform A (s-1/2) ≠ 0 := by
  have hz := (Real.sqrt_pos.mpr (source_normalization_pos A hA)).ne'
  rw [actual_mellin_pole_filter_unnormalized hA]
  simp only [ne_eq,div_eq_zero_iff,mul_eq_zero,sub_eq_zero]
  have hz' : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr hz
  tauto

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant9f597516a4496b4230823692d0e66448ee9d8b995d291d50ea7b7e21ff12a79c.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5de42abe934d89dad924f1021adb37c7c027eaad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
