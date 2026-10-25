# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:360452efb094fbe94e242e4adbc0e4883dc3ba16e47c7a61424303d681f0e5aa",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--2e1717a43607b6e1e6d5ff5b",
  "source": {
    "blob": "c5ecc6373aff39b2d2e9968d2e422d2518b4a883",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 281,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Envelope/Variant556ffbec6e8b93963d3d136198e266d2878cf925f42d48234e2318b12ac0c7d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e1717a43607b6e1e6d5ff5bd1e567face009e424363bad862ef7ba78d8e72d3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Envelope/Variant556ffbec6e8b93963d3d136198e266d2878cf925f42d48234e2318b12ac0c7d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:360452efb094fbe94e242e4adbc0e4883dc3ba16e47c7a61424303d681f0e5aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [LE α] [IsPreorder α] [OrderedAdd α] : LE (OfNatModule.Q α) where
  le a b := Q.liftOn₂ a b (fun (a, b) (c, d) => a + d ≤ b + c)
    (by intro (a₁, b₁) (a₂, b₂) (a₃, b₃) (a₄, b₄)
        simp; intro k₁ h₁ k₂ h₂
        rw [OrderedAdd.add_le_left_iff (b₃ + k₁)]
        have : a₁ + b₂ + (b₃ + k₁) = a₁ + b₃ + k₁ + b₂ := by ac_rfl
        rw [this, h₁]; clear this
        rw [OrderedAdd.add_le_left_iff (a₄ + k₂)]
        have : b₁ + a₃ + k₁ + b₂ + (a₄ + k₂) = b₂ + a₄ + k₂ + b₁ + a₃ + k₁ := by ac_rfl
        rw [this, ← h₂]; clear this
        have : a₂ + b₄ + k₂ + b₁ + a₃ + k₁ = a₃ + b₄ + (a₂ + b₁ + k₁ + k₂) := by ac_rfl
        rw [this]; clear this
        have : b₁ + a₂ + (b₃ + k₁) + (a₄ + k₂) = b₃ + a₄ + (a₂ + b₁ + k₁ + k₂) := by ac_rfl
        rw [this]; clear this
        rw [← OrderedAdd.add_le_left_iff])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Envelope/Variant556ffbec6e8b93963d3d136198e266d2878cf925f42d48234e2318b12ac0c7d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Envelope/Variant556ffbec6e8b93963d3d136198e266d2878cf925f42d48234e2318b12ac0c7d3.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5ecc6373aff39b2d2e9968d2e422d2518b4a883` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
