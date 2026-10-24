# primitive_pole_moment_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d1e52f6-c543-44cf-08b3-e37ba26a8458",
  "kind": "theorem",
  "lexical_name": "primitive_pole_moment_pos",
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
  "slug": "primitive-pole-moment-pos--530eeae60481c2f98c6e7e67",
  "source": {
    "blob": "c44cd2c905e7b5772882dba179c46752b8f255df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 283,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Cubic01/Variant042b09bba2e257ef52b0711e08a50444ea824a4e83467c8a2b77a599a3d986c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:530eeae60481c2f98c6e7e6704c18d60375d81a30cbad6defb6823b58728f68e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Cubic01/Variant042b09bba2e257ef52b0711e08a50444ea824a4e83467c8a2b77a599a3d986c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d1e52f6-c543-44cf-08b3-e37ba26a8458`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_pole_moment_pos {A : ℝ} (hA : 1 ≤ A) :
    0 < primitivePoleMoment A := by
  have hp : 0 < A := by linarith
  have hc := (normalizedPrimitiveBump_contDiff hp).continuous
  have hs := normalizedPrimitiveBump_hasCompactSupport hp
  have hf : Continuous (fun x : ℝ => Real.exp (x/2)*normalizedPrimitiveBump A x) := by fun_prop
  have hn (x : ℝ) : 0 ≤ Real.exp (x/2)*normalizedPrimitiveBump A x := by
    apply mul_nonneg (Real.exp_pos _).le
    rw [normalizedPrimitiveBump,scaledBump_eq_indicator A hp]
    by_cases hx : x ∈ Icc (-A) A
    · rw [indicator_of_mem hx]
      unfold bumpInterior
      positivity
    · rw [indicator_of_notMem hx]
      simp
  have hzero : Real.exp ((0 : ℝ)/2)*normalizedPrimitiveBump A 0 ≠ 0 := by
    rw [normalizedPrimitiveBump_eq_interior hp (by constructor <;> linarith)]
    unfold bumpInterior
    have hZ : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
    positivity
  exact hf.integral_pos_of_hasCompactSupport_nonneg_nonzero hs.mul_left hn hzero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Cubic01/Variant042b09bba2e257ef52b0711e08a50444ea824a4e83467c8a2b77a599a3d986c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Cubic01/Variant042b09bba2e257ef52b0711e08a50444ea824a4e83467c8a2b77a599a3d986c2.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c44cd2c905e7b5772882dba179c46752b8f255df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
