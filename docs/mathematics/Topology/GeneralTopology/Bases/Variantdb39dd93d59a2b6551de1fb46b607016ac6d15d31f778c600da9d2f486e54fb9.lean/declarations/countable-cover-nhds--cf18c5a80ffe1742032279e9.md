# countable_cover_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23b0a45d-6dfb-5d8d-a11b-7033e89fc5db",
  "kind": "theorem",
  "lexical_name": "countable_cover_nhds",
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
  "slug": "countable-cover-nhds--cf18c5a80ffe1742032279e9",
  "source": {
    "blob": "8e32269e1b118c37cde52145c937508870dc9845",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 972,
    "line": 964,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variantdb39dd93d59a2b6551de1fb46b607016ac6d15d31f778c600da9d2f486e54fb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf18c5a80ffe1742032279e969585fe3944ece8b4023a938d384dc98899dff31",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variantdb39dd93d59a2b6551de1fb46b607016ac6d15d31f778c600da9d2f486e54fb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23b0a45d-6dfb-5d8d-a11b-7033e89fc5db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 964–972.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countable_cover_nhds [SecondCountableTopology α] {f : α → Set α} (hf : ∀ x, f x ∈ 𝓝 x) :
    ∃ s : Set α, s.Countable ∧ ⋃ x ∈ s, f x = univ := by
  rcases isOpen_iUnion_countable (fun x => interior (f x)) fun x => isOpen_interior with
    ⟨s, hsc, hsU⟩
  suffices ⋃ x ∈ s, interior (f x) = univ from
    ⟨s, hsc, flip eq_univ_of_subset this <| iUnion₂_mono fun _ _ => interior_subset⟩
  simp only [hsU, eq_univ_iff_forall, mem_iUnion]
  exact fun x => ⟨x, mem_interior_iff_mem_nhds.2 (hf x)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variantdb39dd93d59a2b6551de1fb46b607016ac6d15d31f778c600da9d2f486e54fb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variantdb39dd93d59a2b6551de1fb46b607016ac6d15d31f778c600da9d2f486e54fb9.lean#L964).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e32269e1b118c37cde52145c937508870dc9845` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
