# mem_map_indicator_ae_iff_of_zero_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77ac4898-e517-9ae0-8e49-55fdd33cf7e5",
  "kind": "theorem",
  "lexical_name": "mem_map_indicator_ae_iff_of_zero_notMem",
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
  "slug": "mem-map-indicator-ae-iff-of-zero-notmem--5abf3ef05f5f97b769fd3c5c",
  "source": {
    "blob": "e11be0390131a40e15a082da6b2c801cc994b522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 935,
    "line": 926,
    "path": "GRWTSK/Analysis/MeasureTheory/Restrict/Variantb0fd1a9698f36c709adac04c0509b42d5b7ef8da400cb4bf3780c301b95ce057.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5abf3ef05f5f97b769fd3c5caaf80e994ee0bf1e184cfa137727e5f046dc0944",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Restrict/Variantb0fd1a9698f36c709adac04c0509b42d5b7ef8da400cb4bf3780c301b95ce057.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77ac4898-e517-9ae0-8e49-55fdd33cf7e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 926–935.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_map_indicator_ae_iff_of_zero_notMem [Zero β] {t : Set β} (ht : (0 : β) ∉ t) :
    t ∈ Filter.map (s.indicator f) (ae μ) ↔ μ ((f ⁻¹' t)ᶜ ∪ sᶜ) = 0 := by
  classical
  rw [mem_map, mem_ae_iff, Set.indicator_preimage, Set.ite, Set.compl_union, Set.compl_inter]
  change μ (((f ⁻¹' t)ᶜ ∪ sᶜ) ∩ ((fun _ => (0 : β)) ⁻¹' t \ s)ᶜ) = 0 ↔ μ ((f ⁻¹' t)ᶜ ∪ sᶜ) = 0
  simp only [ht, if_false, Set.compl_empty, Set.empty_diff, Set.inter_univ, Set.preimage_const]

@[deprecated (since := "2025-05-24")]
alias mem_map_indicator_ae_iff_of_zero_nmem := mem_map_indicator_ae_iff_of_zero_notMem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Restrict/Variantb0fd1a9698f36c709adac04c0509b42d5b7ef8da400cb4bf3780c301b95ce057.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Restrict/Variantb0fd1a9698f36c709adac04c0509b42d5b7ef8da400cb4bf3780c301b95ce057.lean#L926).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e11be0390131a40e15a082da6b2c801cc994b522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
