# resCoindHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd77e60211a82d1282c9f94e6d8ed123ba2041b4514cd35f2721e105f205014b",
  "kind": "def",
  "lexical_name": "resCoindHomEquiv",
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
  "slug": "rescoindhomequiv--f41279c0b458dd71b07eef7c",
  "source": {
    "blob": "6ecfd42b7283c0c05e42ead1a6b873dfbffd4f2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 282,
    "path": "GRWTSK/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f41279c0b458dd71b07eef7c74f187ee0b24c1ea1e1570baa97d30c1a6763367",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd77e60211a82d1282c9f94e6d8ed123ba2041b4514cd35f2721e105f205014b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resCoindHomEquiv (B : Rep.{max w t} k H) (A : Rep.{max w t} k G) :
    (res φ B ⟶ A) ≃ₗ[k] (B ⟶ coind φ A) where
  toFun f := resCoindToHom φ B A f
  map_add' _ _ := rfl
  map_smul' _ _ := rfl
  invFun f := Rep.ofHom ⟨LinearMap.proj 1 ∘ₗ (A.ρ.coindV φ).subtype ∘ₗ f.hom.toLinearMap,
    fun g => by
      ext x
      have := ((f.hom x).2 g 1).symm
      have := hom_comm_apply f (φ g) x
      simp_all⟩
  left_inv x := by ext; simp
  right_inv z := by ext; simp [resCoindToHom, hom_comm_apply z]

#adaptation_note /-- After https://github.com/leanprover/lean4/pull/12179
the simpNF linter complains about `@[simps! counit_app_hom_hom unit_app_hom_hom]`,
but removing it seems to be harmless. -/
variable (k) in
/-- Given a monoid homomorphism `φ : G →* H`, the coinduction functor `Rep k G ⥤ Rep k H` is right
adjoint to the restriction functor along `φ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Coinduced/Variantbe752066e8ad735d9fcd5d112632739e321082c28fcd5ad51831ecc388beacd5.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ecfd42b7283c0c05e42ead1a6b873dfbffd4f2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
