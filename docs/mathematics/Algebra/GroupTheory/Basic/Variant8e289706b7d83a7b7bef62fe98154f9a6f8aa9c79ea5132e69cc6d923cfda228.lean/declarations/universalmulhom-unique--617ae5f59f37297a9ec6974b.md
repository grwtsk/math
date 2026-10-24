# universalMulHom_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1e917e5-4413-4386-4d33-1737b90d0a0b",
  "kind": "theorem",
  "lexical_name": "universalMulHom_unique",
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
  "slug": "universalmulhom-unique--617ae5f59f37297a9ec6974b",
  "source": {
    "blob": "81c51bcbbb76dc17fa699e96b90de188f6c8abf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 531,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8e289706b7d83a7b7bef62fe98154f9a6f8aa9c79ea5132e69cc6d923cfda228.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:617ae5f59f37297a9ec6974bb38282821fa08a6800c89f86aea272699bf90779",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant8e289706b7d83a7b7bef62fe98154f9a6f8aa9c79ea5132e69cc6d923cfda228.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1e917e5-4413-4386-4d33-1737b90d0a0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 531–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem universalMulHom_unique (φ : R[S⁻¹] →* T) (huniv : ∀ r : R, φ (numeratorHom r) = f r) :
    φ = universalMulHom f fS hf := by
  ext x; cases x with | _ r s
  rw [universalMulHom_apply, ← huniv r, numeratorHom_apply, ← one_mul (φ (r /ₒ s)), ←
    Units.val_one, ← inv_mul_cancel (fS s), Units.val_mul, mul_assoc, ← hf, ← huniv, ← φ.map_mul,
    numeratorHom_apply, OreLocalization.mul_cancel]

end UMP

end Monoid

section SMul

variable {R R' M X : Type*} [Monoid M] {S : Submonoid M} [OreSet S] [MulAction M X]
variable [SMul R X] [SMul R M] [IsScalarTower R M M] [IsScalarTower R M X]
variable [SMul R' X] [SMul R' M] [IsScalarTower R' M M] [IsScalarTower R' M X]
variable [SMul R R'] [IsScalarTower R R' M]

/-- Scalar multiplication in a monoid localization. -/
@[to_additive (attr := irreducible) /-- Vector addition in an additive monoid localization. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant8e289706b7d83a7b7bef62fe98154f9a6f8aa9c79ea5132e69cc6d923cfda228.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant8e289706b7d83a7b7bef62fe98154f9a6f8aa9c79ea5132e69cc6d923cfda228.lean#L531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81c51bcbbb76dc17fa699e96b90de188f6c8abf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
