# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:235118bacf56d4a28067481bb5bcf263d07aec03215e7d468c35f4ca0e6daadb",
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
  "slug": "instance--b88f417003d59bcd1a74e38f",
  "source": {
    "blob": "52d5951458dd0cea30737af4e56535abf3ae7f60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 159,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant5e6f7e8604bac61f020616a9345079cb694836ffb5d41601805cbe2c697a984a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b88f417003d59bcd1a74e38fa898980a729fc9ac24216194619e51a534674a7e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant5e6f7e8604bac61f020616a9345079cb694836ffb5d41601805cbe2c697a984a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:235118bacf56d4a28067481bb5bcf263d07aec03215e7d468c35f4ca0e6daadb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) OrderIsoClass.toBiheytingHomClass [BiheytingAlgebra α]
    { _ : BiheytingAlgebra β} [OrderIsoClass F α β] : BiheytingHomClass F α β :=
  { OrderIsoClass.toLatticeHomClass with
    map_himp := fun f a b =>
      eq_of_forall_le_iff fun c => by
        simp only [← map_inv_le_iff, le_himp_iff]
        rw [← OrderIsoClass.map_le_map_iff f]
        simp
    map_sdiff := fun f a b =>
      eq_of_forall_ge_iff fun c => by
        simp only [← le_map_inv_iff, sdiff_le_iff]
        rw [← OrderIsoClass.map_le_map_iff f]
        simp }
#align order_iso_class.to_biheyting_hom_class OrderIsoClass.toBiheytingHomClass

-- Porting note: Revisit this issue to see if it works in Lean 4. -/
-- See note [reducible non instances]
/-- This can't be an instance because of typeclass loops. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant5e6f7e8604bac61f020616a9345079cb694836ffb5d41601805cbe2c697a984a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant5e6f7e8604bac61f020616a9345079cb694836ffb5d41601805cbe2c697a984a.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52d5951458dd0cea30737af4e56535abf3ae7f60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
