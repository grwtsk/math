# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c1dd77eaa071d63120f114775de0e415aef7f998dc1749a9619b057f70cc66e",
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
  "slug": "instance--3b30a21e2a8f1a8fe0bcf895",
  "source": {
    "blob": "b71b05c7b5e0b840a47df0886e50e1dcd70fa2cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 360,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant1647144bd76b4fb9115fbd86e3337282dd426ee934d227b668b4bcda479ebe02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b30a21e2a8f1a8fe0bcf8956f0d62b02142a0a2034356cbaa0bc5e2f68cde0b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant1647144bd76b4fb9115fbd86e3337282dd426ee934d227b668b4bcda479ebe02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c1dd77eaa071d63120f114775de0e415aef7f998dc1749a9619b057f70cc66e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CompleteLattice (Con M) where
  __ := completeLatticeOfInf (Con M) fun s =>
      ⟨fun r hr x y h => (h : ∀ r ∈ s, (r : Con M) x y) r hr, fun r hr x y h r' hr' =>
        hr hr'
          h⟩
  inf c d := ⟨c.toSetoid ⊓ d.toSetoid, fun h1 h2 => ⟨c.mul h1.1 h2.1, d.mul h1.2 h2.2⟩⟩
  inf_le_left _ _ := fun _ _ h => h.1
  inf_le_right _ _ := fun _ _ h => h.2
  le_inf _ _ _ hb hc := fun _ _ h => ⟨hb h, hc h⟩
  top := { Setoid.completeLattice.top with mul' := by tauto }
  le_top _ := fun _ _ _ => trivial
  bot := { Setoid.completeLattice.bot with mul' := fun h1 h2 => h1 ▸ h2 ▸ rfl }
  bot_le c := fun x _ h => h ▸ c.refl x

/-- The infimum of two congruence relations equals the infimum of the underlying binary
operations. -/
@[to_additive (attr := simp, norm_cast)
  /-- The infimum of two additive congruence relations equals the infimum of the underlying binary
  operations. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant1647144bd76b4fb9115fbd86e3337282dd426ee934d227b668b4bcda479ebe02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant1647144bd76b4fb9115fbd86e3337282dd426ee934d227b668b4bcda479ebe02.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b71b05c7b5e0b840a47df0886e50e1dcd70fa2cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
