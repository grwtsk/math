# upper_remainder_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfe11f24-6243-4449-8385-09163bb3cbe1",
  "kind": "theorem",
  "lexical_name": "upper_remainder_integrable",
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
  "slug": "upper-remainder-integrable--073fc5354261ffc59730b6f8",
  "source": {
    "blob": "634371ee418e986144cfc80562fc7032ebd7247c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 91,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Ab7842ccd58622dc71d4UpperSampling/Variantab47bf7613e03c67869fdcc91b897a21ccbdbf50f084ddd5b2fff85f84814d00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:073fc5354261ffc59730b6f828d916a30038de6b8e566860ef68ff8ada79f93d",
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

Occurrence: `result:dfe11f24-6243-4449-8385-09163bb3cbe1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_remainder_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (actualRemainder A) (Ioi 1) := by
  have hi := ((upperWeight_integrable 1).add ((upperWeight_integrable 2).div_const 4)).const_mul
    ((162826/7623 : ℝ)/A^2)
  apply hi.mono' (actualRemainder_measurable hA).aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
  exact (by simpa only [Real.norm_eq_abs, Pi.add_apply] using upper_remainder_pointwise hA hu)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Ab7842ccd58622dc71d4UpperSampling/Variantab47bf7613e03c67869fdcc91b897a21ccbdbf50f084ddd5b2fff85f84814d00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Ab7842ccd58622dc71d4UpperSampling/Variantab47bf7613e03c67869fdcc91b897a21ccbdbf50f084ddd5b2fff85f84814d00.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `634371ee418e986144cfc80562fc7032ebd7247c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
