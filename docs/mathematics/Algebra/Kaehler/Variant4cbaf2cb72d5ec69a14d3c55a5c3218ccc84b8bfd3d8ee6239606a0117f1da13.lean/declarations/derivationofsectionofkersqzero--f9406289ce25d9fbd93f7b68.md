# derivationOfSectionOfKerSqZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f16490d03fd4c0c7248a113847b82109dd9db88671428e4598d160292ff32e81",
  "kind": "def",
  "lexical_name": "derivationOfSectionOfKerSqZero",
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
  "slug": "derivationofsectionofkersqzero--f9406289ce25d9fbd93f7b68",
  "source": {
    "blob": "35afb79ea726356586d546a4de1b8fd31ec5b6fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 79,
    "path": "GRWTSK/Algebra/Kaehler/Variant4cbaf2cb72d5ec69a14d3c55a5c3218ccc84b8bfd3d8ee6239606a0117f1da13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9406289ce25d9fbd93f7b68a4be75d0a008ebf14158adb0e547c4871c808a8f",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variant4cbaf2cb72d5ec69a14d3c55a5c3218ccc84b8bfd3d8ee6239606a0117f1da13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f16490d03fd4c0c7248a113847b82109dd9db88671428e4598d160292ff32e81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def derivationOfSectionOfKerSqZero (f : P →ₐ[R] S) (hf' : (RingHom.ker f) ^ 2 = ⊥) (g : S →ₐ[R] P)
    (hg : f.comp g = AlgHom.id R S) : Derivation R P (RingHom.ker f) where
  toFun x := ⟨x - g (f x), by
    simpa [RingHom.mem_ker, sub_eq_zero] using AlgHom.congr_fun hg.symm (f x)⟩
  map_add' x y := by simp only [map_add, AddMemClass.mk_add_mk, Subtype.mk.injEq]; ring
  map_smul' x y := by
    ext
    simp only [Algebra.smul_def, map_mul, ← IsScalarTower.algebraMap_apply, AlgHom.commutes,
      RingHom.id_apply, Submodule.coe_smul_of_tower]
    ring
  map_one_eq_zero' := by simp only [LinearMap.coe_mk, AddHom.coe_mk, map_one, sub_self,
    Submodule.mk_eq_zero]
  leibniz' a b := by
    have : (a - g (f a)) * (b - g (f b)) = 0 := by
      rw [← Ideal.mem_bot, ← hf', pow_two]
      apply Ideal.mul_mem_mul
      · simpa [RingHom.mem_ker, sub_eq_zero] using AlgHom.congr_fun hg.symm (f a)
      · simpa [RingHom.mem_ker, sub_eq_zero] using AlgHom.congr_fun hg.symm (f b)
    ext
    rw [← sub_eq_zero]
    conv_rhs => rw [← neg_zero, ← this]
    simp only [LinearMap.coe_mk, AddHom.coe_mk, map_mul, SetLike.mk_smul_mk, smul_eq_mul, mul_sub,
      AddMemClass.mk_add_mk, sub_mul, neg_sub]
    ring

variable (hf' : (RingHom.ker (algebraMap P S)) ^ 2 = ⊥)
  (hg : (IsScalarTower.toAlgHom R P S).comp g = AlgHom.id R S)
include hf' hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variant4cbaf2cb72d5ec69a14d3c55a5c3218ccc84b8bfd3d8ee6239606a0117f1da13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variant4cbaf2cb72d5ec69a14d3c55a5c3218ccc84b8bfd3d8ee6239606a0117f1da13.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35afb79ea726356586d546a4de1b8fd31ec5b6fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
