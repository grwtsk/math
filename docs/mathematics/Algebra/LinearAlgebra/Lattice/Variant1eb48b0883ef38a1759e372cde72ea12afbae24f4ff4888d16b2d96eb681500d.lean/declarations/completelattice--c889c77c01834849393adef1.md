# completeLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c2bbd3cf747d32faeafd5003b0e59843ed7954468094fb9dfda62c437c801fc",
  "kind": "instance",
  "lexical_name": "completeLattice",
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
  "slug": "completelattice--c889c77c01834849393adef1",
  "source": {
    "blob": "9d8e6cd8bdf2109e0e780abf1742cb30898c5c20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 194,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c889c77c01834849393adef1ed444d6ee986231a0e684ba40567136681d5ce52",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c2bbd3cf747d32faeafd5003b0e59843ed7954468094fb9dfda62c437c801fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance completeLattice : CompleteLattice (Submodule R M) :=
  { (inferInstance : OrderTop (Submodule R M)),
    (inferInstance : OrderBot (Submodule R M)) with
    sup := fun a b ↦ sInf { x | a ≤ x ∧ b ≤ x }
    le_sup_left := fun _ _ ↦ le_sInf' fun _ ⟨h, _⟩ ↦ h
    le_sup_right := fun _ _ ↦ le_sInf' fun _ ⟨_, h⟩ ↦ h
    sup_le := fun _ _ _ h₁ h₂ ↦ sInf_le' ⟨h₁, h₂⟩
    inf := (· ⊓ ·)
    le_inf := fun _ _ _ ↦ Set.subset_inter
    inf_le_left := fun _ _ ↦ Set.inter_subset_left
    inf_le_right := fun _ _ ↦ Set.inter_subset_right
    sSup S := sInf {sm | ∀ s ∈ S, s ≤ sm}
    le_sSup := fun _ _ hs ↦ le_sInf' fun _ hq ↦ by exact hq _ hs
    sSup_le := fun _ _ hs ↦ sInf_le' hs
    le_sInf := fun _ _ ↦ le_sInf'
    sInf_le := fun _ _ ↦ sInf_le' }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lattice/Variant1eb48b0883ef38a1759e372cde72ea12afbae24f4ff4888d16b2d96eb681500d.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d8e6cd8bdf2109e0e780abf1742cb30898c5c20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
