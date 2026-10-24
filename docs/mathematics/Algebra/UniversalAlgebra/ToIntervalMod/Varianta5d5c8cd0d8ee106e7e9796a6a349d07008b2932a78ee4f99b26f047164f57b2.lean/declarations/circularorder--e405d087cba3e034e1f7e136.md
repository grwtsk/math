# circularOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f2632b2322b9be1391a766f541924fc1c3ebe4317e7e2ffcbc41eba9abd8970",
  "kind": "instance",
  "lexical_name": "circularOrder",
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
  "slug": "circularorder--e405d087cba3e034e1f7e136",
  "source": {
    "blob": "96c6bd96073bd2c13fa717ab32a9f9383640d5aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 971,
    "line": 935,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ToIntervalMod/Varianta5d5c8cd0d8ee106e7e9796a6a349d07008b2932a78ee4f99b26f047164f57b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e405d087cba3e034e1f7e1364a69af8c3dcd6c8b839115844277748450687065",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ToIntervalMod/Varianta5d5c8cd0d8ee106e7e9796a6a349d07008b2932a78ee4f99b26f047164f57b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f2632b2322b9be1391a766f541924fc1c3ebe4317e7e2ffcbc41eba9abd8970`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 935–971.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance circularOrder : CircularOrder (α ⧸ AddSubgroup.zmultiples p) :=
  { QuotientAddGroup.circularPreorder with
    btw_antisymm := fun {x₁ x₂ x₃} h₁₂₃ h₃₂₁ => by
      induction x₁ using QuotientAddGroup.induction_on
      induction x₂ using QuotientAddGroup.induction_on
      induction x₃ using QuotientAddGroup.induction_on
      rw [btw_cyclic] at h₃₂₁
      simp_rw [btw_coe_iff] at h₁₂₃ h₃₂₁
      simp_rw [← modEq_iff_eq_mod_zmultiples]
      simpa only [modEq_comm] using toIxxMod_antisymm _ h₁₂₃ h₃₂₁
    btw_total := fun x₁ x₂ x₃ => by
      induction x₁ using QuotientAddGroup.induction_on
      induction x₂ using QuotientAddGroup.induction_on
      induction x₃ using QuotientAddGroup.induction_on
      simp_rw [btw_coe_iff]
      apply toIxxMod_total }

end QuotientAddGroup

end Circular

end LinearOrderedAddCommGroup

/-!
### `simp` confluence lemmas for rings

In rings, we simplify `(m : ℤ) • x` to `↑m * x`, so we need to restate some lemmas
using `↑m * x` instead of `m • x`. In some lemmas, `m` is a variable,
in other lemmas `m = toIcoDiv _ _ _` or `m = toIocDiv _ _ _`.
-/

section Ring

variable {R : Type*} [NonAssocRing R] [LinearOrder R] [IsOrderedAddMonoid R] [Archimedean R] {p : R}
  (hp : 0 < p)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ToIntervalMod/Varianta5d5c8cd0d8ee106e7e9796a6a349d07008b2932a78ee4f99b26f047164f57b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ToIntervalMod/Varianta5d5c8cd0d8ee106e7e9796a6a349d07008b2932a78ee4f99b26f047164f57b2.lean#L935).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96c6bd96073bd2c13fa717ab32a9f9383640d5aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
