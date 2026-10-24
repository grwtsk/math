# prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5330c4e48ef20f9b35347af76c01169e053319e02c29b19ef5cd88c36e911077",
  "kind": "def",
  "lexical_name": "prod",
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
  "slug": "prod--dfef36e29f86533f4c0e7f6b",
  "source": {
    "blob": "cf98b0997bc58e558cb34efbdc86ba74024a7c5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 204,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfef36e29f86533f4c0e7f6b6023d1819781d2529c51e0b3937d86d4d2a05fd0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5330c4e48ef20f9b35347af76c01169e053319e02c29b19ef5cd88c36e911077`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def prod : Trivialization (F₁ × F₂) (π (F₁ × F₂) (E₁ ×ᵇ E₂)) where
  toFun := Prod.toFun' e₁ e₂
  invFun := Prod.invFun' e₁ e₂
  source := π (F₁ × F₂) (E₁ ×ᵇ E₂) ⁻¹' (e₁.baseSet ∩ e₂.baseSet)
  target := (e₁.baseSet ∩ e₂.baseSet) ×ˢ Set.univ
  map_source' _ h := ⟨h, Set.mem_univ _⟩
  map_target' _ h := h.1
  left_inv' _ := Prod.left_inv
  right_inv' _ := Prod.right_inv
  open_source := by
    convert!
      (e₁.open_source.prod e₂.open_source).preimage
        (FiberBundle.Prod.isInducing_diag F₁ E₁ F₂ E₂).continuous
    ext x
    simp only [Trivialization.source_eq, mfld_simps]
  open_target := (e₁.open_baseSet.inter e₂.open_baseSet).prod isOpen_univ
  continuousOn_toFun := Prod.continuous_to_fun
  continuousOn_invFun := Prod.continuous_inv_fun
  baseSet := e₁.baseSet ∩ e₂.baseSet
  open_baseSet := e₁.open_baseSet.inter e₂.open_baseSet
  source_eq := rfl
  target_eq := rfl
  proj_toFun _ _ := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variante72455c90aca05549cde6379792384449f300776ffb4d5ac58c63e8357514b81.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf98b0997bc58e558cb34efbdc86ba74024a7c5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
