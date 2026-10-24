# fibres_compl_eq_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:867b383a-2f72-a5fd-602b-bdd4dc6581a5",
  "kind": "lemma",
  "lexical_name": "fibres_compl_eq_iUnion",
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
  "slug": "fibres-compl-eq-iunion--8a90eea725d08e46853ec64d",
  "source": {
    "blob": "7d15b74f4501aadb602807806477e8d2351df0f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 64,
    "path": "GRWTSK/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a90eea725d08e46853ec64dd8ccc336ddc51084e271a03dee2f549b175d8728",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:867b383a-2f72-a5fd-602b-bdd4dc6581a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fibres_compl_eq_iUnion (π : T → S × Option X) (σ : Option X → S → T)
    (hσ' : ∀ (x : Option X) (s : S), (π (σ x s)).2 = x) :
    (fibres π σ)ᶜ =
      ⋃ i, (Set.range (σ (Option.some i)))ᶜ ∩ (Prod.snd ∘ π) ⁻¹' {(i : OnePoint X)} := by
  ext x
  -- simp? says:
  simp only [Set.mem_compl_iff, mem_fibres_iff, not_or, not_exists, Set.mem_iUnion,
    Set.mem_inter_iff, Set.mem_range, Set.mem_preimage, Function.comp_apply,
    Set.mem_singleton_iff]
  refine ⟨fun ⟨h₁, h₂⟩ ↦ ?_, fun ⟨n, hn, hn'⟩ ↦ ?_⟩
  · obtain ⟨n, hn⟩ := Option.ne_none_iff_exists'.mp h₁
    exact ⟨n, h₂ n, hn⟩
  · refine ⟨by simpa [hn'] using Option.isSome_iff_ne_none.mp rfl, fun i s h ↦ hn s ?_⟩
    rw [← h, hσ'] at hn'
    rw [← h, Option.some_injective _ hn'.symm]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequence/Variant7510370b56d6405a5d81cad1b75835253f3baba3d52d281590f27f87e81538d1.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d15b74f4501aadb602807806477e8d2351df0f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
