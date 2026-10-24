# weighted_sourcePowerRemainder_aestronglyMeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:372c1a64-f1c2-caed-d693-32ab15de0418",
  "kind": "theorem",
  "lexical_name": "weighted_sourcePowerRemainder_aestronglyMeasurable",
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
  "slug": "weighted-sourcepowerremainder-aestronglymeasurable--c74c5cb9b5fb85a233b65aa5",
  "source": {
    "blob": "b84e60cfcc63318ed1dab7bbdba510dd024b2be3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 79,
    "path": "GRWTSK/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Variant41b64dad1ecb739db6172d9ad33f102398b84eb9848123f8b633fc121892f01b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c74c5cb9b5fb85a233b65aa5332fb7d9cfb90c6710e8ad14e9fcaeacad1f2e2c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Variant41b64dad1ecb739db6172d9ad33f102398b84eb9848123f8b633fc121892f01b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:372c1a64-f1c2-caed-d693-32ab15de0418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_sourcePowerRemainder_aestronglyMeasurable (σ : ℝ) :
    AEStronglyMeasurable (fun A => Real.exp (-σ * A) * A ^ 17 * sourceNormalization A *
      |sourcePowerRemainder A|) (volume.restrict (Ioi 1)) := by
  have hz : AEStronglyMeasurable sourceNormalization (volume.restrict (Ioi 1)) := by
    unfold sourceNormalization
    fun_prop
  have hweight : AEStronglyMeasurable (fun A : ℝ => Real.exp (-σ * A) * A ^ 17)
      (volume.restrict (Ioi 1)) := by fun_prop
  convert (hweight.mul hz).mul sourcePowerRemainder_aestronglyMeasurable.norm using 1
  funext A
  simp only [Real.norm_eq_abs, Pi.mul_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Variant41b64dad1ecb739db6172d9ad33f102398b84eb9848123f8b633fc121892f01b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Variant41b64dad1ecb739db6172d9ad33f102398b84eb9848123f8b633fc121892f01b.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b84e60cfcc63318ed1dab7bbdba510dd024b2be3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
