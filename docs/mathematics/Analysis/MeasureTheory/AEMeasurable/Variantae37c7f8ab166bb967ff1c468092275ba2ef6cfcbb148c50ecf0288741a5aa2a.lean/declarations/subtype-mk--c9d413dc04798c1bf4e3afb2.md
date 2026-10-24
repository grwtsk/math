# subtype_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e39971a3f1c650fbdda45f1c71d567b539774219",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19ae69cb-b289-556f-b125-ff8848250f82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eca36838-fbbb-407b-d911-0a59695a2666",
  "kind": "theorem",
  "lexical_name": "subtype_mk",
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
  "slug": "subtype-mk--c9d413dc04798c1bf4e3afb2",
  "source": {
    "blob": "e39971a3f1c650fbdda45f1c71d567b539774219",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 227,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9d413dc04798c1bf4e3afb27867cbf83cb16267250f3be71d1a7b74e80e6dc2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eca36838-fbbb-407b-d911-0a59695a2666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subtype_mk (h : AEMeasurable f μ) {s : Set β} {hfs : ∀ x, f x ∈ s} :
    AEMeasurable (codRestrict f s hfs) μ := by
  nontriviality α; inhabit α
  obtain ⟨g, g_meas, hg, fg⟩ : ∃ g : α → β, Measurable g ∧ range g ⊆ s ∧ f =ᵐ[μ] g :=
    h.exists_ae_eq_range_subset (eventually_of_forall hfs) ⟨_, hfs default⟩
  refine' ⟨codRestrict g s fun x => hg (mem_range_self _), Measurable.subtype_mk g_meas, _⟩
  filter_upwards [fg] with x hx
  simpa [Subtype.ext_iff]
#align ae_measurable.subtype_mk AEMeasurable.subtype_mk

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variantae37c7f8ab166bb967ff1c468092275ba2ef6cfcbb148c50ecf0288741a5aa2a.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e39971a3f1c650fbdda45f1c71d567b539774219` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
