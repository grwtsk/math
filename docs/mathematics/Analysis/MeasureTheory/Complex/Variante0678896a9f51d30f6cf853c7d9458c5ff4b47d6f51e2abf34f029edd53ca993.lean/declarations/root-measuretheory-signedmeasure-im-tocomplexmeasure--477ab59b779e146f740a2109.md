# _root_.MeasureTheory.SignedMeasure.im_toComplexMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbbedb1ff6683866ccbcfa671949f34576336f7f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0678896a9f51d30f6cf853c7d9458c5ff4b47d6f51e2abf34f029edd53ca993.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae8b197d-1e28-4cdc-139d-7a417b676307",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b842137-5eeb-bb09-2178-d40d8897f4d2",
  "kind": "theorem",
  "lexical_name": "_root_.MeasureTheory.SignedMeasure.im_toComplexMeasure",
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
  "slug": "root-measuretheory-signedmeasure-im-tocomplexmeasure--477ab59b779e146f740a2109",
  "source": {
    "blob": "fbbedb1ff6683866ccbcfa671949f34576336f7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 83,
    "path": "GRWTSK/Analysis/MeasureTheory/Complex/Variante0678896a9f51d30f6cf853c7d9458c5ff4b47d6f51e2abf34f029edd53ca993.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:477ab59b779e146f740a21096fa2bd566f52461496bb7ef51ec7b0b3e09a4226",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Complex/Variante0678896a9f51d30f6cf853c7d9458c5ff4b47d6f51e2abf34f029edd53ca993.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b842137-5eeb-bb09-2178-d40d8897f4d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.MeasureTheory.SignedMeasure.im_toComplexMeasure (s t : SignedMeasure α) :
    ComplexMeasure.im (SignedMeasure.toComplexMeasure s t) = t := rfl
#align measure_theory.signed_measure.im_to_complex_measure MeasureTheory.SignedMeasure.im_toComplexMeasure

/-- The complex measures form an equivalence to the type of pairs of signed measures. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Complex/Variante0678896a9f51d30f6cf853c7d9458c5ff4b47d6f51e2abf34f029edd53ca993.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Complex/Variante0678896a9f51d30f6cf853c7d9458c5ff4b47d6f51e2abf34f029edd53ca993.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbbedb1ff6683866ccbcfa671949f34576336f7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
