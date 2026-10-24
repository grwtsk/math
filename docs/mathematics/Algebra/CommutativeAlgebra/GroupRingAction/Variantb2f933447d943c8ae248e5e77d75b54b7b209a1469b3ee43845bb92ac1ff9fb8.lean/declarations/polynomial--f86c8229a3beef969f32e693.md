# polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a6787608854efd954ab82e4bc159d727249396d53b6d5cb628c4bc9112f148d",
  "kind": "def",
  "lexical_name": "polynomial",
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
  "slug": "polynomial--f86c8229a3beef969f32e693",
  "source": {
    "blob": "1b71f76600c314ee347c00bb198d2e7d051762b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 136,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f86c8229a3beef969f32e6932ed1a51fe216389af4ecc9541100df7b5e7c9a32",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a6787608854efd954ab82e4bc159d727249396d53b6d5cb628c4bc9112f148d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected noncomputable def polynomial (g : P →+*[M] Q) : P[X] →+*[M] Q[X] where
  toFun := map g
  map_smul' m p :=
    Polynomial.induction_on p
      (fun b ↦ by rw [smul_C, map_C, coe_fn_coe, g.map_smul, map_C, coe_fn_coe, smul_C])
      (fun p q ihp ihq ↦ by
        rw [smul_add, Polynomial.map_add, ihp, ihq, Polynomial.map_add, smul_add])
      fun n b _ ↦ by
      rw [smul_mul', smul_C, smul_pow', smul_X, Polynomial.map_mul, map_C, Polynomial.map_pow,
        map_X, coe_fn_coe, g.map_smul, Polynomial.map_mul, map_C, Polynomial.map_pow, map_X,
        smul_mul', smul_C, smul_pow', smul_X, coe_fn_coe]
  -- porting note: added `.toRingHom`
  map_zero' := Polynomial.map_zero g.toRingHom
  map_add' p q := Polynomial.map_add g.toRingHom
  map_one' := Polynomial.map_one g.toRingHom
  map_mul' p q := Polynomial.map_mul g.toRingHom
#align mul_semiring_action_hom.polynomial MulSemiringActionHom.polynomial

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/GroupRingAction/Variantb2f933447d943c8ae248e5e77d75b54b7b209a1469b3ee43845bb92ac1ff9fb8.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b71f76600c314ee347c00bb198d2e7d051762b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
