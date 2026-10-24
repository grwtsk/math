# toMeasureOfZeroLE_real_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "602ee5467d07171d5b737c437b08ba4cb775ce70",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 284,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0fac6b73-78b0-c9ab-da67-fdda44fe0566",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b464930-364c-f11d-c98a-9f9251993f96",
  "kind": "theorem",
  "lexical_name": "toMeasureOfZeroLE_real_apply",
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
  "slug": "tomeasureofzerole-real-apply--726ea88a5ea1b7eccea72b5e",
  "source": {
    "blob": "602ee5467d07171d5b737c437b08ba4cb775ce70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 284,
    "path": "GRWTSK/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:726ea88a5ea1b7eccea72b5e73f6340e2d5a8c61a7cab037bd006ec6e46606ae",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b464930-364c-f11d-c98a-9f9251993f96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toMeasureOfZeroLE_real_apply (hi : 0 ≤[i] s) (hi₁ : MeasurableSet i)
    (hj₁ : MeasurableSet j) :
    (s.toMeasureOfZeroLE i hi₁ hi).real j = s (i ∩ j) := by
  simp [measureReal_def, toMeasureOfZeroLE_apply, hj₁]

/-- Given a signed measure `s` and a negative measurable set `i`, `toMeasureOfLEZero`
provides the measure, mapping measurable sets `j` to `-s (i ∩ j)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `602ee5467d07171d5b737c437b08ba4cb775ce70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
