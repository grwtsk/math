# IsLindelof.adherence_nhdset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89d415b1-9231-1f49-4e01-1614c71156dc",
  "kind": "theorem",
  "lexical_name": "IsLindelof.adherence_nhdset",
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
  "slug": "islindelof-adherence-nhdset--f7e66e80f4bbb53919977bd6",
  "source": {
    "blob": "a53449fe2a297dc7b1f2ce908b9e2693c30c1876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 130,
    "path": "GRWTSK/Topology/GeneralTopology/Lindelof/Variant17057c966a3ca3137690d31c7cc0da5c3036aa0e44a94bf62325764f0e6ec25d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7e66e80f4bbb53919977bd6c34a46cef6e91659739f80b290fb3281e473fbf9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lindelof/Variant17057c966a3ca3137690d31c7cc0da5c3036aa0e44a94bf62325764f0e6ec25d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89d415b1-9231-1f49-4e01-1614c71156dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLindelof.adherence_nhdset {f : Filter X} [CountableInterFilter f] (hs : IsLindelof s)
    (hf₂ : f ≤ 𝓟 s) (ht₁ : IsOpen t) (ht₂ : ∀ x ∈ s, ClusterPt x f → x ∈ t) : t ∈ f :=
  (eq_or_neBot _).casesOn mem_of_eq_bot fun _ ↦
    let ⟨x, hx, hfx⟩ := @hs (f ⊓ 𝓟 tᶜ) _ _ <| inf_le_of_left_le hf₂
    have : x ∈ t := ht₂ x hx hfx.of_inf_left
    have : tᶜ ∩ t ∈ 𝓝[tᶜ] x := inter_mem_nhdsWithin _ (ht₁.mem_nhds this)
    have A : 𝓝[tᶜ] x = ⊥ := empty_mem_iff_bot.1 <| compl_inter_self t ▸ this
    have : 𝓝[tᶜ] x ≠ ⊥ := hfx.of_inf_right.ne
    absurd A this

/-- For every open cover of a Lindelöf set, there exists a countable subcover. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lindelof/Variant17057c966a3ca3137690d31c7cc0da5c3036aa0e44a94bf62325764f0e6ec25d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lindelof/Variant17057c966a3ca3137690d31c7cc0da5c3036aa0e44a94bf62325764f0e6ec25d.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a53449fe2a297dc7b1f2ce908b9e2693c30c1876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
