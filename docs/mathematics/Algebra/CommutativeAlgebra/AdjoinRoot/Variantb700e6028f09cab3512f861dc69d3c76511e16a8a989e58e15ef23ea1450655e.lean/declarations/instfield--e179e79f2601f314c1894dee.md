# instField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d49cb5dc7b2c5c475b09a97874d849e53582cffe1b09dbf3059b4eb9a06d8132",
  "kind": "instance",
  "lexical_name": "instField",
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
  "slug": "instfield--e179e79f2601f314c1894dee",
  "source": {
    "blob": "a6806900c2cb830aedd789f923b0b87923dec737",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 636,
    "line": 620,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variantb700e6028f09cab3512f861dc69d3c76511e16a8a989e58e15ef23ea1450655e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e179e79f2601f314c1894deef264a6632a87d2a0d44661f00c9d5cd079e05c44",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variantb700e6028f09cab3512f861dc69d3c76511e16a8a989e58e15ef23ea1450655e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d49cb5dc7b2c5c475b09a97874d849e53582cffe1b09dbf3059b4eb9a06d8132`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–636.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance instField [Fact (Irreducible f)] : Field (AdjoinRoot f) where
  __ := instCommRing _
  __ := instGroupWithZero
  nnqsmul := (· • ·)
  qsmul := (· • ·)
  nnratCast_def q := by
    rw [← map_natCast (of f), ← map_natCast (of f), ← map_div₀, ← NNRat.cast_def]; rfl
  ratCast_def q := by
    rw [← map_natCast (of f), ← map_intCast (of f), ← map_div₀, ← Rat.cast_def]; rfl
  nnqsmul_def q x :=
    AdjoinRoot.induction_on f (C := fun y ↦ q • y = (of f) q * y) x fun p ↦ by
      simp only [smul_mk, of, RingHom.comp_apply, ← (mk f).map_mul, Polynomial.nnqsmul_eq_C_mul]
  qsmul_def q x :=
    -- Porting note: I gave the explicit motive and changed `rw` to `simp`.
    AdjoinRoot.induction_on f (C := fun y ↦ q • y = (of f) q * y) x fun p ↦ by
      simp only [smul_mk, of, RingHom.comp_apply, ← (mk f).map_mul, Polynomial.qsmul_eq_C_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AdjoinRoot/Variantb700e6028f09cab3512f861dc69d3c76511e16a8a989e58e15ef23ea1450655e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AdjoinRoot/Variantb700e6028f09cab3512f861dc69d3c76511e16a8a989e58e15ef23ea1450655e.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6806900c2cb830aedd789f923b0b87923dec737` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
