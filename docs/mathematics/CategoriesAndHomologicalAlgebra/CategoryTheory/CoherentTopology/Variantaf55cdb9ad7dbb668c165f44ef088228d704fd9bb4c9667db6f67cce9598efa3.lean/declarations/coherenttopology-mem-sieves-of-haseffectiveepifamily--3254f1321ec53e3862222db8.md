# coherentTopology.mem_sieves_of_hasEffectiveEpiFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cf61c2a-84af-dedc-1f7c-684d55b9afe5",
  "kind": "theorem",
  "lexical_name": "coherentTopology.mem_sieves_of_hasEffectiveEpiFamily",
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
  "slug": "coherenttopology-mem-sieves-of-haseffectiveepifamily--3254f1321ec53e3862222db8",
  "source": {
    "blob": "93cb24af518e5fa2c8837967830dd1e1ffa90c23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 42,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantaf55cdb9ad7dbb668c165f44ef088228d704fd9bb4c9667db6f67cce9598efa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3254f1321ec53e3862222db83dc65ad9315e00d33b4088f8ae1c203e8a9e247c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantaf55cdb9ad7dbb668c165f44ef088228d704fd9bb4c9667db6f67cce9598efa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cf61c2a-84af-dedc-1f7c-684d55b9afe5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coherentTopology.mem_sieves_of_hasEffectiveEpiFamily (S : Sieve X) :
    (∃ (α : Type) (_ : Finite α) (Y : α → C) (π : (a : α) → (Y a ⟶ X)),
      EffectiveEpiFamily Y π ∧ (∀ a : α, (S.arrows) (π a))) →
        (S ∈ (coherentTopology C) X) := by
  intro ⟨α, _, Y, π, hπ⟩
  apply (coherentCoverage C).mem_toGrothendieck_sieves_of_superset (R := Presieve.ofArrows Y π)
  · exact fun _ _ h ↦ by cases h; exact hπ.2 _
  · exact ⟨_, inferInstance, Y, π, rfl, hπ.1⟩

/--
Effective epi families in a precoherent category are transitive, in the sense that an
`EffectiveEpiFamily` and an `EffectiveEpiFamily` over each member, the composition is an
`EffectiveEpiFamily`.
Note: The finiteness condition is an artifact of the proof and is probably unnecessary.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantaf55cdb9ad7dbb668c165f44ef088228d704fd9bb4c9667db6f67cce9598efa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoherentTopology/Variantaf55cdb9ad7dbb668c165f44ef088228d704fd9bb4c9667db6f67cce9598efa3.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93cb24af518e5fa2c8837967830dd1e1ffa90c23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
