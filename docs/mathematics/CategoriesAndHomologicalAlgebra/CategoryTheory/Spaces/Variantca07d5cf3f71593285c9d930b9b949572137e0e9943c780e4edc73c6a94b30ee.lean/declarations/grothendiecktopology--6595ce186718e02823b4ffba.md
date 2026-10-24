# grothendieckTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f4e7593aaea9092a4d6c67fdba4af6104fdff9a5012582356391047ce3cd15b8",
  "kind": "def",
  "lexical_name": "grothendieckTopology",
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
  "slug": "grothendiecktopology--6595ce186718e02823b4ffba",
  "source": {
    "blob": "eb04f06d653f2b05379481e73a71800afbb9dfa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 52,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantca07d5cf3f71593285c9d930b9b949572137e0e9943c780e4edc73c6a94b30ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6595ce186718e02823b4ffbaee2a40aaf29944cfe3fd487819e3bc626d9cee2a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantca07d5cf3f71593285c9d930b9b949572137e0e9943c780e4edc73c6a94b30ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f4e7593aaea9092a4d6c67fdba4af6104fdff9a5012582356391047ce3cd15b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def grothendieckTopology : GrothendieckTopology (Opens T) where
  sieves X S := ∀ x ∈ X, ∃ (U : _) (f : U ⟶ X), S f ∧ x ∈ U
  top_mem' _ _ hx := ⟨_, 𝟙 _, trivial, hx⟩
  pullback_stable' X Y S f hf y hy := by
    rcases hf y (f.le hy) with ⟨U, g, hg, hU⟩
    refine ⟨U ⊓ Y, homOfLE inf_le_right, ?_, hU, hy⟩
    apply S.downward_closed hg (homOfLE inf_le_left)
  transitive' X S hS R hR x hx := by
    rcases hS x hx with ⟨U, f, hf, hU⟩
    rcases hR hf _ hU with ⟨V, g, hg, hV⟩
    exact ⟨_, g ≫ f, hg, hV⟩

/-- The Grothendieck pretopology associated to a topological space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantca07d5cf3f71593285c9d930b9b949572137e0e9943c780e4edc73c6a94b30ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Spaces/Variantca07d5cf3f71593285c9d930b9b949572137e0e9943c780e4edc73c6a94b30ee.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb04f06d653f2b05379481e73a71800afbb9dfa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
