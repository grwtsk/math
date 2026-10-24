# finestTopologySingle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbc2eb2a917e1fed5d78b2ddfe34861ea4f4f01123dad922e1b4ab65d00d6acd",
  "kind": "def",
  "lexical_name": "finestTopologySingle",
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
  "slug": "finesttopologysingle--7fe57ede4f76a3b7cbb6130e",
  "source": {
    "blob": "be99c646d4406d99db2a0be5b6e25e9f43dc6a9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 145,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fe57ede4f76a3b7cbb6130e8609116a7294d55a8ddb6b982d11e16ed9f22bce",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbc2eb2a917e1fed5d78b2ddfe34861ea4f4f01123dad922e1b4ab65d00d6acd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finestTopologySingle (P : Cᵒᵖ ⥤ Type v) : GrothendieckTopology C where
  sieves X S := ∀ (Y) (f : Y ⟶ X), Presieve.IsSheafFor P (S.pullback f : Presieve Y)
  top_mem' X Y f := by
    rw [Sieve.pullback_top]
    exact Presieve.isSheafFor_top_sieve P
  pullback_stable' X Y S f hS Z g := by
    rw [← pullback_comp]
    apply hS
  transitive' X S hS R hR Z g := by
    -- This is the hard part of the construction, showing that the given set of sieves satisfies
    -- the transitivity axiom.
    refine isSheafFor_trans P (pullback g S) _ (hS Z g) ?_ ?_
    · intro Y f _
      rw [← pullback_comp]
      apply (hS _ _).isSeparatedFor
    · intro Y f hf
      have := hR hf _ (𝟙 _)
      rw [pullback_id, pullback_comp] at this
      apply this

/-- Construct the finest (largest) Grothendieck topology for which all the given presheaves are
sheaves. -/
@[stacks 00Z9 "Equal to that Stacks construction"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variantb46448cdccacff5019b202604dc29fbddc22fb154edfa1b9ab9140f4e7d5bbc3.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be99c646d4406d99db2a0be5b6e25e9f43dc6a9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
