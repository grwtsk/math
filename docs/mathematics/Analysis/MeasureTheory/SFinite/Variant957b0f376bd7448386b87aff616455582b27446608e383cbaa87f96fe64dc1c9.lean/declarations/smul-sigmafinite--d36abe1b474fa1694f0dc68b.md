# SMul.sigmaFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec9c5d02636d4f9c5634959652258dd9012bf21db1e5cdfc55049f71918ed5f2",
  "kind": "instance",
  "lexical_name": "SMul.sigmaFinite",
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
  "slug": "smul-sigmafinite--d36abe1b474fa1694f0dc68b",
  "source": {
    "blob": "da99368a7a1578c2cc1fd7abdef79c9dc185e5f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 658,
    "line": 648,
    "path": "GRWTSK/Analysis/MeasureTheory/SFinite/Variant957b0f376bd7448386b87aff616455582b27446608e383cbaa87f96fe64dc1c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d36abe1b474fa1694f0dc68bc7209d30248ac3a6336bf3766adb347f97cd37c7",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SFinite/Variant957b0f376bd7448386b87aff616455582b27446608e383cbaa87f96fe64dc1c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec9c5d02636d4f9c5634959652258dd9012bf21db1e5cdfc55049f71918ed5f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 648–658.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance SMul.sigmaFinite {μ : Measure α} [SigmaFinite μ] (c : ℝ≥0) :
    MeasureTheory.SigmaFinite (c • μ) where
  out' :=
  ⟨{  set := spanningSets μ
      set_mem := fun _ ↦ trivial
      finite := by
        intro i
        simp only [Measure.coe_smul, Pi.smul_apply, nnreal_smul_coe_apply]
        exact ENNReal.mul_lt_top ENNReal.coe_lt_top (measure_spanningSets_lt_top μ i)
      spanning := iUnion_spanningSets μ }⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SFinite/Variant957b0f376bd7448386b87aff616455582b27446608e383cbaa87f96fe64dc1c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SFinite/Variant957b0f376bd7448386b87aff616455582b27446608e383cbaa87f96fe64dc1c9.lean#L648).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da99368a7a1578c2cc1fd7abdef79c9dc185e5f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
