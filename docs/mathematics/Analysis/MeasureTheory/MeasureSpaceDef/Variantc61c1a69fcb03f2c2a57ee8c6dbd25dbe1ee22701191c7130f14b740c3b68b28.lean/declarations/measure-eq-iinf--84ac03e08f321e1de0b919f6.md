# measure_eq_iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f75ae805e91dcaa90a8216feb2c705896c5bdf4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c61c1a69fcb03f2c2a57ee8c6dbd25dbe1ee22701191c7130f14b740c3b68b28.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b6ed2ddc-6d88-cb85-7840-65270a1d13e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b6cc2fa-14f0-7faf-e08a-8ac704d63224",
  "kind": "theorem",
  "lexical_name": "measure_eq_iInf",
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
  "slug": "measure-eq-iinf--84ac03e08f321e1de0b919f6",
  "source": {
    "blob": "4f75ae805e91dcaa90a8216feb2c705896c5bdf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 155,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Variantc61c1a69fcb03f2c2a57ee8c6dbd25dbe1ee22701191c7130f14b740c3b68b28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84ac03e08f321e1de0b919f6f9167cefbef8939c3c64a987a21626a02b4a465a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasureSpaceDef/Variantc61c1a69fcb03f2c2a57ee8c6dbd25dbe1ee22701191c7130f14b740c3b68b28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b6cc2fa-14f0-7faf-e08a-8ac704d63224`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_eq_iInf (s : Set α) : μ s = ⨅ (t) (_ : s ⊆ t) (_ : MeasurableSet t), μ t := by
  rw [measure_eq_trim, OuterMeasure.trim_eq_iInf]
#align measure_theory.measure_eq_infi MeasureTheory.measure_eq_iInf

/-- A variant of `measure_eq_iInf` which has a single `iInf`. This is useful when applying a
  lemma next that only works for non-empty infima, in which case you can use
  `nonempty_measurable_superset`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasureSpaceDef/Variantc61c1a69fcb03f2c2a57ee8c6dbd25dbe1ee22701191c7130f14b740c3b68b28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Variantc61c1a69fcb03f2c2a57ee8c6dbd25dbe1ee22701191c7130f14b740c3b68b28.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f75ae805e91dcaa90a8216feb2c705896c5bdf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
