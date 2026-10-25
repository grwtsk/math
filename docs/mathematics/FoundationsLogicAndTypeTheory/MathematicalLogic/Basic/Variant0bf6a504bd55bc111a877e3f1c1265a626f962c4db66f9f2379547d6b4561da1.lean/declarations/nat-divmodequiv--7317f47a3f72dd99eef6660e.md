# Nat.divModEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d82251809a78c6ae3120ae03615669afac25a0101c20f0e5eb4a041b4960034a",
  "kind": "def",
  "lexical_name": "Nat.divModEquiv",
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
  "slug": "nat-divmodequiv--7317f47a3f72dd99eef6660e",
  "source": {
    "blob": "32f8989b9f3e74e41c9cbee959829c12f61df969",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 368,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0bf6a504bd55bc111a877e3f1c1265a626f962c4db66f9f2379547d6b4561da1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7317f47a3f72dd99eef6660efab6e7de99cd239b48c861c32063b7f17eb78c63",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0bf6a504bd55bc111a877e3f1c1265a626f962c4db66f9f2379547d6b4561da1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d82251809a78c6ae3120ae03615669afac25a0101c20f0e5eb4a041b4960034a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Nat.divModEquiv (n : ℕ) [NeZero n] : ℕ ≃ ℕ × Fin n where
  toFun a := (a / n, Fin.ofNat n a)
  invFun p := p.1 * n + ↑p.2
  -- TODO: is there a canonical order of `*` and `+` here?
  left_inv _ := Nat.div_add_mod' _ _
  right_inv p := by
    refine Prod.ext ?_ (Fin.ext <| Nat.mul_add_mod_of_lt p.2.is_lt)
    dsimp only
    rw [Nat.add_comm, Nat.add_mul_div_right _ _ n.pos_of_neZero, Nat.div_eq_of_lt p.2.is_lt,
      Nat.zero_add]

/-- The equivalence induced by `a ↦ (a / n, a % n)` for nonzero `n`.
See `Int.ediv_emod_unique` for a similar propositional statement. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0bf6a504bd55bc111a877e3f1c1265a626f962c4db66f9f2379547d6b4561da1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant0bf6a504bd55bc111a877e3f1c1265a626f962c4db66f9f2379547d6b4561da1.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32f8989b9f3e74e41c9cbee959829c12f61df969` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
