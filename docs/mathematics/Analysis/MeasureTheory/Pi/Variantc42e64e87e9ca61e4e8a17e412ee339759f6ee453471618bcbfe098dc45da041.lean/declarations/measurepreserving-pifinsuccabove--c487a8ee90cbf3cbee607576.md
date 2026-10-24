# measurePreserving_piFinSuccAbove

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
      "line": 806,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a314cb1f-0d6e-c84a-e767-d5beb7173210",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41056bfb-64f5-b55b-5f94-778115568dbe",
  "kind": "theorem",
  "lexical_name": "measurePreserving_piFinSuccAbove",
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
  "slug": "measurepreserving-pifinsuccabove--c487a8ee90cbf3cbee607576",
  "source": {
    "blob": "2a62c773222f631197270b3ac84ea3efaf728458",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 817,
    "line": 806,
    "path": "GRWTSK/Analysis/MeasureTheory/Pi/Variantc42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c487a8ee90cbf3cbee607576ac2f2898811220f42ac043e0049b792288dcdf26",
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

Occurrence: `result:41056bfb-64f5-b55b-5f94-778115568dbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 806–817.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurePreserving_piFinSuccAbove {n : ℕ} {α : Fin (n + 1) → Type u}
    {m : ∀ i, MeasurableSpace (α i)} (μ : ∀ i, Measure (α i)) [∀ i, SigmaFinite (μ i)]
    (i : Fin (n + 1)) :
    MeasurePreserving (MeasurableEquiv.piFinSuccAbove α i) (Measure.pi μ)
      ((μ i).prod <| Measure.pi fun j => μ (i.succAbove j)) := by
  set e := (MeasurableEquiv.piFinSuccAbove α i).symm
  refine MeasurePreserving.symm e ?_
  refine ⟨e.measurable, (pi_eq fun s _ => ?_).symm⟩
  rw [e.map_apply, i.prod_univ_succAbove _, ← pi_pi, ← prod_prod]
  congr 1 with ⟨x, f⟩
  simp [e, i.forall_iff_succAbove]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Pi/Variantc42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Pi/Variantc42e64e87e9ca61e4e8a17e412ee339759f6ee453471618bcbfe098dc45da041.lean#L806).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a62c773222f631197270b3ac84ea3efaf728458` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
