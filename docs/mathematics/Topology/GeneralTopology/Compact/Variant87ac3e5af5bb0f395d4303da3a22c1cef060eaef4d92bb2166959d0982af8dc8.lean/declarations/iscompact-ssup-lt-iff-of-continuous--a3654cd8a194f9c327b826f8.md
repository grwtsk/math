# IsCompact.sSup_lt_iff_of_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72beaabf-c9cd-5d97-e73a-ba3ebc0a4570",
  "kind": "theorem",
  "lexical_name": "IsCompact.sSup_lt_iff_of_continuous",
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
  "slug": "iscompact-ssup-lt-iff-of-continuous--a3654cd8a194f9c327b826f8",
  "source": {
    "blob": "0a5c4db4ebe25b6b05bce151f0342be15bc9679e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 404,
    "path": "GRWTSK/Topology/GeneralTopology/Compact/Variant87ac3e5af5bb0f395d4303da3a22c1cef060eaef4d92bb2166959d0982af8dc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3654cd8a194f9c327b826f86b9227acd8ad6ee0e5de890aaa8ef04816e091dd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compact/Variant87ac3e5af5bb0f395d4303da3a22c1cef060eaef4d92bb2166959d0982af8dc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72beaabf-c9cd-5d97-e73a-ba3ebc0a4570`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompact.sSup_lt_iff_of_continuous [ClosedIciTopology α] {f : β → α} {K : Set β}
    (hK : IsCompact K) (h0K : K.Nonempty) (hf : ContinuousOn f K) (y : α) :
    sSup (f '' K) < y ↔ ∀ x ∈ K, f x < y := by
  refine ⟨fun h x hx => (le_csSup (hK.bddAbove_image hf) <| mem_image_of_mem f hx).trans_lt h,
    fun h => ?_⟩
  obtain ⟨x, hx, h2x⟩ := hK.exists_isMaxOn h0K hf
  refine (csSup_le (h0K.image f) ?_).trans_lt (h x hx)
  rintro _ ⟨x', hx', rfl⟩; exact h2x hx'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compact/Variant87ac3e5af5bb0f395d4303da3a22c1cef060eaef4d92bb2166959d0982af8dc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compact/Variant87ac3e5af5bb0f395d4303da3a22c1cef060eaef4d92bb2166959d0982af8dc8.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a5c4db4ebe25b6b05bce151f0342be15bc9679e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
