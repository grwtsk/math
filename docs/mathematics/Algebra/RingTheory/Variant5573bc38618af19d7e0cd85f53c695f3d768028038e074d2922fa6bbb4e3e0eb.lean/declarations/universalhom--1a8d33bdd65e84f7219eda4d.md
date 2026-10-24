# universalHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1aa8cee8854e1d2593e0e7a866f2172b884dc22c17054c45516877144c361562",
  "kind": "def",
  "lexical_name": "universalHom",
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
  "slug": "universalhom--1a8d33bdd65e84f7219eda4d",
  "source": {
    "blob": "984c72969891f4231b6ea7f64064d5b47c2d1b08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 138,
    "path": "GRWTSK/Algebra/Ring/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a8d33bdd65e84f7219eda4d9ab78a9574a41b3f5d78bb5639fb84f54aa8807d",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1aa8cee8854e1d2593e0e7a866f2172b884dc22c17054c45516877144c361562`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def universalHom : R[S⁻¹] →+* T :=
  { universalMulHom f.toMonoidHom fS hf with
    map_zero' := by
      simp only [RingHom.toMonoidHom_eq_coe, OneHom.toFun_eq_coe, MonoidHom.toOneHom_coe]
      rw [OreLocalization.zero_def, universalMulHom_apply]
      simp
    map_add' := fun x y => by
      simp only [RingHom.toMonoidHom_eq_coe, OneHom.toFun_eq_coe, MonoidHom.toOneHom_coe]
      induction' x with r₁ s₁
      induction' y with r₂ s₂
      rcases oreDivAddChar' r₁ r₂ s₁ s₂ with ⟨r₃, s₃, h₃, h₃'⟩
      rw [h₃']
      clear h₃'
      simp only [RingHom.toMonoidHom_eq_coe, smul_eq_mul, universalMulHom_apply, MonoidHom.coe_coe,
        Submonoid.smul_def]
      simp only [mul_inv_rev, MonoidHom.map_mul, RingHom.map_add, RingHom.map_mul, Units.val_mul]
      rw [mul_add, mul_assoc, ← mul_assoc _ (f s₃), hf, ← Units.val_mul]
      simp only [one_mul, inv_mul_cancel, Units.val_one]
      congr 1
      rw [← mul_assoc]
      congr 1
      norm_cast at h₃
      have h₃' := Subtype.coe_eq_of_eq_mk h₃
      rw [← Units.val_mul, ← mul_inv_rev, ← fS.map_mul, h₃']
      rw [Units.inv_mul_eq_iff_eq_mul, Units.eq_mul_inv_iff_mul_eq, ← hf, ← hf]
      simp only [map_mul] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variant5573bc38618af19d7e0cd85f53c695f3d768028038e074d2922fa6bbb4e3e0eb.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `984c72969891f4231b6ea7f64064d5b47c2d1b08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
