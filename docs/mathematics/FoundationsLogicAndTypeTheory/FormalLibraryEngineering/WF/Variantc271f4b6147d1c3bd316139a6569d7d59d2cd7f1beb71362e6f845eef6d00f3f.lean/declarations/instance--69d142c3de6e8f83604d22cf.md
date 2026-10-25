# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1bdbf5baf411299ec3cf4a4150b84ad174b9c5d36e4ef874f2cda03eaf1cfe9",
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
  "slug": "instance--69d142c3de6e8f83604d22cf",
  "source": {
    "blob": "4520aa9ebb20e1785ae4abf6adab1b7d37642d69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 583,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantc271f4b6147d1c3bd316139a6569d7d59d2cd7f1beb71362e6f845eef6d00f3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69d142c3de6e8f83604d22cf202adfd47a26783cdc1f5aa68255da9ce25a1142",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantc271f4b6147d1c3bd316139a6569d7d59d2cd7f1beb71362e6f845eef6d00f3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1bdbf5baf411299ec3cf4a4150b84ad174b9c5d36e4ef874f2cda03eaf1cfe9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 583–595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (cmp : α → α → Ordering) (f : α → β → γ) :
    IsMonotone (byKey Prod.fst cmp) (byKey Prod.fst cmp) (mapSnd f) where
  lt_mono | ⟨h⟩ => ⟨@fun _ => @h {
    eq_swap := @fun (a₁, b₁) (a₂, b₂) =>
      Std.OrientedCmp.eq_swap (cmp := byKey Prod.fst cmp) (a := (a₁, f a₁ b₁)) (b := (a₂, f a₂ b₂))
    isLE_trans := @fun (a₁, b₁) (a₂, b₂) (a₃, b₃) =>
      Std.TransCmp.isLE_trans (cmp := byKey Prod.fst cmp)
        (a := (a₁, f a₁ b₁)) (b := (a₂, f a₂ b₂)) (c := (a₃, f a₃ b₃))
  }⟩

end Imp

/-- `O(n)`. Map a function on the values in the map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantc271f4b6147d1c3bd316139a6569d7d59d2cd7f1beb71362e6f845eef6d00f3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variantc271f4b6147d1c3bd316139a6569d7d59d2cd7f1beb71362e6f845eef6d00f3f.lean#L583).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4520aa9ebb20e1785ae4abf6adab1b7d37642d69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
