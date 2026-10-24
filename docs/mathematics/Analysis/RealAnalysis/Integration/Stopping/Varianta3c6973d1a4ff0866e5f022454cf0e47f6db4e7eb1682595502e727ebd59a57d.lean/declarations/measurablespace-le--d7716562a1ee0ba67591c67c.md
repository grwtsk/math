# measurableSpace_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e483581-6ded-d843-716b-bd82a8ad3e05",
  "kind": "theorem",
  "lexical_name": "measurableSpace_le",
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
  "slug": "measurablespace-le--d7716562a1ee0ba67591c67c",
  "source": {
    "blob": "9c891612ada35af032e0a56a86b684e7c548ecf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 387,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Stopping/Varianta3c6973d1a4ff0866e5f022454cf0e47f6db4e7eb1682595502e727ebd59a57d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7716562a1ee0ba67591c67c19934c64195fd9b60628652cda480d588bfec87a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Stopping/Varianta3c6973d1a4ff0866e5f022454cf0e47f6db4e7eb1682595502e727ebd59a57d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e483581-6ded-d843-716b-bd82a8ad3e05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurableSpace_le {ι} [SemilatticeSup ι] {f : Filtration ι m} {τ : Ω → ι}
    [IsCountablyGenerated (atTop : Filter ι)] (hτ : IsStoppingTime f τ) :
    hτ.measurableSpace ≤ m := by
  cases isEmpty_or_nonempty ι
  · haveI : IsEmpty Ω := ⟨fun ω => IsEmpty.false (τ ω)⟩
    intro s _
    suffices hs : s = ∅; · rw [hs]; exact MeasurableSet.empty
    haveI : Unique (Set Ω) := Set.uniqueEmpty
    rw [Unique.eq_default s, Unique.eq_default ∅]
  exact measurableSpace_le' hτ
#align measure_theory.is_stopping_time.measurable_space_le MeasureTheory.IsStoppingTime.measurableSpace_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Stopping/Varianta3c6973d1a4ff0866e5f022454cf0e47f6db4e7eb1682595502e727ebd59a57d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Stopping/Varianta3c6973d1a4ff0866e5f022454cf0e47f6db4e7eb1682595502e727ebd59a57d.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c891612ada35af032e0a56a86b684e7c548ecf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
