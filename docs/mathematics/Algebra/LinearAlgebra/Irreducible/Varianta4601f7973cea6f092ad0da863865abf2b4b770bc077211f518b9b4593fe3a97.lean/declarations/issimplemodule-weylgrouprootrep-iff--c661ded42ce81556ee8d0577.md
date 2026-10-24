# isSimpleModule_weylGroupRootRep_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2c5ac948c66c8b8598abd233f8487d9a4ee95ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11fb4c93-29f7-c9e1-f2b0-270d7704923a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba4915da-d588-7eb1-9645-0c894883026c",
  "kind": "lemma",
  "lexical_name": "isSimpleModule_weylGroupRootRep_iff",
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
  "slug": "issimplemodule-weylgrouprootrep-iff--c661ded42ce81556ee8d0577",
  "source": {
    "blob": "e2c5ac948c66c8b8598abd233f8487d9a4ee95ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 58,
    "path": "GRWTSK/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c661ded42ce81556ee8d05773fdde7ee5227b84e14127a6ba0574f8957f0fd7a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba4915da-d588-7eb1-9645-0c894883026c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSimpleModule_weylGroupRootRep_iff [Nontrivial M] :
    IsSimpleModule (MonoidAlgebra R P.weylGroup) P.weylGroupRootRep.asModule ↔
    ∀ (q : Submodule R M), (∀ i, q ∈ invtSubmodule (P.reflection i)) → q ≠ ⊥ → q = ⊤ := by
  rw [IsSimpleModule, ← P.weylGroupRootRep.mapSubmodule.isSimpleOrder_iff]
  refine ⟨fun h q hq₁ hq₂ ↦ ?_, fun h ↦ ⟨fun q ↦ ?_⟩⟩
  · suffices ∀ g : P.weylGroup, q ∈ invtSubmodule (P.weylGroupRootRep g) by
      let q' : P.weylGroupRootRep.invtSubmodule :=
        ⟨q, (Representation.mem_invtSubmodule P.weylGroupRootRep).mpr this⟩
      suffices q' = ⊤ by simpa [q']
      apply (IsSimpleOrder.eq_bot_or_eq_top _).resolve_left
      simpa [q']
    rintro ⟨g, hg⟩
    induction hg using weylGroup.induction with
    | mem i => exact hq₁ i
    | one => simp [← Submonoid.one_def]
    | mul x y hx hy hx' hy' => apply invtSubmodule.comp <;> assumption
  · rcases eq_or_ne q ⊥ with rfl | hq; · tauto
    suffices (q : Submodule R M) = ⊤ by right; simpa using this
    refine h q (fun i ↦ ?_) (by simpa using hq)
    exact P.weylGroupRootRep.mem_invtSubmodule.mp q.property ⟨_, P.reflection_mem_weylGroup i⟩

/-- A root pairing is irreducible if it is non-trivial and contains no proper invariant submodules.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2c5ac948c66c8b8598abd233f8487d9a4ee95ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
