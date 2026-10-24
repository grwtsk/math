# lintegral_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76a9a2cc-aeab-a1b3-a156-d12ae57e0f2d",
  "kind": "theorem",
  "lexical_name": "lintegral_restrict",
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
  "slug": "lintegral-restrict--d80fd94c51caf8ae5f40b9f9",
  "source": {
    "blob": "ceba4050ead835d878238481b209ef6d752ea59a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1073,
    "line": 1070,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variant289dc91d1997bac5099147071d34e4e0f0d8478f1e169bb65dfa6ebe0c01a253.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d80fd94c51caf8ae5f40b9f93fe8e3813a786e9d9e9f0d0ca6cfc91ee92dd83f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFunc/Variant289dc91d1997bac5099147071d34e4e0f0d8478f1e169bb65dfa6ebe0c01a253.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76a9a2cc-aeab-a1b3-a156-d12ae57e0f2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1070–1073.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_restrict {m : MeasurableSpace α} (f : α →ₛ ℝ≥0∞) (s : Set α) (μ : Measure α) :
    f.lintegral (μ.restrict s) = ∑ y ∈ f.range, y * μ (f ⁻¹' {y} ∩ s) := by
  simp only [lintegral, Measure.restrict_apply, f.measurableSet_preimage]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFunc/Variant289dc91d1997bac5099147071d34e4e0f0d8478f1e169bb65dfa6ebe0c01a253.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variant289dc91d1997bac5099147071d34e4e0f0d8478f1e169bb65dfa6ebe0c01a253.lean#L1070).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceba4050ead835d878238481b209ef6d752ea59a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
