# upperWeight_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85df9143-e871-12c5-7c83-f058143bb476",
  "kind": "theorem",
  "lexical_name": "upperWeight_integral",
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
  "slug": "upperweight-integral--8d379c4dd14df42fb8c55061",
  "source": {
    "blob": "634371ee418e986144cfc80562fc7032ebd7247c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Ab7842ccd58622dc71d4UpperSampling/Variantab47bf7613e03c67869fdcc91b897a21ccbdbf50f084ddd5b2fff85f84814d00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d379c4dd14df42fb8c5506114fc3171c5faf94572339a2830cf7152e84dcd9d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Ab7842ccd58622dc71d4UpperSampling/Variantab47bf7613e03c67869fdcc91b897a21ccbdbf50f084ddd5b2fff85f84814d00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85df9143-e871-12c5-7c83-f058143bb476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperWeight_integral (j : ℕ) :
    (∫ u in Ioi (1 : ℝ), upperWeight j u) = 2^(j+1)*(j.factorial : ℝ) := by
  have h := integral_image_eq_integral_abs_deriv_smul
    (s := Ioi (0 : ℝ)) (f := Real.exp) (f' := Real.exp) measurableSet_Ioi
    (fun t _ => (Real.hasDerivAt_exp t).hasDerivWithinAt)
    Real.exp_injective.injOn (upperWeight j)
  rw [Real.image_exp_Ioi, Real.exp_zero] at h
  simp only [abs_of_pos (Real.exp_pos _), smul_eq_mul, upperWeight_exp] at h
  exact h.trans (exponential_half_integral j)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Ab7842ccd58622dc71d4UpperSampling/Variantab47bf7613e03c67869fdcc91b897a21ccbdbf50f084ddd5b2fff85f84814d00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Ab7842ccd58622dc71d4UpperSampling/Variantab47bf7613e03c67869fdcc91b897a21ccbdbf50f084ddd5b2fff85f84814d00.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `634371ee418e986144cfc80562fc7032ebd7247c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
