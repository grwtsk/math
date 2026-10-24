# exists_disjoint_smul_of_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03a7cf1b-9403-47f8-d5df-bbceae02d4d5",
  "kind": "theorem",
  "lexical_name": "exists_disjoint_smul_of_isCompact",
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
  "slug": "exists-disjoint-smul-of-iscompact--0207d4f3d19d3c6164bf0bb2",
  "source": {
    "blob": "3de600b6955f74106ab6e7089f9b0c12cd0ec43f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 403,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3fb9df9ea5664c6c806070c6c7a6fc7b50810c3743b55c6ff3883142f5eeed93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0207d4f3d19d3c6164bf0bb2b79cf23d67bd105a9658f282f4528cadb89844ec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3fb9df9ea5664c6c806070c6c7a6fc7b50810c3743b55c6ff3883142f5eeed93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03a7cf1b-9403-47f8-d5df-bbceae02d4d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_disjoint_smul_of_isCompact [NoncompactSpace G] {K L : Set G} (hK : IsCompact K)
    (hL : IsCompact L) : ∃ g : G, Disjoint K (g • L) := by
  have A : ¬K * L⁻¹ = univ := (hK.mul hL.inv).ne_univ
  obtain ⟨g, hg⟩ : ∃ g, g ∉ K * L⁻¹ := by
    contrapose! A
    exact eq_univ_iff_forall.2 A
  refine ⟨g, ?_⟩
  refine disjoint_left.2 fun a ha h'a => hg ?_
  rcases h'a with ⟨b, bL, rfl⟩
  refine ⟨g * b, ha, b⁻¹, by simpa only [Set.mem_inv, inv_inv] using bL, ?_⟩
  simp only [mul_inv_cancel_right]

end

end FilterMul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3fb9df9ea5664c6c806070c6c7a6fc7b50810c3743b55c6ff3883142f5eeed93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3fb9df9ea5664c6c806070c6c7a6fc7b50810c3743b55c6ff3883142f5eeed93.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3de600b6955f74106ab6e7089f9b0c12cd0ec43f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
