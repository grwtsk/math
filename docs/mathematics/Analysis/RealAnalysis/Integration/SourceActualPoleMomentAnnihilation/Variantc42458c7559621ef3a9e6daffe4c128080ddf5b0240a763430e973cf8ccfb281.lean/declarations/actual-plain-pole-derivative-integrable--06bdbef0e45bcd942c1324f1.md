# actual_plain_pole_derivative_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce5073e4-a027-7523-69fb-2b4ee009cc26",
  "kind": "theorem",
  "lexical_name": "actual_plain_pole_derivative_integrable",
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
  "slug": "actual-plain-pole-derivative-integrable--06bdbef0e45bcd942c1324f1",
  "source": {
    "blob": "6e09319400a710a867d2adb814b9e83a238ee018",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPoleMomentAnnihilation/Variantc42458c7559621ef3a9e6daffe4c128080ddf5b0240a763430e973cf8ccfb281.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06bdbef0e45bcd942c1324f1457b5a5728b6202cd14fc30116575aac17ca1de8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualPoleMomentAnnihilation/Variantc42458c7559621ef3a9e6daffe4c128080ddf5b0240a763430e973cf8ccfb281.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce5073e4-a027-7523-69fb-2b4ee009cc26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_plain_pole_derivative_integrable (A : ℝ) (hA : 0 < A) :
    IntegrableOn (fun x => x * deriv (plainProfile A 1) x) (Ioi (0 : ℝ)) := by
  have hd : Integrable (deriv (plainMomentPrimitive A)) :=
    ((plainMoment_contDiff hA).continuous_deriv le_rfl).integrable_of_hasCompactSupport
      (plainMoment_compact hA).deriv
  apply (hd.integrableOn.sub (plainProfile_integrable hA 1).integrableOn).congr
  filter_upwards with x
  simp only [Pi.sub_apply]
  rw [plainMoment_deriv_eq hA x]
  simp only [add_sub_cancel_left]

/-- Compact FTC and the maintained full-axis source zero annihilate the first pole moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualPoleMomentAnnihilation/Variantc42458c7559621ef3a9e6daffe4c128080ddf5b0240a763430e973cf8ccfb281.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualPoleMomentAnnihilation/Variantc42458c7559621ef3a9e6daffe4c128080ddf5b0240a763430e973cf8ccfb281.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e09319400a710a867d2adb814b9e83a238ee018` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
