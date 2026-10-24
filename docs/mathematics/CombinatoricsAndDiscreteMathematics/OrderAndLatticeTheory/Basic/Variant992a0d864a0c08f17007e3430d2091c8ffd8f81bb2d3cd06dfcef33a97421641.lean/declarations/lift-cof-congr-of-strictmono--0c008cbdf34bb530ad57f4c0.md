# lift_cof_congr_of_strictMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e7e878c5844bded202fcd6a6b1f9f1ababedee4a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/992a0d864a0c08f17007e3430d2091c8ffd8f81bb2d3cd06dfcef33a97421641.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6c897ed-a8d8-1b6e-9ed9-a5d73cb1645c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29aa6438-d0eb-32c4-3ad4-b58c8530e39c",
  "kind": "theorem",
  "lexical_name": "lift_cof_congr_of_strictMono",
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
  "slug": "lift-cof-congr-of-strictmono--0c008cbdf34bb530ad57f4c0",
  "source": {
    "blob": "e7e878c5844bded202fcd6a6b1f9f1ababedee4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 119,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant992a0d864a0c08f17007e3430d2091c8ffd8f81bb2d3cd06dfcef33a97421641.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c008cbdf34bb530ad57f4c0635f18d6ddb24dea6e07cf36cce168b6171ebccb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant992a0d864a0c08f17007e3430d2091c8ffd8f81bb2d3cd06dfcef33a97421641.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29aa6438-d0eb-32c4-3ad4-b58c8530e39c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_cof_congr_of_strictMono {f : α → β} (hf : StrictMono f) (hf' : IsCofinal (range f)) :
    lift.{v} (cof α) = lift.{u} (cof β) := by
  apply le_antisymm <;> rw [le_lift_cof_iff] <;> intro s hs
  · have H (x : s) : ∃ y : α, x ≤ f y := by simpa using hf' x
    choose g hg using H
    refine (lift_le.2 <| cof_le (s := range g) fun a ↦ ?_).trans mk_range_le_lift
    obtain ⟨_, ⟨b, rfl⟩, hb⟩ := hf' (f a)
    obtain ⟨c, hc, hc'⟩ := hs (f b)
    refine ⟨_, Set.mem_range_self ⟨c, hc⟩, ?_⟩
    rw [← hf.le_iff_le]
    exact hb.trans (hc'.trans (hg ⟨c, hc⟩))
  · exact (lift_le.2 <| cof_le (hs.image hf.monotone hf')).trans mk_image_le_lift

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant992a0d864a0c08f17007e3430d2091c8ffd8f81bb2d3cd06dfcef33a97421641.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant992a0d864a0c08f17007e3430d2091c8ffd8f81bb2d3cd06dfcef33a97421641.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7e878c5844bded202fcd6a6b1f9f1ababedee4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
