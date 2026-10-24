# AEMeasurable.prod_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec42012f3ef56d56a62b0b643e9b0dede2e15700",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 690,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db35b668-0d01-b78e-4195-e80cd4f6a636",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a88ba443-145c-7849-d08f-7acb7a78a765",
  "kind": "theorem",
  "lexical_name": "AEMeasurable.prod_swap",
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
  "slug": "aemeasurable-prod-swap--b718f3d4290dd6ce329bd654",
  "source": {
    "blob": "ec42012f3ef56d56a62b0b643e9b0dede2e15700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 695,
    "line": 690,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b718f3d4290dd6ce329bd6545c778c020605fa554b470c5e7e79b85b1a649239",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a88ba443-145c-7849-d08f-7acb7a78a765`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 690–695.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AEMeasurable.prod_swap [SigmaFinite μ] [SigmaFinite ν] {f : β × α → γ}
    (hf : AEMeasurable f (ν.prod μ)) : AEMeasurable (fun z : α × β => f z.swap) (μ.prod ν) := by
  rw [← Measure.prod_swap] at hf
  exact hf.comp_measurable measurable_swap
#align ae_measurable.prod_swap AEMeasurable.prod_swap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean#L690).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec42012f3ef56d56a62b0b643e9b0dede2e15700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
