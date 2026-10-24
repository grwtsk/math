# _root_.MeasurableEmbedding.integrableAtFilter_iff_comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a61d29fe081da762dd3cd6a4a8b34f95740378c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 535,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/4195a3becfc509b18adfbfc541dfd11a5a0f16954193e42e8d629a025636d0f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c05f021e-968a-9189-a6d6-824c8dec3840",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:23ba6a8d-bbf2-99c8-c8d3-6dc65e06aa80",
  "kind": "theorem",
  "lexical_name": "_root_.MeasurableEmbedding.integrableAtFilter_iff_comap",
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
  "slug": "root-measurableembedding-integrableatfilter-iff-comap--e5d23762be04ba3cbb5ccbcf",
  "source": {
    "blob": "a61d29fe081da762dd3cd6a4a8b34f95740378c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 535,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant4195a3becfc509b18adfbfc541dfd11a5a0f16954193e42e8d629a025636d0f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5d23762be04ba3cbb5ccbcf93ccd6d7f11953a2f5e659f11a0c3273809b92db",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegrableOn/Variant4195a3becfc509b18adfbfc541dfd11a5a0f16954193e42e8d629a025636d0f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23ba6a8d-bbf2-99c8-c8d3-6dc65e06aa80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.MeasurableEmbedding.integrableAtFilter_iff_comap [MeasurableSpace β] {e : α → β}
    (he : MeasurableEmbedding e) {f : β → ε} {μ : Measure β} :
    IntegrableAtFilter f (l.map e) μ ↔ IntegrableAtFilter (f ∘ e) l (μ.comap e) := by
  simp_rw [← he.integrableAtFilter_map_iff, IntegrableAtFilter, he.map_comap]
  constructor <;> rintro ⟨s, hs, int⟩
  · exact ⟨s, hs, int.mono_measure <| μ.restrict_le_self⟩
  · exact ⟨_, inter_mem hs range_mem_map, int.inter_of_restrict⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegrableOn/Variant4195a3becfc509b18adfbfc541dfd11a5a0f16954193e42e8d629a025636d0f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant4195a3becfc509b18adfbfc541dfd11a5a0f16954193e42e8d629a025636d0f9.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a61d29fe081da762dd3cd6a4a8b34f95740378c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
