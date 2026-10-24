# erase_attach_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39585273-0acb-9bf2-4886-978f5ae5de76",
  "kind": "lemma",
  "lexical_name": "erase_attach_map",
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
  "slug": "erase-attach-map--ba69b30026c94c5c8cc4d413",
  "source": {
    "blob": "c91f364f175631eef8e9b923af4a0403862cacda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 368,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MapFold/Variantd46e9f4e6e73cdc76c9378fe952d44821aa193473239430289a3502c74001177.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba69b30026c94c5c8cc4d4137b8a31f1fa83d1f871d57ecd4f26134aaa60f62c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MapFold/Variantd46e9f4e6e73cdc76c9378fe952d44821aa193473239430289a3502c74001177.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39585273-0acb-9bf2-4886-978f5ae5de76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma erase_attach_map (s : Multiset α) (f : α → β) (x : {x // x ∈ s}) :
    (s.attach.erase x).map (fun j : {x // x ∈ s} ↦ f j) = (s.erase x).map f := by
  simp only [← Function.comp_apply (f := f)]
  rw [← map_map, erase_attach_map_val]

end

/-! ### Subtraction -/

section sub
variable [DecidableEq α] {s t : Multiset α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MapFold/Variantd46e9f4e6e73cdc76c9378fe952d44821aa193473239430289a3502c74001177.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MapFold/Variantd46e9f4e6e73cdc76c9378fe952d44821aa193473239430289a3502c74001177.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c91f364f175631eef8e9b923af4a0403862cacda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
