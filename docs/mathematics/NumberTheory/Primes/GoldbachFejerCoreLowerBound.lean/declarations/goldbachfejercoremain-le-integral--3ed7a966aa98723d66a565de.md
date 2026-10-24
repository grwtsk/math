# goldbachFejerCoreMain_le_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b6ceeae-f4b8-725c-ee23-0d942196727c",
  "kind": "theorem",
  "lexical_name": "goldbachFejerCoreMain_le_integral",
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
  "slug": "goldbachfejercoremain-le-integral--3ed7a966aa98723d66a565de",
  "source": {
    "blob": "bf516f0e84b56741728594781af922e362708f05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 217,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ed7a966aa98723d66a565de9e3f4e872d43548151183f14b002562add6830f6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b6ceeae-f4b8-725c-ee23-0d942196727c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachFejerCoreMain_le_integral
    (N : ℕ) :
    goldbachFejerCoreMain N ≤
      goldbachFejerCoreIntegral N := by
  let δ := goldbachFejerCoreRadius N
  let C : ℝ := ((N + 1 : ℝ) ^ 2) / 4
  have hδ : 0 ≤ δ :=
    (goldbachFejerCoreRadius_pos N).le
  have hmono :
      (∫ _β in Set.Icc (-δ) δ, C) ≤
        ∫ β in Set.Icc (-δ) δ,
          goldbachFejerKernel N β := by
    apply setIntegral_mono_on
      (integrableOn_const measure_Icc_lt_top.ne)
      ((continuous_goldbachFejerKernel N).continuousOn.integrableOn_compact
        isCompact_Icc)
      measurableSet_Icc
    intro β hβ
    exact goldbachFejerKernel_lower_on_core N
      (by simpa [δ] using hβ)
  have hconst :
      (∫ _β in Set.Icc (-δ) δ, C) =
        goldbachFejerCoreMain N := by
    rw [setIntegral_const]
    rw [Real.volume_real_Icc_of_le (by linarith), smul_eq_mul]
    unfold C δ goldbachFejerCoreRadius
      goldbachFejerCoreMain
    field_simp
    ring
  rw [← hconst]
  exact hmono

/-- Every indexed denominator window contains the fixed core interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf516f0e84b56741728594781af922e362708f05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
