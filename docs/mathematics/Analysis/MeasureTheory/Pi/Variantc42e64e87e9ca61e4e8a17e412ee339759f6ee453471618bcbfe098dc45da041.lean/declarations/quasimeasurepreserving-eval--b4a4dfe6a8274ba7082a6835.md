# quasiMeasurePreserving_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a62c773222f631197270b3ac84ea3efaf728458",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 370,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4fc80e3-8521-bc1d-f634-530ffe7620f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec4e4335-b701-cd09-cc23-385e72879d3f",
  "kind": "theorem",
  "lexical_name": "quasiMeasurePreserving_eval",
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
  "slug": "quasimeasurepreserving-eval--b4a4dfe6a8274ba7082a6835",
  "source": {
    "blob": "2a62c773222f631197270b3ac84ea3efaf728458",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 370,
    "path": "GRWTSK/Analysis/MeasureTheory/Pi/Variantc42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4a4dfe6a8274ba7082a683522efedc9ff82c2b5af23aceb672a5c3b950baf67",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Pi/Variantc42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec4e4335-b701-cd09-cc23-385e72879d3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quasiMeasurePreserving_eval (i : ι) :
    QuasiMeasurePreserving (Function.eval i) (Measure.pi μ) (μ i) := by
  refine ⟨by fun_prop, AbsolutelyContinuous.mk fun s hs h2s => ?_⟩
  rw [map_apply (by fun_prop) hs, pi_eval_preimage_null μ h2s]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Pi/Variantc42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Pi/Variantc42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a62c773222f631197270b3ac84ea3efaf728458` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
