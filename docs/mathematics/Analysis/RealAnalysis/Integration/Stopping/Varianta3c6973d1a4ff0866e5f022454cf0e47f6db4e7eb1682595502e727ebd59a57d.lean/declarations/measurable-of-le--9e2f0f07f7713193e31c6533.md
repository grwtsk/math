# measurable_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fddc57c-9cb2-7524-d544-9ef86577a72a",
  "kind": "theorem",
  "lexical_name": "measurable_of_le",
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
  "slug": "measurable-of-le--9e2f0f07f7713193e31c6533",
  "source": {
    "blob": "9c891612ada35af032e0a56a86b684e7c548ecf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 598,
    "line": 593,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Stopping/Varianta3c6973d1a4ff0866e5f022454cf0e47f6db4e7eb1682595502e727ebd59a57d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e2f0f07f7713193e31c6533be0503b78d35775085cda7ea673528b52186b896",
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

Occurrence: `result:1fddc57c-9cb2-7524-d544-9ef86577a72a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 593–598.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem measurable_of_le [TopologicalSpace ι] [MeasurableSpace ι] [BorelSpace ι]
    [OrderTopology ι] [SecondCountableTopology ι] (hτ : IsStoppingTime f τ) {i : ι}
    (hτ_le : ∀ ω, τ ω ≤ i) : Measurable[f i] τ :=
  hτ.measurable.mono (measurableSpace_le_of_le_const _ hτ_le) le_rfl
#align measure_theory.is_stopping_time.measurable_of_le MeasureTheory.IsStoppingTime.measurable_of_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Stopping/Varianta3c6973d1a4ff0866e5f022454cf0e47f6db4e7eb1682595502e727ebd59a57d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Stopping/Varianta3c6973d1a4ff0866e5f022454cf0e47f6db4e7eb1682595502e727ebd59a57d.lean#L593).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c891612ada35af032e0a56a86b684e7c548ecf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
