# universalMulHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c0b8031a9859b6659d2eeb5525062226086615da2d959dc8dddae9e2abcaaad",
  "kind": "def",
  "lexical_name": "universalMulHom",
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
  "slug": "universalmulhom--5ff726520b2f548f554c1a8b",
  "source": {
    "blob": "4a65f4afd5c3a2134a965eba1eec21a3eb7ea65b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 490,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant21bb8715bbcc7199c0970043109b24d192352a6857c1aa44be1525df89e8669b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ff726520b2f548f554c1a8b3d9606d3a0ae397c037fc64218aeac402feb695b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant21bb8715bbcc7199c0970043109b24d192352a6857c1aa44be1525df89e8669b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c0b8031a9859b6659d2eeb5525062226086615da2d959dc8dddae9e2abcaaad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def universalMulHom (hf : ∀ s : S, f s = fS s) : R[S⁻¹] →* T where
  toFun x :=
    x.liftExpand (fun r s => ((fS s)⁻¹ : Units T) * f r) fun r t s ht => by
      simp only [smul_eq_mul]
      have : (fS ⟨t * s, ht⟩ : T) = f t * fS s := by
        simp only [← hf, map_mul]
      conv_rhs =>
        rw [map_mul, ← one_mul (f r), ← Units.val_one, ← mul_inv_cancel (fS s)]
        rw [Units.val_mul, mul_assoc, ← mul_assoc _ (fS s : T), ← this, ← mul_assoc]
      simp only [one_mul, Units.inv_mul]
  map_one' := by rw [OreLocalization.one_def, liftExpand_of]; simp
  map_mul' x y := by
    cases x with | _ r₁ s₁
    cases y with | _ r₂ s₂
    rcases oreDivMulChar' r₁ r₂ s₁ s₂ with ⟨ra, sa, ha, ha'⟩; rw [ha']; clear ha'
    rw [liftExpand_of, liftExpand_of, liftExpand_of, Units.inv_mul_eq_iff_eq_mul, map_mul, map_mul,
      Units.val_mul, mul_assoc, ← mul_assoc (fS s₁ : T), ← mul_assoc (fS s₁ : T), Units.mul_inv,
      one_mul, ← hf, ← mul_assoc, ← map_mul _ _ r₁, ha, map_mul, hf s₂, mul_assoc,
      ← mul_assoc (fS s₂ : T), (fS s₂).mul_inv, one_mul]

variable (hf : ∀ s : S, f s = fS s)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant21bb8715bbcc7199c0970043109b24d192352a6857c1aa44be1525df89e8669b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant21bb8715bbcc7199c0970043109b24d192352a6857c1aa44be1525df89e8669b.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a65f4afd5c3a2134a965eba1eec21a3eb7ea65b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
