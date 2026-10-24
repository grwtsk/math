# integral_closed_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87ecadfc-dc17-6b06-ece3-8e1c37ef9531",
  "kind": "theorem",
  "lexical_name": "integral_closed_step",
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
  "slug": "integral-closed-step--ca3f32aea08d485a3934642f",
  "source": {
    "blob": "c2aea553f32491eebd03cf963391425b5785ce9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 55,
    "path": "GRWTSK/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca3f32aea08d485a3934642fcd34f814654c4d1e6542613ee2bd80ad55d749de",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87ecadfc-dc17-6b06-ece3-8e1c37ef9531`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_closed_step (a b c : ℝ) (hac : a ≤ c) (hcb : c ≤ b)
    (f : ℝ → ℝ) :
    (∫ t in a..b, if c ≤ t then f t else 0) = ∫ t in c..b, f t := by
  change (∫ t in a..b, (Ici c).indicator f t) = _
  rw [intervalIntegral.integral_of_le (hac.trans hcb),
    MeasureTheory.integral_indicator measurableSet_Ici,
    Measure.restrict_restrict measurableSet_Ici]
  by_cases heq : a = c
  · subst a
    have hs : Ici c ∩ Ioc c b = Ioc c b := by
      ext t
      simp only [mem_inter_iff, mem_Ici, mem_Ioc]
      constructor
      · exact fun h ↦ h.2
      · exact fun h ↦ ⟨h.1.le, h⟩
    rw [hs, intervalIntegral.integral_of_le hcb]
  · have hac' : a < c := lt_of_le_of_ne hac heq
    have hs : Ici c ∩ Ioc a b = Icc c b := by
      ext t
      simp only [mem_inter_iff, mem_Ici, mem_Ioc, mem_Icc]
      constructor
      · exact fun h ↦ ⟨h.1, h.2.2⟩
      · exact fun h ↦ ⟨h.1, hac'.trans_le h.1, h.2⟩
    rw [hs, integral_Icc_eq_integral_Ioc, intervalIntegral.integral_of_le hcb]

/-- One logarithmic step gives both endpoint values, including a step at `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2aea553f32491eebd03cf963391425b5785ce9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
