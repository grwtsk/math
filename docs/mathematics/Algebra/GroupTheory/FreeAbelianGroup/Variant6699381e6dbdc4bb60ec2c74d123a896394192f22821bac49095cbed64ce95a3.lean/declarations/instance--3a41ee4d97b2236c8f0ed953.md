# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89c37fd4b9f1a4e59971943d64f5884b114f8d45f6b01ca2f53c6f5bca4a2ee1",
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
  "slug": "instance--3a41ee4d97b2236c8f0ed953",
  "source": {
    "blob": "314b05e3565c6047316ccf1324242bbb9ca8d542",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 330,
    "path": "GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant6699381e6dbdc4bb60ec2c74d123a896394192f22821bac49095cbed64ce95a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a41ee4d97b2236c8f0ed95316722a2701d5cd691904c241b7fd27ecb21cd0cb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FreeAbelianGroup/Variant6699381e6dbdc4bb60ec2c74d123a896394192f22821bac49095cbed64ce95a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89c37fd4b9f1a4e59971943d64f5884b114f8d45f6b01ca2f53c6f5bca4a2ee1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CommApplicative FreeAbelianGroup.{u} where
  commutative_prod x y := by
    induction x using FreeAbelianGroup.induction_on' with
    | zero => rw [FreeAbelianGroup.map_zero, zero_seq, seq_zero]
    | pure p =>
      rw [map_pure, pure_seq]
      induction y using FreeAbelianGroup.induction_on' with
      | zero => rw [FreeAbelianGroup.map_zero, FreeAbelianGroup.map_zero, zero_seq]
      | pure q => rw [map_pure, map_pure, pure_seq, map_pure]
      | neg q ih => rw [FreeAbelianGroup.map_neg, FreeAbelianGroup.map_neg, neg_seq, ih]
      | add y₁ y₂ ih1 ih2 =>
        rw [FreeAbelianGroup.map_add, FreeAbelianGroup.map_add, add_seq, ih1, ih2]
    | neg p ih => rw [FreeAbelianGroup.map_neg, neg_seq, seq_neg, ih]
    | add x₁ x₂ ih1 ih2 => rw [FreeAbelianGroup.map_add, add_seq, seq_add, ih1, ih2]

end Monad

universe w

variable {β : Type v} {γ : Type w}

/-- The additive group homomorphism `FreeAbelianGroup α →+ FreeAbelianGroup β` induced from a
  map `α → β`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FreeAbelianGroup/Variant6699381e6dbdc4bb60ec2c74d123a896394192f22821bac49095cbed64ce95a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variant6699381e6dbdc4bb60ec2c74d123a896394192f22821bac49095cbed64ce95a3.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `314b05e3565c6047316ccf1324242bbb9ca8d542` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
