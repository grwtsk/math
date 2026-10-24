# complexMuntz_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2158d48c-0ea0-8737-23c6-1659aeadbc31",
  "kind": "theorem",
  "lexical_name": "complexMuntz_integrable",
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
  "slug": "complexmuntz-integrable--7bfb58bbe7ff773fd9decd11",
  "source": {
    "blob": "ba4551e3cf89ec7f5b81d331684b70c199704721",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 24,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bfb58bbe7ff773fd9decd11c6e2a36819a48e616eb93400fc7329ae4267fb63",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2158d48c-0ea0-8737-23c6-1659aeadbc31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complexMuntz_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (complexMuntz A) := by
  have hi : IntegrableOn (complexMuntz A) (Icc 0 (Real.exp A)) :=
    IntegrableOn.of_bound (by simp) ((complexMuntz_measurable hA).aestronglyMeasurable.restrict)
      (derivativeBudget A) (Eventually.of_forall fun x => by
        simpa only [complexMuntz,Complex.norm_real,Real.norm_eq_abs] using actualMuntz_abs_le_budget hA x)
  apply (integrableOn_iff_integrable_of_support_subset ?_).mp hi
  intro x hx
  by_contra h
  apply hx
  have hz : actualMuntz A x = 0 := by
    apply actualMuntz_zero_outside hA
    simp only [mem_Icc,not_and_or,not_le] at h
    rcases h with h | h
    · exact Or.inl h.le
    · exact Or.inr h.le
  simp [complexMuntz,hz]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMuntzMellinDomain/Variant435b8d88e3844bcb1ff2ff2e86d90aa721cb129ab13112c1fccd6dc7ffb3b69a.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba4551e3cf89ec7f5b81d331684b70c199704721` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
