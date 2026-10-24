# unitEquivUnitsInteger

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1403a6389740bd439c89ab2aaef10397cd25be8a7d02dac298d9b9c037fa8e38",
  "kind": "def",
  "lexical_name": "unitEquivUnitsInteger",
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
  "slug": "unitequivunitsinteger--d130cf12013594a65179f43e",
  "source": {
    "blob": "46495bc7396a6e00b25c55c4d8ec826d25fde366",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 122,
    "path": "GRWTSK/Algebra/SInteger/Variant31f9d273b29249885c5fc065eb65d430745f43e2c6c1acfaa3f6cf1b9a13035c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d130cf12013594a65179f43e317b0a1dfacfd771c64c70104373e84ea40f7c8b",
  "verification": {
    "reference": "docs/verification/Algebra/SInteger/Variant31f9d273b29249885c5fc065eb65d430745f43e2c6c1acfaa3f6cf1b9a13035c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1403a6389740bd439c89ab2aaef10397cd25be8a7d02dac298d9b9c037fa8e38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitEquivUnitsInteger : S.unit K ≃* (S.integer K)ˣ where
  toFun x :=
    ⟨⟨((x : Kˣ) : K), fun v hv => (x.property v hv).le⟩,
      ⟨((x⁻¹ : Kˣ) : K), fun v hv => (x⁻¹.property v hv).le⟩,
      Subtype.ext x.val.val_inv, Subtype.ext x.val.inv_val⟩
  invFun x :=
    ⟨Units.mk0 x fun hx => x.ne_zero (ZeroMemClass.coe_eq_zero.mp hx),
    fun v hv =>
      eq_one_of_one_le_mul_left (x.val.property v hv) (x.inv.property v hv) <|
        Eq.ge <| by
          -- Porting note: was
          -- rw [← map_mul]; convert v.valuation.map_one; exact subtype.mk_eq_mk.mp x.val_inv⟩
          rw [Units.val_mk0, ← map_mul, Subtype.mk_eq_mk.mp x.val_inv, map_one]⟩
  left_inv _ := by ext; rfl
  right_inv _ := by ext; rfl
  map_mul' _ _ := by ext; rfl

end Set
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SInteger/Variant31f9d273b29249885c5fc065eb65d430745f43e2c6c1acfaa3f6cf1b9a13035c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SInteger/Variant31f9d273b29249885c5fc065eb65d430745f43e2c6c1acfaa3f6cf1b9a13035c.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46495bc7396a6e00b25c55c4d8ec826d25fde366` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
