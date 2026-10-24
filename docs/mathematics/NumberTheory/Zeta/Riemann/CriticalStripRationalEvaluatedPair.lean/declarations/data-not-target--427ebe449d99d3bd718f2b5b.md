# Data.not_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ee1a55e-0f1a-4240-69ca-1ea3a5752eef",
  "kind": "theorem",
  "lexical_name": "Data.not_target",
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
  "slug": "data-not-target--427ebe449d99d3bd718f2b5b",
  "source": {
    "blob": "e2901c1183b0d7d4ddc5468f49b9cecde6a19271",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 183,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluatedPair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:427ebe449d99d3bd718f2b5bad57304511b915e64b13221a1f8588af56f673b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluatedPair.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ee1a55e-0f1a-4240-69ca-1ea3a5752eef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Data.not_target {A : Data} {N : ℕ} {x y : ℚ} (hc : A.check N x y=true) :
    ¬ NontrivialZetaZero (plusPoint x y).value := by
  obtain ⟨⟨hx,hx1,hoff⟩,hp,hm,hw⟩ := (A.check_iff N x y).mp hc
  have hN := ((A.plus.check_iff N (plusPoint x y)).mp hp).1
  have hs := Witness.sound (A.source_valid hN hx hx1 hoff)
    (A.evaluation_valid hoff hp hm) (A.weight_valid N x y) hw
  rw [(endpoints x y).1,(endpoints x y).2] at hs
  intro hz
  have hmzero := poleNormalizedZeta_zero_of_target hz.critical_reflection
  have hr : criticalReflection (plusPoint x y).value=(minusPoint x y).value := by
    apply Complex.ext <;> simp [criticalReflection,plusPoint,minusPoint,Gaussian.value]
  rw [hr] at hmzero
  exact hs ⟨poleNormalizedZeta_zero_of_target hz,hmzero⟩

/-- Pure finite proposal generation. No success, adaptive termination, or coverage claim. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluatedPair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRationalEvaluatedPair.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2901c1183b0d7d4ddc5468f49b9cecde6a19271` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
